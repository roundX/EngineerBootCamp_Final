<?php
include("function.php");
require_once("add/phpQuery-onefile.php");

// DB接続
$pdo = jointDB();

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
$stmt = $pdo->prepare("INSERT INTO url_table(id, url)
VALUES(NULL, :url)");

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
