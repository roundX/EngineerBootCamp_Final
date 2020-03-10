<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>ナニミル レビュ-</title>
  <!-- フォントの取得 -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/3019366ae3.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/reset.css" />
  <link rel="stylesheet" href="css/review.css" />
</head>

<body>
  <?php

  include("function.php");


  if (!isset($_GET["sort"])) {
    $_GET["sort"] = "id ASC";
  }
  $sort = $_GET["sort"];

  //  DB接続
  $pdo = jointDB();

  // データ登録SQL作成
  $stmt = $pdo->prepare("SELECT * FROM review_table ORDER BY " . $sort);
  $status = $stmt->execute();

  //３．データ表示
  $mainView = "";
  $sidebarView = "";
  if ($status == false) {
    //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit("ErrorQuery:" . $error[2]);
  } else {
    //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる例
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
      $result["review"] = mb_ereg_replace('。', "。\n\n", $result["review"]);
      $mainView .= "<li class='content__block' id='" . $result["id"] . "'><img src=" . $result["jacket"] . " class='content__block-image'><h4 class='content__block-title'>" . $result["title"] . "</h4><p class='content__block-review'>" . $result["review"] . "</p></li>";
      $sidebarView .= "<li><a href='#" . $result["id"] . "' class='sidebar__list-index'>" . $result["title"] . "</a></li>";
    }
  }

  ?>

  <!-- 現ソート状態表示のためjsに渡す変数 -->
  <script>
    let sort = "<?= $sort ?>";
  </script>




  <div class="wrap">
    <!---------------------------- [header] ------------------------------>
    <header class="header">
      <h1 class="header__title tx__center"><a href="hp.php">ナニミル？</a></h1>
      <h2 class="header__subTitle tx__center">- What do you watch? -</h2>
      <ul class="header__nav">
        <li class="header__nav-list">
          <a href="now.php">今から観る</a>
        </li>
        <li class="header__nav-list">
          <a href="#">公開予定</a>
        </li>
        <li class="header__nav-list" id="review">
          <a href="#" style="color: blueviolet;">レビュー</a>
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
          "<li class='content__block' id='"$result["title"]"'>
              <img src="$result["jacket"]" class='content__block-image'>
              <h4 class='content__block-title'>"$result["title"]"</h4>
              <p class='content__block-review'>"$result["review"]"</p>
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
            <option value="id ASC">新着順</option>
            <option value="id DESC">投稿順</option>
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
    <script src="js/review.js"></script>
  </div>
</body>

</html>