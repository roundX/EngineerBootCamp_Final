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
-- テーブルの構造 `coming_table`
--

CREATE TABLE `coming_table` (
  `id` int(12) NOT NULL,
  `jacket` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `synopsis` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `coming_table`
--

INSERT INTO `coming_table` (`id`, `jacket`, `title`, `synopsis`, `date`) VALUES
(261, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/7e62cd15989ca802173911a9c36cf61cb9213907/store/fitpad/300/400/6da1e82821afcf01bb99672565fe7c2a7008f7a1ad2cc6cf19349a1b07b2/_.jpg', 'ナイチンゲール', '2014年に日本でも発売され一大ブームを巻き起こした経済学書「21世紀の資本」。フランスの経済学者トマ・ピケティが出版し、史上最も重要な経済学書として世界中から称賛を浴びた。しかし、700…', '2020-03-14'),
(262, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/f7bf3a2f96742037f56ce0b833bb41b8202599b1/store/fitpad/300/400/bba1233726721aad9ed78d5cdb87c4c9eacce0fb411bebe0e8a399f7b5eb/_.jpg', '21世紀の資本', '人間を凶暴化させる新種の病原体、メイズ・ウイルスのパンデミックによって大混乱に陥ったアイルランド。6年後、治療法が発見されたことで秩序を取り戻し、治療効果が見られない25%の感染者は隔離施…', '2020-03-14'),
(263, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/baff1b02b7461f9cad5335ece9295879fc755cf2/store/fitpad/300/400/513a9fa7c34d051d760e1c32eb8235f360602ed854f7de69f74a1484dbb5/_.jpg', 'CURED キュアード', '霞ヶ浦農科大学、菌類学科の学生である花山児太郎（井澤勇貴）と同じく菌類学科の学生の香取啓介（松本岳）は相変わらず、菌類学科の教授である岡野に良いようにこき使われていた。ある日、花山たちは岡…', '2020-03-14'),
(264, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/51e3071c4969f133eedc69ddc2880abd550eef70/store/fitpad/300/400/eabff5586c5e613bc85fc8551fa0465c62cd2e32b090632fb7f030430e66/_.jpg', '人間の時間', '心に問題を抱えた若者を受け入れ共同生活を送る“もみの家”に、16歳の本田彩花がやってきた。不登校になって半年、心配する母親に促され俯きながらやってきた彩花に、“もみの家”の主・佐藤泰利は笑…', '2020-03-14'),
(265, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/1b77812ba00021c30722f82476b21fc720fd3d66/store/fitpad/300/400/c1e74ca5016563d604fe1250e1c95931f5d62d9e3298b5bde80df09b190d/_.jpg', '岡野教授の南極生物譚', '高校時代に親友（杉咲花）を病気で亡くした弥生（波瑠）と太郎（成田凌）。\r\nその後、お互いの想いを秘めたまま別々の人生を歩んで行く弥生と太郎。子供の頃に描いた夢に挑み、結婚相手を見付け子供が…', '2020-03-14'),
(266, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/109392e7fd932c16aa2e2ca5dba81263c6943150/store/fitpad/300/400/a993d00e702387c2ef8031ca7958be4fb13fa8554bb3fee0ff5833793b96/_.jpg', 'もみの家', '一週間のサマーバカンスを楽しむため、家族とともにオランダ北部の島にやってきたサムは11歳の男の子。わんぱく盛りの年頃だ が、この世のすべての生き物がいつか死を迎えることに気づいたサムは、「…', '2020-03-14'),
(267, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/f111b850f06cd249f98f275671c059a570fc9c5e/store/fitpad/300/400/971ff0d4190d27b2da1c08966570d8a8bfb58f3da04e9833ad262301a88d/_.jpg', '弥生、三月-君を愛した３０年-', 'ジョーカーと別れ、すべての束縛から放たれたハーレイ・クイン。モラルのない暴れぶりが街中の悪党たちの恨みを買うなか、謎の ダイヤを盗んだ少女をめぐり、裏世界を牛耳る残酷なサイコ“ブラックマス…', '2020-03-14'),
(268, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/61c3b6655b6ad6fa78726e4f40ea881aa3807332/store/fitpad/300/400/8be082065d61ef7397046ff7ae3983970bd3aa457944b4956c8bd139181e/_.jpg', '恐竜が教えてくれたこと', '大学４年生の野畑七瀬は、野畑製薬の社長である父親の計（はかる）と二人暮らし。研究に没頭する仕事人間で母親の死に際も立ち会わず、何かと口うるさく干渉してくる計のことが大嫌いな七瀬は、「一度死…', '2020-03-14'),
(269, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/0cc577830d4d3b446ec36eb9bb73feb2222bb64e/store/fitpad/300/400/dfdec6cee0ab388a1b13e4507e18d23240e4f7c5a1c569221c9b68e08a87/_.jpg', 'ハーレイ・クインの華麗なる覚醒　BIRDS OF PREY', '『デフィレ』、『くるみ割り人形』ハイライト、『エチュード』から構成される。『デフィレ』は100人あまりのパリ・オペラ座バレエ学校の生徒、そしてエトワール、プルミエール・ダンスール、スジェ、…', '2020-03-14'),
(270, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/38e4c9b5d1704464434065fb21c6aa16c7a03dee/store/fitpad/300/400/e88c6e2e6a3ea9c9620c5d6a59eb6e25aec2802c5b98debfab5f67e0328c/_.jpg', '一度死んでみた', '“神様に一番近い港町”へ弾丸旅行してきた、新宿の男と女。崖っぷちの男は、強引に連れて来た金髪の恋人に、旅の本当の目的を隠していた。...それは、実の親戚に“オレオレ詐欺”をすること。しかし…', '2020-03-14'),
(271, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/b8a33d92f1670e5b6a523530897275f900bc7f59/store/fitpad/300/400/e94c84d7e54787090dd80889189d45e768c865ec161d69667bf9bf745a7b/_.jpg', 'パリ・オペラ座バレエ・シネマ 2020 「パリ・オペラ座ダンスの饗宴」', '東京郊外の人気のない場所。心臓発作で倒れたひとりの男が死ぬ。彼は山口 慎也。仕事はネットの古本屋で、原民喜の小説と木下夕爾の詩が好きだった。 妻の亜矢子は、彼の死後、夢で慎也に会い、彼の残…', '2020-03-14'),
(272, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/9b59dd5e113d3356991dae2d1e1e4b9fde91fb20/store/fitpad/300/400/03e2287015f209dfb553ad6b6f295238289d95aaec260d8e1f203c37816f/_.jpg', 'いざなぎ暮れた。', '1968 年に大学の不正運営などに反対した学生が団結して始まった全国的な学生運動、特に最も武闘派 と言われた東大全共闘に、言葉とペンを武器にする文学者・三島由紀夫は単身で乗り込んだ―。伝説…', '2020-03-14'),
(273, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/b4a02d77be0cd3eb2a34b0de1f4b4983daa95dac/store/fitpad/300/400/8de9d73d12a65c263d02b47080fac713fefdbd83ae9e698a556cd582aa46/_.jpg', 'パラダイス・ロスト', 'プリキュアの元に、突然現れた小さくて可愛いミラクルン。とある理由から謎の敵・リフレインに狙われているミラクルンを助けるためにプリキュアが大奮闘！しかし、“永遠に明日がこない世界”に変えよう…', '2020-03-14'),
(274, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/fcd6f5cb0d662aadb8b9bc3c2900497db1f9dff0/store/fitpad/300/400/bec102c35631685451c1111e76cf8cbdebac84f36e18218beff942414fb3/_.jpg', '三島由紀夫vs東大全共闘 50年目の真実', '東日本大震災から6年がたった福島。福島第一原子力発電所から20km に位置し、全町避難となっていた広野町は、インフラの復旧や除染が進み、本格的な帰還が始まっていた。今では町民の約半数を原発…', '2020-03-14'),
(275, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/4d87d8d3c7ac5863a36341b41478142d03490e5c/store/fitpad/300/400/4cd5e2f112cf60b9a85b164b26673e6732a40942332b2cd1e65040548241/_.jpg', '映画プリキュアミラクルリープ みんなとの不思議な1日', '元ヤクザの剛太。今は恋人のバーで働いている。そんなある日、剛太のところに元妻の息子、光貴が現れる。「母が交 通事故にあって意識が戻らないんです。よかったら声をかけてみてもらえませんか」１０…', '2020-03-14'),
(276, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/47fbed0d732bb5b3e0de0971dfde5a0a49f7d5ec/store/fitpad/300/400/927131f78758964045be7208ceed3b22c8506079550cb5dd71c2aea0934b/_.jpg', '春を告げる町', '', '2020-03-14'),
(277, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/2e96c5279d0f2ee91d647bb52407c5bb39f89b1e/store/fitpad/300/400/aef6938eab6618c2c7dcbc53432cf56d47e21d1be98ac97af0e32c66f404/_.jpg', 'カゾクデッサン', '', '2020-03-14'),
(278, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/00cb7c99f07ea0112256dda668090be02406c6a8/store/fitpad/300/400/789928215c60c89e834ec059b63dacbf56b538faebd682892a361647ca0f/_.jpg', '馬三家からの手紙', '', '2020-03-14'),
(279, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/c4ad2dcfb979de41460f725d175ac7511c571f82/store/fitpad/300/400/7d78baff2054e09bd1ad25d60ca535ee241e1876517a2d8a2c9f838c072c/_.jpg', 'モルエラニの霧の中', '', '2020-03-14'),
(280, 'https://d2ueuvlup6lbue.cloudfront.net/assets/common/img_cover-placehold-633a19fbbf6951dbb8debea06f29fefcc0666e8138e79c5ffd8a486da95432ae.svg', '3年目のデビュー', '', '2020-03-14');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `coming_table`
--
ALTER TABLE `coming_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `coming_table`
--
ALTER TABLE `coming_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
