<?php
include("function.php");
require_once("add/phpQuery-onefile.php");

// 現在時刻取得
// 東京の標準時刻に設定
date_default_timezone_set('Asia/Tokyo');
// $hour = date("H");
$hour = "15";
// $minute = date("i");
$minute = "45";
$nowTime = $hour . ":" . $minute;

// DB接続
$pdo = jointDB();

// データ取得SQL作成-------------------------------------------------
$stmtURL = $pdo->prepare("SELECT url FROM url_table");
$statusURL = $stmtURL->execute();

// DBからデータ取得--------------------------------------------------------
$scheduleURL = array();
if ($statusURL == false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmtURL->errorInfo();
    exit("ErrorQuery:" . $error[2]);
} else {
    //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを取得
    while ($resultDetail = $stmtURL->fetch(PDO::FETCH_ASSOC)) {
        $scheduleURL[] = $resultDetail['url'];
    }
}

// filmarksより各作品の詳細ページのHTMLを取得------------------------------------------------
for ($i = 0; $i < count($scheduleURL); $i++) {
    $titleHTML[] = file_get_contents($scheduleURL[$i]);
}
// 各タイトルスケジュールページHTMLからシアター名と時間取得------------------------------------------------
// for ($j = 0; $j < count($titleHTML); $j++) {
// for ($j = 0; $j < 1; $j++) {
// シアター名を取得
// $allTheaterName[] = phpQuery::newDocument($titleHTML[$j])->find(".p-movie-schedule__theater-title")->text();
// $theaterName[$j] = $allTheaterName;

// // シアターの数だけ回す
// for ($k = 0; $k < count($allTheaterName); $k++) {
//     // 1つのシアターの上映時間分回す
//     $theaterTimeNum[] = phpQuery::newDocument($titleHTML[$j])->find(".p-movie-schedule__theater-title:eq($k)")->find(".p-movie-schedule__show-time-item__start");
//     for ($l = 0; $l < count($theaterTimeNum); $l++) {
//         // 1つのシアターの全上映時間取得
//         $allShowTime[] = phpQuery::newDocument($titleHTML[$j])->find(".p-movie-schedule__theater-title:eq($k)")->find(".p-movie-schedule__show-time-item__start:eq($l)")->text();
//     }
//     // 現在時刻より後の上映時間を全て取得
//     for ($m = 0; $m < count($allShowTime); $m++) {
//         if (strtotime($allShowTime[$m]) >= strtotime($nowTime)) {
//             $showTime[] = $allShowTime[$m];
//         }else{
//             $showTime[] = "null";
//         }
//     }
//     // 現在時刻より後で直近の１つを取得
//     sort($showTime);
//     $theaterTime[$j][$k] = $showTime[0];
// }
// }
$theaterName = array();
// 0:パラサイト、1:黒い司法
$theaterName = [
    [['TOHOシネマズ 日比谷'], ['TOHOシネマズ 日本橋'], ['TOHOシネマズ 六本木ヒルズ'], ['ユナイテッド・シネマ豊洲'], ['TOHOシネマズ 上野']],
    [['TOHOシネマズ 日比谷'], ['TOHOシネマズ 日本橋'], ['ユナイテッド・シネマ豊洲'], ['新宿ピカデリー'], ['T・ジョイPRINCE品川']]
];

$theaterTime = array();
// 0:パラサイト、1:黒い司法
$theaterTime = [
    [['16:35'], ['18:30'], ['16:15'], ['16:50'], ['17:50']],
    [['18:00'], ['20:30'], ['20:00'], ['18:20'], ['null']]
];

var_dump($theaterName);
var_dump("<br>");
var_dump("<br>");
var_dump($theaterTime);
