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
-- テーブルの構造 `now_table`
--

CREATE TABLE `now_table` (
  `id` int(12) NOT NULL,
  `jacket` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `synopsis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `now_table`
--

INSERT INTO `now_table` (`id`, `jacket`, `title`, `synopsis`, `detail`, `date`) VALUES
(1221, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/ad4fac523fb6af444e3958cb33c4f53260068dd1/store/fitpad/300/400/f98a25440c59638909f9d80a87c2793262b867f2351cdd59673ccaf4a774/_.jpg', 'パラサイト 半地下の家族', '全員失業中で、その日暮らしの生活を送る貧しいキム一家。長男ギウは、ひょんなことからIT企業のCEOである超裕福なパク氏の家へ、家庭教師の面接を受けに行くことになる。そして、兄に続き、妹のギ…', '83796', '2020-03-14'),
(1222, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/bbd375a74d8f078486a7a24ab936b615998b25f7/store/fitpad/300/400/991b1b710efbdead2a7b0b49a78105911ab5a20e177f0e969d4ea0002776/_.jpg', 'ミッドサマー', '家族を不慮の事故で失ったダニー(フローレンス・ピュー)は、大学で民俗学を研究する恋人や友人と5人でスウェーデンの奥地で開かれる“90年に一度の祝祭”を訪れる。美しい花々が咲き乱れ、太陽が沈…', '83342', '2020-03-14'),
(1223, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/1ebae00f04d2bfcd274ebb17888ea2bfc355ff93/store/fitpad/300/400/cb5ff86bb4b329957830dcdc67301b0673192a6d73aa10891a43bbe29d39/_.jpg', 'ジョン・F・ドノヴァンの死と生', '舞台はニューヨーク。大ヒットTVシリーズに出演し、一躍スターの座へと駆け上った、人気俳優のジョン・F・ドノヴァンが死んだ。自殺か事故か、あるいは事件か、謎に包まれた彼の死の真相をにぎる鍵は…', '64708', '2020-03-14'),
(1224, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/67c82866729407ed66d92bb0aaf750390caa17b7/store/fitpad/300/400/cde03a1cbba4889e28108e773c1cbfe18ae6b0fb1f9a95f85660ab080db1/_.jpg', 'ミッドサマー　ディレクターズカット版', '家族を不慮の事故で失ったダニー(フローレンス・ピュー)は、大学で民俗学を研究する恋人や友人と5人でスウェーデンの奥地で開かれる“90年に一度の祝祭”を訪れる。美しい花々が咲き乱れ、太陽が沈…', '89612', '2020-03-14'),
(1225, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/770e295bf35161638d1fb2e5466262bff358b8a5/store/fitpad/300/400/5c4865a18ad566197c2777153e0f39219db86408b42225d1149f36a497c1/_.jpg', '1917 命をかけた伝令', '第一次世界大戦真っ只中の1917年のある朝、若きイギリス人兵士のスコフィールドとブレイクにひとつの重要な任務が命じられる。それは一触即発の最前線にいる1600人の味方に、明朝までに作戦中止…', '85560', '2020-03-14'),
(1226, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/8908e1ccb4e88abbc4c4121dbbef70a7c6e81b89/store/fitpad/300/400/2cc59adb7d11fd9cf9e180d30e6f24acb248b944a3df3892d8ccbeec11ca/_.jpg', 'ジョーカー', '「どんな時も笑顔で人々を楽しませなさい」という母の言葉を胸にコメディアンを夢見る、孤独だが心優しいアーサー。都会の片隅でピエロメイクの大道芸人をしながら母を助け、同じアパートに住むソフィー…', '80819', '2020-03-14'),
(1227, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/fd778441a86130c51c3453f9eb883ca96b975fc4/store/fitpad/300/400/132768b8fd85eee2c13842a4df94dc34c7e721a64f705dde8a75d5506299/_.jpg', '新聞記者', '東都新聞記者・吉岡（シム・ウンギョン）のもとに、大学新設計画に関する極秘情報が匿名 FAX で届いた。日本人の父と韓国人の母のもとアメリカで育ち、ある強い思いを秘めて日本の新聞社で働いてい…', '82082', '2020-03-14'),
(1228, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/00f18d6f929ec2d47822f08f907632456e4d47d1/store/fitpad/300/400/ffd0f7d20f23bb25e30f8724c3745c52b24c1250dd70056a2fd7fa2de26f/_.jpg', 'Fukushima 50', '本作は、2011年3月11日午後2時46分に発生し、マグニチュード9.0、最大震度7という、日本の観測史上最大の地震となった東日本大震災時の福島第一原発事故を描く物語。想像を超える被害をも…', '81857', '2020-03-14'),
(1229, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/91fb81507ea3bd46bf49b7bed8f65be876987199/store/fitpad/300/400/f5cd0d1e572293ba55c5c81e216533c4d0a925fe4a77f27fd6d9b8d01519/_.jpg', 'ジュディ 虹の彼方に', 'パリ郊外に位置するモンフェルメイユ。ヴィクトル・ユゴーの小説「レ・ミゼラブル」の舞台でもあるこの街も、いまや移民や低所得者が多く住む危険な犯罪地域と化していた。犯罪防止班に新しく加わること…', '79297', '2020-03-14'),
(1230, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/1bd2477c160b3f7da7856b49a2e356946dbc02e5/store/fitpad/300/400/9acd045f9d8967be91958e44c38f4b408ab0daab9925030cca27d63a165d/_.jpg', 'レ・ミゼラブル', '憂鬱な月曜日の朝。銀行員ＯＬの“私”（バカリズム）の１週間が始まった。眠気に耐えながらもきっちりメイクして家を出る。ストレスフルな満員電車に揺られ、職場の最寄り駅で合流するのは社内で一番仲…', '84124', '2020-03-14'),
(1231, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/7862168d5a9758a863ee6c329267f6e567b4cbeb/store/fitpad/300/400/9ed39fd6cff330d35cb1ecfac3f16c8746907d8147507b6b0265ff0100ed/_.jpg', '架空OL日記', '2015年、架空のカナダで起こった、現実——。 とある世界のカナダでは、2015年の連邦選挙で新政権が成立。２ヶ月後、内閣はS18法案を可決する。公共医療政策の改正が目的である。中でも特に…', '84566', '2020-03-14'),
(1232, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/7a6d794df2ade65d553b6f92a176edaedbdc066b/store/fitpad/300/400/152676026159d46cc66dcbcf1c3954c2434558b3066ebce5550a120d5da1/_.jpg', 'Mommy／マミー', '舞台は、第二次世界大戦下のドイツ。心優しい10歳の少年ジョジョ（ローマン・グリフィン・デイビス）は、空想上の友だちのアドルフ・ヒトラー（タイカ・ワイティティ）の助けを借りながら、青少年集団…', '58355', '2020-03-14'),
(1233, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/74006fb7b1e3e8176cc9236501d023843cfb81b2/store/fitpad/300/400/fda37030c15ea5f686905eb7a7f40e6213a38b37e8b9ce269e9868d2cc97/_.jpg', 'ジョジョ・ラビット', '世界待望！伝説のバンド＜クイーン＞のフレディ・マーキュリーの華やかな成功と波乱万丈の人生を描く。クイーンのブライアン・メイとロジャー・テイラーが音楽総指揮を務め、32もの不朽の名曲が主とし…', '82051', '2020-03-14'),
(1234, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/2ec4fa15683d57257709ed426f75cc8e3c5a4b26/store/fitpad/300/400/5b3831fffcbcbfb5b8865604a6bf97ad6f3e5d75b58188358116e20f8865/_.jpg', 'ボヘミアン・ラプソディ', '舞台は、さまざまな事情を抱えた人間たちが流れ込む欲望の街・新宿歌舞伎町。\r\n天涯孤独ながら希有な才能を持つプロボクサーの葛城レオ（窪田正孝）が、負けるはずのない相手との試合でＫＯ負けを喫し…', '73709', '2020-03-14'),
(1235, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/295c7d82f4be9691965f587b3963cb51404881e5/store/fitpad/300/400/59ebb56caf9aac617454a7e8dfb0a89df9428a2b4d1369982bb795a747e2/_.jpg', '初恋', '主人公のP.T.バーナムは＜ショービジネス＞の概念を生み出した男。誰もが“オンリーワンになれる場所”をエンターテインメントの世界に作り出し、人々の人生を勇気と希望で照らした実在の人物だ。そ…', '84020', '2020-03-14'),
(1236, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/66d288ab8cd9612360a291a2464449abb8a1b890/store/fitpad/300/400/af19785ded26ad8b7b06479cb55c1a8a6ee2fb851d31fbe46ca425c7c630/_.jpg', 'グレイテスト・ショーマン', '鉄格子で閉ざされた元精神科病院。一日限りの当直を代わった医師・速水は目的の見えない事件に巻き込まれる。ピエロ面の凶悪犯が、負傷した美少女・瞳と立てこもり、身元不明の64名の入院患者と職員た…', '60905', '2020-03-14'),
(1237, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/a032cebf6dafe5ed596b15d0ae6783ad80eb829e/store/fitpad/300/400/e7cba2906464a6142196fd9932d0a0804cdc61d40bf54541af75a81dfac3/_.jpg', '仮面病棟', 'FOXニュースの元人気キャスターのグレッチェン・カールソン(ニコール・キッドマン)が、テレビ界の帝王として君臨していた CEOのロジャー・エイルズ(ジョン・リスゴー)を提訴した。そのスキャ…', '86498', '2020-03-14'),
(1238, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/8f373f8ba01e797e0b05d630b571c4db08ae17ee/store/fitpad/300/400/5a8cc418139bd66035330a1f90860fd2381aaae0460f30fd8fab9537ff27/_.jpg', 'スキャンダル', '第一作目に引続き繰り広げられるタイムトラベルアドベンチャーの第二弾は、前作のラストから始まる。マーティとドクが今度は未来の微調整のために2015年にタイムトリップ。しかしその結果、現在が大…', '83065', '2020-03-14'),
(1239, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/55d23d5adcb7fb831b39e6874c39afd9521914f7/store/fitpad/300/400/ee2de20a2e22bf78fa40a702ea3bcac2915d935ff76d2a25b3762e2824fe/_.jpg', 'バック・トゥ・ザ・フューチャー PART2', 'かつて埼玉県民は東京都民からひどい迫害を受け、身を潜めて暮らしていた。ある日、東京でトップの高校・白鵬堂学院の生徒会長で東京都知事の息子・壇ノ浦百美（だんのうらももみ）は、アメリカ帰りの謎…', '21550', '2020-03-14'),
(1240, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/5bab0ba4bafecc8d7c6e17472634f75bba3a966b/store/fitpad/300/400/b21c2702c0e1087965639f5a559144c7815dcbc14c10a1f00de4ac1ed23a/_.jpg', '翔んで埼玉', '', '79241', '2020-03-14');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `now_table`
--
ALTER TABLE `now_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `now_table`
--
ALTER TABLE `now_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1241;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
