<?php

include("function.php");
require_once("add/phpQuery-onefile.php");

// filmarksよりデータ取得------------------------------------------------
$htmlNow = file_get_contents("https://filmarks.com/list/now");
$htmlComing = file_get_contents("https://filmarks.com/list/coming");
$htmlReview = file_get_contents("https://filmarks.com/users/Round");
$htmlRental = file_get_contents("https://filmarks.com/list/rental_now");
$htmlTrend = file_get_contents("https://filmarks.com/list/trend");
// --------------------------------------------------------------------


// 要素数取得、配列に入れる------------------------------------------------
$title_numNow = count(phpQuery::newDocument($htmlNow)->find(".p-movie-cassette__title-wrapper")->find("h3"));
// 1つずつ配列に格納
for ($i = 0; $i < $title_numNow; $i++) {
    $titleNow[] = phpQuery::newDocument($htmlNow)->find(".p-movie-cassette__title-wrapper")->find("h3:eq($i)")->text();
    $synopsisNow[] = phpQuery::newDocument($htmlNow)->find(".p-movie-cassette__synopsis-desc__text:eq($i)")->text();
    $jacketNow[] = phpQuery::newDocument($htmlNow)->find(".p-movie-cassette__jacket")->find("img:eq($i)")->attr("src");
    $detailStringNow[] = phpQuery::newDocument($htmlNow)->find(".p-movie-cassette:eq($i)")->attr('data-clip');
    $detailNow[] = substr($detailStringNow[$i], 29, 5);
}

$title_numComing = count(phpQuery::newDocument($htmlComing)->find(".p-movie-cassette__title-wrapper")->find("h3"));
// 1つずつ配列に格納
for ($i = 0; $i < $title_numComing; $i++) {
    $titleComing[] = phpQuery::newDocument($htmlComing)->find(".p-movie-cassette__title-wrapper")->find("h3:eq($i)")->text();
    $synopsisComing[] = phpQuery::newDocument($htmlComing)->find(".p-movie-cassette__synopsis-desc__text:eq($i)")->text();
    $jacketComing[] = phpQuery::newDocument($htmlComing)->find(".p-movie-cassette__jacket")->find("img:eq($i)")->attr("src");
}

$title_numReview = count(phpQuery::newDocument($htmlReview)->find("h3"));
for ($i = 0; $i < $title_numReview; $i++) {
    $titleReview[] = phpQuery::newDocument($htmlReview)->find("h3:eq($i)")->text();
    $reviewReview[] = phpQuery::newDocument($htmlReview)->find(".c-movie-card__review:eq($i)")->text();
    $jacketReview[] = phpQuery::newDocument($htmlReview)->find(".c-movie__jacket")->find("img:eq($i)")->attr("src");
}

$title_numRental = count(phpQuery::newDocument($htmlRental)->find(".p-movie-cassette__title-wrapper")->find("h3"));
for ($i = 0; $i < $title_numRental; $i++) {
    $titleRental[] = phpQuery::newDocument($htmlRental)->find(".p-movie-cassette__title-wrapper")->find("h3:eq($i)")->text();
    $synopsisRental[] = phpQuery::newDocument($htmlRental)->find(".p-movie-cassette__synopsis-desc__text:eq($i)")->text();
    $jacketRental[] = phpQuery::newDocument($htmlRental)->find(".p-movie-cassette__jacket")->find("img:eq($i)")->attr("src");
}

$title_numTrend = count(phpQuery::newDocument($htmlTrend)->find(".p-movie-cassette__title-wrapper")->find("h3"));
for ($i = 0; $i < $title_numTrend; $i++) {
    $titleTrend[] = phpQuery::newDocument($htmlTrend)->find(".p-movie-cassette__title-wrapper")->find("h3:eq($i)")->text();
    $synopsisTrend[] = phpQuery::newDocument($htmlTrend)->find(".p-movie-cassette__synopsis-desc__text:eq($i)")->text();
    $jacketTrend[] = phpQuery::newDocument($htmlTrend)->find(".p-movie-cassette__jacket")->find("img:eq($i)")->attr("src");
}
// --------------------------------------------------------------------


// DB接続
$pdo = jointDB();

// データ登録SQL作成-------------------------------------------------------
// now--------------------------------------
$stmtNow = $pdo->prepare("INSERT INTO now_table(id, jacket, title, synopsis, detail)
VALUES(NULL, :jacket, :title, :synopsis, :detail)");

for ($j = 0; $j < $title_numNow; $j++) {
    $stmtNow->bindValue(':jacket', $jacketNow[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtNow->bindValue(':title', $titleNow[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtNow->bindValue(':synopsis', $synopsisNow[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtNow->bindValue(':detail', $detailNow[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $statusNow = $stmtNow->execute();
}
// データ登録処理後
if ($statusNow == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmtNow->errorInfo();
    exit("QueryError:" . $error[2]);
}

// coming-----------------------------------
$stmtComing = $pdo->prepare("INSERT INTO coming_table(id, jacket, title, synopsis)
VALUES(NULL, :jacket, :title, :synopsis)");

for ($j = 0; $j < $title_numComing; $j++) {
    $stmtComing->bindValue(':jacket', $jacketComing[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtComing->bindValue(':title', $titleComing[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtComing->bindValue(':synopsis', $synopsisComing[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $statusComing = $stmtComing->execute();
}
// データ登録処理後
if ($statusComing == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmtNow->errorInfo();
    exit("QueryError:" . $error[2]);
}

// review-------------------------------------
$stmtReview = $pdo->prepare("INSERT INTO review_table(id, jacket, title, review)
VALUES(NULL, :jacket, :title, :review)");

for ($j = 0; $j < $title_numReview; $j++) {
    $stmtReview->bindValue(':jacket', $jacketReview[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtReview->bindValue(':title', $titleReview[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtReview->bindValue(':review', $reviewReview[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $statusReivew = $stmtReview->execute();
}
// データ登録処理後
if ($statusReivew == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmtReview->errorInfo();
    exit("QueryError:" . $error[2]);
}

// rental-------------------------------------
$stmtRental = $pdo->prepare("INSERT INTO rental_table(id, jacket, title, synopsis)
VALUES(NULL, :jacket, :title, :synopsis)");

for ($j = 0; $j < $title_numRental; $j++) {
    $stmtRental->bindValue(':jacket', $jacketRental[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtRental->bindValue(':title', $titleRental[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtRental->bindValue(':synopsis', $synopsisRental[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $statusRental = $stmtRental->execute();
}
// データ登録処理後
if ($statusRental == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmtRental->errorInfo();
    exit("QueryError:" . $error[2]);
}

// trend-------------------------------------
$stmtTrend = $pdo->prepare("INSERT INTO trend_table(id, jacket, title, synopsis)
VALUES(NULL, :jacket, :title, :synopsis)");

for ($j = 0; $j < $title_numTrend; $j++) {
    $stmtTrend->bindValue(':jacket', $jacketTrend[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtTrend->bindValue(':title', $titleTrend[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $stmtTrend->bindValue(':synopsis', $synopsisTrend[$j], PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
    $statusTrend = $stmtTrend->execute();
}
// データ登録処理後
if ($statusTrend == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmtTrend->errorInfo();
    exit("QueryError:" . $error[2]);
} else {
    header("Location: hp.php");
    exit;
}
