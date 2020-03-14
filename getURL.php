<?php
include("function.php");
require_once("add/phpQuery-onefile.php");

// DB最終登録日時を取得
$pdo = jointDB();
$stmt = $pdo->prepare("SELECT date FROM url_table");
$status = $stmt->execute();
$DBdate = "";
if ($status == false) {
    $error = $stmt->errorInfo();
    exit("ErrorQuery:" . $error[2]);
} else {
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    if (empty($result)) {
        $DBdate = "0000-00-00";
    } else {
        $DBdate = $result["date"];
    }
}
// 現在の日時取得
date_default_timezone_set('Asia/Tokyo');
$year = date("Y");
$month = date("m");
$day = date("d");
$nowDate = $year . "-" . $month . "-" . $day;
// DB情報が同じ日時の場合更新せず進む
if ($status == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    var_dump($status);
    $error = $stmt->errorInfo();
    exit("QueryError:" . $error[2]);
} else {
    if ($DBdate == $nowDate) {

        header("Location: now.php");
        exit;
    }
}

// DB登録前に全テーブル削除。重複を避ける
$stmt = $pdo->prepare("SELECT date FROM url_table");
$status = $stmt->execute();


// データ取得SQL作成-------------------------------------------------
$stmtDetail = $pdo->prepare("SELECT detail FROM now_table");
$statusDetail = $stmtDetail->execute();

// DBからデータ取得--------------------------------------------------------
$detailURL = array();
if ($statusDetail == false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmtDetail->errorInfo();
    exit("ErrorQuery:" . $error[2]);
} else {
    //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを取得
    while ($resultDetail = $stmtDetail->fetch(PDO::FETCH_ASSOC)) {
        // 作品のIDが変数に入っている
        $detailURL[] = "https://filmarks.com/movies/{$resultDetail['detail']}";
    }
}

// filmarksより各作品の詳細ページのHTMLを取得------------------------------------------------
$detail = array();
for ($i = 0; $i < count($detailURL); $i++) {
    $detail[] = file_get_contents($detailURL[$i]);
}


// 各タイトル詳細ページHTMLからスケジュールページのURL取得------------------------------------------------
$scheduleURL = array();
for ($j = 0; $j < count($detail); $j++) {
    $scheduleURL[] = "https://filmarks.com" . phpQuery::newDocument($detail[$j])->find(".p-content-detail-theater-count")->attr("href");
}


// データベースにURL登録-------------------------------------
$stmt = $pdo->prepare("INSERT INTO url_table(id, url, date)
VALUES(NULL, :url, sysdate())");

for ($k = 0; $k < count($scheduleURL); $k++) {
    $stmt->bindValue(':url', $scheduleURL[$k], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $status = $stmt->execute();
}
// データ登録処理後
if ($status == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit("QueryError:" . $error[2]);
} else {
    header("Location: now.php");
    exit;
}
