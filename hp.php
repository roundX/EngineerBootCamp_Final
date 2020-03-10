<!-- 最初に表示されるページ。ホームページ -->

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>ナニミル？</title>
    <!-- フォントの取得 -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/3019366ae3.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
</head>

<body>

    <?php

    include("function.php");

    // DB接続
    $pdo = jointDB();

    // データ取得SQL作成-------------------------------------------------
    $stmtNow = $pdo->prepare("SELECT * FROM now_table");
    $stmtComing = $pdo->prepare("SELECT * FROM coming_table");
    $stmtReview = $pdo->prepare("SELECT * FROM review_table");
    $stmtRental = $pdo->prepare("SELECT * FROM rental_table");
    $stmtTrend = $pdo->prepare("SELECT * FROM trend_table ORDER BY id DESC");

    $statusNow = $stmtNow->execute();
    $statusComing = $stmtComing->execute();
    $statusReview = $stmtReview->execute();
    $statusRental = $stmtRental->execute();
    $statusTrend = $stmtTrend->execute();
    // ----------------------------------------------------------------


    // データ表示--------------------------------------------------------
    $nowJacket = array();
    if ($statusNow == false) {
        //execute（SQL実行時にエラーがある場合）
        $error = $stmtNow->errorInfo();
        exit("ErrorQuery:" . $error[2]);
    } else {
        //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる
        while ($resultNow = $stmtNow->fetch(PDO::FETCH_ASSOC)) {
            $nowJacket[] = $resultNow["jacket"];
        }
    }

    $comingJacket = array();
    if ($statusComing == false) {
        //execute（SQL実行時にエラーがある場合）
        $error = $stmtComing->errorInfo();
        exit("ErrorQuery:" . $error[2]);
    } else {
        //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる
        while ($resultComing = $stmtComing->fetch(PDO::FETCH_ASSOC)) {
            $comingJacket[] = $resultComing["jacket"];
        }
    }

    $reviewJacket = array();
    if ($statusReview == false) {
        $error = $stmtReview->errorInfo();
        exit("ErrorQuery:" . $error[2]);
    } else {
        while ($resultReview = $stmtReview->fetch(PDO::FETCH_ASSOC)) {
            $reviewJacket[] = $resultReview["jacket"];
        }
    }

    $rentalJacket = array();
    if ($statusRental == false) {
        //execute（SQL実行時にエラーがある場合）
        $error = $stmtRental->errorInfo();
        exit("ErrorQuery:" . $error[2]);
    } else {
        //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる
        while ($resultRental = $stmtRental->fetch(PDO::FETCH_ASSOC)) {
            $rentalJacket[] = $resultRental["jacket"];
        }
    }

    $trendJacket = array();
    if ($statusTrend == false) {
        //execute（SQL実行時にエラーがある場合）
        $error = $stmtTrend->errorInfo();
        exit("ErrorQuery:" . $error[2]);
    } else {
        //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる
        while ($resultTrend = $stmtTrend->fetch(PDO::FETCH_ASSOC)) {
            $trendJacket[] = $resultTrend["jacket"];
        }
    }
    // ----------------------------------------------------------------


    // jsに配列を渡す為json化---------------------------------------------
    $nowJacket_json = json_encode($nowJacket);
    $comingJacket_json = json_encode($comingJacket);
    $reviewJacket_json = json_encode($reviewJacket);
    $rentalJacket_json = json_encode($rentalJacket);
    $trendJacket_json = json_encode($trendJacket);
    // ----------------------------------------------------------------

    ?>

    <!-- 画像更新するためjsに渡す配列 -->
    <script>
        let nowJacket = [];
        let comingJacket = [];
        let reviewJacket = [];
        let rentalJacket = [];
        let trendJacket = [];

        // jsで扱うためにオブジェクト化
        nowJacket = JSON.parse('<?= $nowJacket_json ?>');
        comingJacket = JSON.parse('<?= $comingJacket_json ?>');
        reviewJacket = JSON.parse('<?= $reviewJacket_json ?>');
        rentalJacket = JSON.parse('<?= $rentalJacket_json ?>');
        trendJacket = JSON.parse('<?= $trendJacket_json ?>');
    </script>


    <div class="wrap">
        <!---------------------------- [header] ------------------------------>
        <header class="header">
            <h1 class="header__title tx__center">ナニミル？</h1>
            <h2 class="header__subTitle tx__center">- What do you watch? -</h2>
        </header>

        <!----------------------------- [main] ------------------------------->
        <main class="main">
            <ul class="contents__wrapper">
                <li class="contents__list">
                    <img class="nowJacket">
                    <a href="now.php">今から観る</a>
                    <!-- <a href="getURL.php">今から観る</a> -->
                </li>
                <li class="contents__list" id="comingSoon">
                    <img class="comingJacket">
                    <a href="#">公開予定から決める</a>
                    <div class="comingSoon">
                        <p>準備中</P>
                    </div>
                </li>
                <li class="contents__list">
                    <img class="reviewJacket">
                    <a href="review.php">レビューから決める</a>
                </li>
                <li class="contents__list" id="comingSoon">
                    <img class="rentalJacket">
                    <a href="#">レンタルで観る</a>
                    <div class="comingSoon">
                        <p>準備中</P>
                    </div>

                </li>
                <li class="contents__list" id="comingSoon">
                    <img class="trendJacket">
                    <a href="#">注目作から決める</a>
                    <div class="comingSoon">
                        <p>準備中</P>
                    </div>

                </li>
            </ul>
        </main>

        <!---------------------------- [footer] ------------------------------>
        <footer class="footer tx__center">
            <a href="#"></a>
            <small>copyrights 2020 Kento Maruyama All RIghts Reserved.</small>
        </footer>

        <!-------------------------------------------------------------->
        <!-- jquery読み込み -->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

        <!-- js読み込み -->
        <script src="js/hp.js"></script>
    </div>
</body>

</html>