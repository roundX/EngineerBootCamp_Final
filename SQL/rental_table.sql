-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 3 月 14 日 02:31
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `What_do_you_watch`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `rental_table`
--

CREATE TABLE `rental_table` (
  `id` int(12) NOT NULL,
  `jacket` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `synopsis` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `rental_table`
--

INSERT INTO `rental_table` (`id`, `jacket`, `title`, `synopsis`, `date`) VALUES
(281, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/d36cfee5d8cc26b22bf0f52dbc2964eda87b7e76/store/fitpad/300/400/685aeb686dfababef36b33bd5211763154baa49e0ecfbf62f7c48018e424/_.jpg', 'かぐや様は告らせたい～天才たちの恋愛頭脳戦～', '将来を期待されたエリートが集う秀知院学園。生徒会会長・白銀御行（平野紫耀）と生徒会副会長・四宮かぐや（橋本環奈）は互いに惹かれあう仲だった。しかし ————プライドが高い２人にとって告白す…', '2020-03-14'),
(282, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/21517e27820fa443572bb7624a46d3aead07edf7/store/fitpad/300/400/6f865675ef2c9dccb8a1c6abf99475eeef1086ae3f6763ba791615b8423a/_.jpg', 'カフカ「変身」', '遠の愛を誓ったあの日から1年が過ぎ、上海・香港転勤を経て帰国した春田創一。久しぶりに戻ってきた天空不動産第二営業所では、黒澤武蔵をはじめ、お馴染みのメンバーが顔を揃え、最近配属された陽気な…', '2020-03-14'),
(283, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/3afa96b1469d12d32e61f9f4e649a1f8a869462f/store/fitpad/300/400/f6a7a9c4aac71639a3ea861890ea774f15d2a5fa764c6cd0b5d32b8d132f/_.jpg', '劇場版 おっさんずラブ ～LOVE or DEAD～', '有能な会計士として大手企業に勤務するエリック（ロブ・ブライドン）。仕事と自宅の往復で変わり映えしない日々のなか、政治家の妻ヘザー（ジェーン・ホロックス）との夫婦仲は険悪、息子にもバカにされ…', '2020-03-14'),
(284, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/5fcb356b33c21432d53c1ad24a4dcf62e94868c5/store/fitpad/300/400/2cf54f1d9dbe697b750c8c8680053c67e795fa0cfd418f9e022c6fc035aa/_.jpg', 'シンクロ・ダンディーズ！', 'テレビ番組のリポーターを務める葉子は巨大な湖に棲む“幻の怪魚”を探すため、番組クルーと共に、かつてシルクロードの中心地として栄えたこの地を訪れた。夢は、歌うこと。その情熱を胸に秘め、目の前…', '2020-03-14'),
(285, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/a28f8839b78121d033517b3af78fac3f40ac975e/store/fitpad/300/400/36669d4cb686f3c2729cdefe5bee2c903e2ce2f3fc3005230e8849d15348/_.jpg', '旅のおわり世界のはじまり', '1976年マンチェスター。高校をドロップアウトしたスティーブン・モリッシーは、ライブに通っては批評を音楽紙に投稿するだけの毎日。家計を助けようと就職しても職場に馴染めず、仕事をサボって詩を…', '2020-03-14'),
(286, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/5d428bb28b28c8ce526bcf2c8923fdd25695005a/store/fitpad/300/400/9a2261c21ac336d9190d518b51794e93a01d158ced5198ecb04c49dfa20e/_.jpg', 'イングランド・イズ・マイン  モリッシー, はじまりの物語', '2015年10月、『続･夕陽のガンマン／地獄の決斗』（セルジオ・レオーネ監督、1966年製作）のファンたちが、ブルゴス（スペイン）で撮影された映画のラストシーンのロケ地を訪れた。この有志た…', '2020-03-14'),
(287, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/8529723f0f18f9d3ab2c28905bd4734d09c5f794/store/fitpad/300/400/20d8efce7a3672bbfad70faca4312bd96390e329092834e8574d13058748/_.jpg', 'サッドヒルを掘り返せ', '1946年、終戦の歓びに沸くロンドンで暮らす作家のジュリエットは、一冊の本を きっかけに、“ガーンジー島の読書会”のメンバーと手紙を交わすようになる。 \r\nナチスに脅えていた大戦中は、読書…', '2020-03-14'),
(288, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/ef4df695761d4455f028c4d2c770a171c1684502/store/fitpad/300/400/0e45355e7455149d69e9b09585ae5bf4b19858f143e05c0eaaa1abe50fae/_.jpg', 'ガーンジー島の読書会の秘密', '困っている人は見過ごせない、義理と人情に厚すぎるヤクザ”阿岐本組”。組長は社会貢献に目がなく、次から次へと厄介な案件を引き受けてしまう。今度はなんと、経営不振の高校の建て直し。いつも親分に…', '2020-03-14'),
(289, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/c0c9afba3aaef1b5142215d21b536bc27844cad3/store/fitpad/300/400/ba6e0d503af3d61a58bae995b5df64d71ad0c88a6ea6bb71ec94e878de06/_.jpg', 'ブライトン ミラクル', 'インドからパリへやってきた青年アジャは、憧れのインテリアショップでひょんなことからクローゼットに閉じ込められ、世界中を旅することに！？イギリス、スペイン、イタリア、リビア・・・国籍や人種を…', '2020-03-14'),
(290, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/b933c36e07c791e3b5aff2bcc01173d7c51047bd/store/fitpad/300/400/5b38bbe834b0e9ceb370dc889a63a00f4703e670a9bf9c738deb83725c53/_.jpg', '死霊船 メアリー号の呪い', 'アイススケートをメジャースポーツへと押し上げ、さらに芸術の領域にまで昇華させた伝説の英国人スケーター、ジョン・カリー。彼はバレエのメソッドを取り入れた演技で、1976年インスブルック冬季五…', '2020-03-14'),
(291, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/0b1ec473abfe5389019b16c8fcf6cdf24894a777/store/fitpad/300/400/d373737c5e968d87702ef49c90a4c76f91c5a5f5a115324a2c7a923904b9/_', '任侠学園', '第２次大戦末期、ソ連軍のエルマコフ大尉が受けた極秘指令。それはナチスに奪われた秘密兵器ＢＭ-１３、別名《カチューシャ》と呼ばれる自走式ロケットランチャーを、ドイツに運び出される前に破壊せよ…', '2020-03-14'),
(292, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/187e1ea26f4b4f6d5de16e7cf769371e9e085100/store/fitpad/300/400/a8764e54e2353771c014040cbf40b47cf550ee1db4de04587c83e3e6569b/_.jpg', 'クローゼットに閉じこめられた僕の奇想天外な旅', '', '2020-03-14'),
(293, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/0b24bec94986cf63b99be307d017d419cb8dfd37/store/fitpad/300/400/1b3ffbf675128dde7f24da281997afba21a98c4432118dfe0b337ddf7ab8/_.jpg', '氷上の王、ジョン・カリー', '', '2020-03-14'),
(294, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/04e822aebbe354cced0164675b3f41641df613a3/store/fitpad/300/400/a397ef34ecd6dd21f31698acc880254504ed1a0b690b8b7127074e671a0f/_.jpg', 'ナイトメアーワックス', '', '2020-03-14'),
(295, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/74cf5c61cfd79c4efe20b422e78f701720206ec9/store/fitpad/300/400/a6aa49f89b23072df987ebc60d889f8aa344dcba38ebc260035b674077f3/_.jpg', '愛欲の魔神島・謎の全裸美女惨死体', '', '2020-03-14'),
(296, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/5c2d0919acabc440a2461c51b220679912a5f088/store/fitpad/300/400/59c5762d13a84997ac23adcd2bf284f5a22bf16397f71852cac830cc73c2/_.jpg', 'バトル・オブ・ワルシャワ 名もなき英雄', '', '2020-03-14'),
(297, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/ace9c302d4e2547b9c702ca877d17cad6cc2da75/store/fitpad/300/400/b54751e60d98ae80128d0069eac3a4101b21200dcdd2312437d9cdc56578/_.jpg', 'デンジャラス・ドライバー 暴走開始', '', '2020-03-14'),
(298, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/70e038b5666ce574c56913fcf71624d80ab132e3/store/fitpad/300/400/5b7509620c73f3b75c49ad20e46c512cb418fb73975ea719e224e2d8db74/_.jpg', 'ガーディアン24', '', '2020-03-14'),
(299, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/4219d6e4098c6da1318a39b77b30d4d4b36f012f/store/fitpad/300/400/89df74ac1a32e600d8069daedb7f3b143239fa4a0312b61f426b1c2ff8d0/_.jpg', 'コードレッド ロシア軍秘密兵器破壊指令', '', '2020-03-14'),
(300, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/baa6e86ba55cd00df0b48ec50175674f3b007cfe/store/fitpad/300/400/5f92bdbb0ac9ecafc3aada1d1beb3bb631057fc68b9171dcc8441b04f5d1/_.jpg', 'ザ・スナイパー　孤高の男', '', '2020-03-14');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `rental_table`
--
ALTER TABLE `rental_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `rental_table`
--
ALTER TABLE `rental_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
