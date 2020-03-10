<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>ナニミル 今から見る</title>
  <!-- フォントの取得 -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/3019366ae3.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/reset.css" />
  <link rel="stylesheet" href="css/now.css" />
</head>

<body>
  <?php

  include("function.php");

  if (!isset($_GET["sort"])) {
    $_GET["sort"] = "id ASC";
  }
  $sort = $_GET["sort"];

  // 現在時刻取得
  // 東京の標準時刻に設定
  date_default_timezone_set('Asia/Tokyo');
  $hour = date("H");
  $minute = date("i");
  $nowTime = $hour . ":" . $minute;


  //  DB接続
  $pdo = jointDB();

  // データ登録SQL作成 コンテンツ、サイドバー用---------------------------------
  $stmt = $pdo->prepare("SELECT * FROM now_table ORDER BY " . $sort);
  $status = $stmt->execute();

  // 変数定義
  $mainView = "";
  $sidebarView = "";
  $title = [];
  $countContents = 1;

  if ($status == false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit("ErrorQuery:" . $error[2]);
  } else {
    //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる例
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
      $result["synopsis"] = mb_ereg_replace('。', "。\n\n", $result["synopsis"]);
      $title[] = $result["title"];
      $mainView .= "<li class='content__block " . $countContents . "' id='" . $result["id"] . "'><img src=" . $result["jacket"] . " class='content__block-image'><h4 class='content__block-title'>" . $result["title"] . "</h4></li>";
      $sidebarView .= "<li><a href='#" . $result["id"] . "' class='sidebar__list-index'>" . $result["title"] . "</a></li>";
      $countContents++;
    }
  }
  // -------------------------------------------------------------------

  // データ取得SQL作成 スケジュール用-----------------------------------------------
  $stmtURL = $pdo->prepare("SELECT url FROM url_table");
  $statusURL = $stmtURL->execute();

  // DBからデータ取得
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

  // filmarksより各作品の詳細ページのHTMLを取得
  // for ($i = 0; $i < count($scheduleURL); $i++) {
  //   $titleHTML[] = file_get_contents($scheduleURL[$i]);
  // }
  // 各タイトルスケジュールページHTMLからシアター名と時間取得
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

  // jsに配列を渡す為json化---------------------------------------------
  $theaterName_json = json_encode($theaterName);
  $theaterTime_json = json_encode($theaterTime);
  // ----------------------------------------------------------------


  ?>

  <script>
    // 現ソート状態表示のためjsに渡す変数
    let sort = "<?= $sort ?>";
    // シアター名、上映時間をjsに渡すための変数
    let theaterName = [];
    let theaterTime = [];

    // jsで扱うためにオブジェクト化
    theaterName = JSON.parse('<?= $theaterName_json ?>');
    theaterTime = JSON.parse('<?= $theaterTime_json ?>');
  </script>




  <div class="wrap">
    <!---------------------------- [header] ------------------------------>
    <header class="header">
      <h1 class="header__title tx__center"><a href="hp.php">ナニミル？</a></h1>
      <h2 class="header__subTitle tx__center">- What do you watch? -</h2>
      <ul class="header__nav">
        <li class="header__nav-list" id="now">
          <a href="#" style="color: blueviolet;">今から観る</a>
        </li>
        <li class="header__nav-list">
          <a href="#">公開予定</a>
        </li>
        <li class="header__nav-list">
          <a href="review.php">レビュー</a>
        </li>
        <li class="header__nav-list">
          <a href="#">レンタル</a>
        </li>
        <li class="header__nav-list">
          <a href="#">注目作</a>
        </li>
      </ul>
    </header>

    <div class="body__wrapper">
      <!----------------------------- [main] ------------------------------->
      <main class="main">
        <div class="content" id="Movie">
          <h3 class="content__label" id="content__label"></h3>
          <ul class="content__sequence">

            <!-- ここにコンテンツを追加 -->
            <!-- 以下のような書式で入ってくる
          "<li class='content__block' id='"$result["id"]"'>
              <img src="$result["jacket"]" class='content__block-image'>
              <h4 class='content__block-title'>"$result["title"]"</h4>
          </li>" -->

            <?= $mainView ?>

          </ul>
        </div>
      </main>

      <!---------------------------- [sidebar] ------------------------------>
      <div class="sidebar">
        <!-- ソート用セレクトボックス -->
        <form action="#" method="GET" class="sidebar__sort">
          <!-- 変更があると自動submit -->
          <select name="sort" onchange="submit(this.form)">
            <option value="id ASC">オススメ順</option>
            <option value="title DESC">タイトル降順</option>
            <option value="title ASC">タイトル昇順</option>
          </select>
        </form>

        <ul class="sidebar__list">
          <!-- ここにコンテンツを追加 -->
          <!-- 以下のような書式で入ってくる
              "<li><a href='#$result["title"]' class='sidebar__list-index'>
                "$result["title"]"</a>"</li>;
           -->

          <?= $sidebarView ?>
        </ul>
      </div>

    </div>
    <!---------------------------- [footer] ------------------------------>
    <footer class="footer tx__center">
      <a href="#" class="fa fa-chevron-up icon"></a>
      <small>copyrights 2020 Kento Maruyama All RIghts Reserved.</small>
    </footer>

    <!-------------------------------------------------------------->
    <!-- jquery読み込み -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <!-- js読み込み -->
    <script src="js/now.js"></script>
  </div>
</body>

</html>