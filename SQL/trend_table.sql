-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 3 月 14 日 02:32
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
-- テーブルの構造 `trend_table`
--

CREATE TABLE `trend_table` (
  `id` int(12) NOT NULL,
  `jacket` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `synopsis` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `trend_table`
--

INSERT INTO `trend_table` (`id`, `jacket`, `title`, `synopsis`, `date`) VALUES
(221, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/ced385a0d3405a332d2461a93d995986d199c2e6/store/fitpad/300/400/12c4dd8cc5c17b50eda093afcfbca70cfc9efb3b2f77f09bc56f3dda218d/_.jpg', 'ナンシー', '親の顔も知らず、生まれてからずっと暗い闇の中で生きてきたナンシー。特技は嘘をつくこと。ある日、彼女は 5 歳で行方不明になった娘を探す夫婦をTVで見かける。その娘の30年後の似顔絵が自分と…', '2020-03-14'),
(222, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/ad4fac523fb6af444e3958cb33c4f53260068dd1/store/fitpad/300/400/f98a25440c59638909f9d80a87c2793262b867f2351cdd59673ccaf4a774/_.jpg', 'パラサイト 半地下の家族', '全員失業中で、その日暮らしの生活を送る貧しいキム一家。長男ギウは、ひょんなことからIT企業のCEOである超裕福なパク氏の家へ、家庭教師の面接を受けに行くことになる。そして、兄に続き、妹のギ…', '2020-03-14'),
(223, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/bbd375a74d8f078486a7a24ab936b615998b25f7/store/fitpad/300/400/991b1b710efbdead2a7b0b49a78105911ab5a20e177f0e969d4ea0002776/_.jpg', 'ミッドサマー', '家族を不慮の事故で失ったダニー(フローレンス・ピュー)は、大学で民俗学を研究する恋人や友人と5人でスウェーデンの奥地で開かれる“90年に一度の祝祭”を訪れる。美しい花々が咲き乱れ、太陽が沈…', '2020-03-14'),
(224, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/1ebae00f04d2bfcd274ebb17888ea2bfc355ff93/store/fitpad/300/400/cb5ff86bb4b329957830dcdc67301b0673192a6d73aa10891a43bbe29d39/_.jpg', 'ジョン・F・ドノヴァンの死と生', '舞台はニューヨーク。大ヒットTVシリーズに出演し、一躍スターの座へと駆け上った、人気俳優のジョン・F・ドノヴァンが死んだ。自殺か事故か、あるいは事件か、謎に包まれた彼の死の真相をにぎる鍵は…', '2020-03-14'),
(225, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/67c82866729407ed66d92bb0aaf750390caa17b7/store/fitpad/300/400/cde03a1cbba4889e28108e773c1cbfe18ae6b0fb1f9a95f85660ab080db1/_.jpg', 'ミッドサマー　ディレクターズカット版', '家族を不慮の事故で失ったダニー(フローレンス・ピュー)は、大学で民俗学を研究する恋人や友人と5人でスウェーデンの奥地で開かれる“90年に一度の祝祭”を訪れる。美しい花々が咲き乱れ、太陽が沈…', '2020-03-14'),
(226, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/770e295bf35161638d1fb2e5466262bff358b8a5/store/fitpad/300/400/5c4865a18ad566197c2777153e0f39219db86408b42225d1149f36a497c1/_.jpg', '1917 命をかけた伝令', '第一次世界大戦真っ只中の1917年のある朝、若きイギリス人兵士のスコフィールドとブレイクにひとつの重要な任務が命じられる。それは一触即発の最前線にいる1600人の味方に、明朝までに作戦中止…', '2020-03-14'),
(227, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/f49bda426e19b1a003b2722a779247c4117f2a0d/store/fitpad/300/400/56826767c49145729c7ce6e2ac09f6aaa72509ff4c01ef7ee2e995fc3cc7/_.jpg', 'トイ・ストーリー2', 'ウッディ誘拐事件が発生！バズとオモチャ仲間たちは、ウッディを見つけ出すために、決死の覚悟で外の世界に飛び出します。一方、“超プレミア人形”として、カウガール人形のジェシーや馬のブルズアイと…', '2020-03-14'),
(228, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/8908e1ccb4e88abbc4c4121dbbef70a7c6e81b89/store/fitpad/300/400/2cc59adb7d11fd9cf9e180d30e6f24acb248b944a3df3892d8ccbeec11ca/_.jpg', 'ジョーカー', '「どんな時も笑顔で人々を楽しませなさい」という母の言葉を胸にコメディアンを夢見る、孤独だが心優しいアーサー。都会の片隅でピエロメイクの大道芸人をしながら母を助け、同じアパートに住むソフィー…', '2020-03-14'),
(229, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/56f314155a1749169c05338a4ae17d3289817e97/store/fitpad/300/400/5771d994d8f8f1eb7f4b152aaa61535f395ef30b1f7d98b2afa25a319d34/_.jpg', 'コーヒーが冷めないうちに', '時田数（有村架純）が働く、過去に戻れると噂の喫茶店「フニクリフニクラ」。\r\nただし、そこには①過去に戻って、どんな事をしても、現実は変わらない。②過去に戻れるのは、コーヒーをカップに注いで…', '2020-03-14'),
(230, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/fd778441a86130c51c3453f9eb883ca96b975fc4/store/fitpad/300/400/132768b8fd85eee2c13842a4df94dc34c7e721a64f705dde8a75d5506299/_.jpg', '新聞記者', '東都新聞記者・吉岡（シム・ウンギョン）のもとに、大学新設計画に関する極秘情報が匿名 FAX で届いた。日本人の父と韓国人の母のもとアメリカで育ち、ある強い思いを秘めて日本の新聞社で働いてい…', '2020-03-14'),
(231, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/00f18d6f929ec2d47822f08f907632456e4d47d1/store/fitpad/300/400/ffd0f7d20f23bb25e30f8724c3745c52b24c1250dd70056a2fd7fa2de26f/_.jpg', 'Fukushima 50', '本作は、2011年3月11日午後2時46分に発生し、マグニチュード9.0、最大震度7という、日本の観測史上最大の地震となった東日本大震災時の福島第一原発事故を描く物語。想像を超える被害をも…', '2020-03-14'),
(232, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/91fb81507ea3bd46bf49b7bed8f65be876987199/store/fitpad/300/400/f5cd0d1e572293ba55c5c81e216533c4d0a925fe4a77f27fd6d9b8d01519/_.jpg', 'ジュディ 虹の彼方に', 'パリ郊外に位置するモンフェルメイユ。ヴィクトル・ユゴーの小説「レ・ミゼラブル」の舞台でもあるこの街も、いまや移民や低所得者が多く住む危険な犯罪地域と化していた。犯罪防止班に新しく加わること…', '2020-03-14'),
(233, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/1bd2477c160b3f7da7856b49a2e356946dbc02e5/store/fitpad/300/400/9acd045f9d8967be91958e44c38f4b408ab0daab9925030cca27d63a165d/_.jpg', 'レ・ミゼラブル', '憂鬱な月曜日の朝。銀行員ＯＬの“私”（バカリズム）の１週間が始まった。眠気に耐えながらもきっちりメイクして家を出る。ストレスフルな満員電車に揺られ、職場の最寄り駅で合流するのは社内で一番仲…', '2020-03-14'),
(234, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/7862168d5a9758a863ee6c329267f6e567b4cbeb/store/fitpad/300/400/9ed39fd6cff330d35cb1ecfac3f16c8746907d8147507b6b0265ff0100ed/_.jpg', '架空OL日記', 'ジュールス(アン・ハサウェイ)は、家庭を持ちながら何百人もの社員を束ね、ファッションサイトを運営する会社のCEO。女性なら誰しもが憧れる華やかな世界に身を置く彼女。\r\n仕事と家庭を両立させ…', '2020-03-14'),
(235, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/f0ba6bd4535a08ece6bb469f6021ceec6ecf2322/store/fitpad/300/400/ddccaeeca5c029545b3f967a58ffd7907fee5d7c72a0ae2fa7a5d06b7b07/_.jpg', 'マイ・インターン', '2015年、架空のカナダで起こった、現実——。 とある世界のカナダでは、2015年の連邦選挙で新政権が成立。２ヶ月後、内閣はS18法案を可決する。公共医療政策の改正が目的である。中でも特に…', '2020-03-14'),
(236, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/7a6d794df2ade65d553b6f92a176edaedbdc066b/store/fitpad/300/400/152676026159d46cc66dcbcf1c3954c2434558b3066ebce5550a120d5da1/_.jpg', 'Mommy／マミー', '舞台は、第二次世界大戦下のドイツ。心優しい10歳の少年ジョジョ（ローマン・グリフィン・デイビス）は、空想上の友だちのアドルフ・ヒトラー（タイカ・ワイティティ）の助けを借りながら、青少年集団…', '2020-03-14'),
(237, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/74006fb7b1e3e8176cc9236501d023843cfb81b2/store/fitpad/300/400/fda37030c15ea5f686905eb7a7f40e6213a38b37e8b9ce269e9868d2cc97/_.jpg', 'ジョジョ・ラビット', 'オーガストこと”オギー”はふつうの10歳の男の子。ただし、“顔”以外は…。\r\n生まれつき人と違う顔をもつ少年・オギ―（ジェイコブ・トレンブレイ）は、幼い頃からずっと母イザベル（ジュリア・ロ…', '2020-03-14'),
(238, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/aaf93fd0b9f7b8755ccf0c0bc1f236913a25cdb8/store/fitpad/300/400/ce51df1cf908e8775e589265daaacb50e466d000147e9b75d7a0a54803f0/_.jpg', 'ワンダー 君は太陽', '2002 年、カリフォルニア州サクラメント。閉塞感溢れる片田舎のカトリック系高校から、大都会ニューヨークへの大学進学を夢見るクリスティン（自称“レディ・バード”）。高校生最後の 1 年、友…', '2020-03-14'),
(239, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/75822eeeff0fd3d768d276f07bd1044db6a007df/store/fitpad/300/400/7ded74fb81624fb740debe2ec4a6bab9e3fcc4fb27fd8f7ad37adcfbacab/_.jpg', 'レディ・バード', '世界待望！伝説のバンド＜クイーン＞のフレディ・マーキュリーの華やかな成功と波乱万丈の人生を描く。クイーンのブライアン・メイとロジャー・テイラーが音楽総指揮を務め、32もの不朽の名曲が主とし…', '2020-03-14'),
(240, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/2ec4fa15683d57257709ed426f75cc8e3c5a4b26/store/fitpad/300/400/5b3831fffcbcbfb5b8865604a6bf97ad6f3e5d75b58188358116e20f8865/_.jpg', 'ボヘミアン・ラプソディ', '', '2020-03-14');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `trend_table`
--
ALTER TABLE `trend_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `trend_table`
--
ALTER TABLE `trend_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
