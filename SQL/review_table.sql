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
-- テーブルの構造 `review_table`
--

CREATE TABLE `review_table` (
  `id` int(12) NOT NULL,
  `jacket` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `review` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `review_table`
--

INSERT INTO `review_table` (`id`, `jacket`, `title`, `review`, `date`) VALUES
(541, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/dbf4219abaf8456245d8bb8d5aec9675b2e6e775/store/fitpad/150/210/5b6403c980f4623aec9151bdc3bea1a28b74a1e56f020b49b2972871b15f/_.jpg', '地獄の黙示録 ファイナル・カット(2019年製作の映画)', 'まるでダンテの神曲を観ていたかのような3時間。通常版をずっと観れていなかったのでこれを機にIMAXで堪能。知らなかった。あまりにも有名な数々の名言がこの映画のものだったなんて。知らなかった>>続きを読む', '2020-03-14'),
(542, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/9507c5e3f8053526625ca55ebf643855a537ac2f/store/fitpad/150/210/2ec31030d9898bb0e85a72f18461e0185ee868c0f0d7f8b589b093d4fd2e/_.jpg', 'オンリー・ザ・ブレイブ(2017年製作の映画)', 'この監督の大ファンで、今までの作品を考えると正直今作を撮るのは意外だったわけだが、今作でそのクリエイティビティの幅を見せつけられたというしかない。そしてマイルズ・テラー。本当においしい役どころを>>続きを読む', '2020-03-14'),
(543, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/9a727254db790c1d6e0ff2e50919f129e956b51e/store/fitpad/150/210/5a8cc418139bd66035330a1f90860fd2381aaae0460f30fd8fab9537ff27/_.jpg', 'スキャンダル(2019年製作の映画)', '分かりきってたけど、主演3人しかもこの3人て豪華すぎ笑　『マネー・ショート』観てこれ観ると分かるけど、監督とかじゃなくて脚本がチャールズ・ランドルフだとA CHARLES RANDOLPH FIL>>続きを読む', '2020-03-14'),
(544, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/fee572544340ad5a5c0a40a11bacd38e2c17bc43/store/fitpad/150/210/cc07007f46957e91f95978b20d9f2e188dcbfbb4fc3920f940307bfb950f/_.jpg', 'イントゥ・ザ・スカイ 気球で未来を変えたふたり(2019年製作の映画)', '2月は劇場で見るものが多過ぎたので大人しくAmazonで鑑賞。見た後に調べると案外実話と外れてる部分も大きくそうなんだーってなるが、そういうのはおいといて、ほぼ気球で空に居るだけの内容にしては普通>>続きを読む', '2020-03-14'),
(545, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/3bd2a81fdc83e3c6917e4faab89853ef693f7825/store/fitpad/150/210/5c4865a18ad566197c2777153e0f39219db86408b42225d1149f36a497c1/_.jpg', '1917 命をかけた伝令(2019年製作の映画)', 'サム・メンデス フィルムというよりロジャー・ディーキンス フィルムですねこれは！夜のシーン始まった瞬間の「あっ、スカイフォールだこれ」感で撮影監督が彼である事が分かる。全編通してダイナミックな絵>>続きを読む', '2020-03-14'),
(546, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/3d3a47a9aec3d021abdd6ef00b6e59b8dd6404e9/store/fitpad/150/210/27069a5480005471111b754ad90b9a85c24f15723355df83c1c0e506458f/_.jpg', '劇場版メイドインアビス　深き魂の黎明(2020年製作の映画)', '思い返すとこのキャラクターの少なさとシチュエーションの少なさでよく劇場版が成り立ったなと感心。少し感じた物足りなさはアビスというよりボンドルドの脅威がメインだったから笑', '2020-03-14'),
(547, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/4e330475e97e09726820f1fa881a51422ba322d9/store/fitpad/150/210/5368ed0a77f41379ea2d78b4910ae90b0e594d2704914c6d452a9bc29dac/_.jpg', 'ナイブズ・アウト／名探偵と刃の館の秘密(2019年製作の映画)', 'オリジナル作品ということにビックリ。キャップの落差にビックリ。ライアン・ジョンソン監督のSWのクレジットとの落差にビックリ。アナ・デ・アルマスの昔から頑張る娘だけど今回のラストの頑張りにビ>>続きを読む', '2020-03-14'),
(548, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/97d0c8a4c48f35054799613cf91dba6c3f6731f1/store/fitpad/150/210/f566ab67884d2ed466ee22ec8c24788190d60e7ce0b9a6a322382c8ba9ac/_.jpg', 'バッドボーイズ　フォー・ライフ(2020年製作の映画)', 'バッドボーイズバッドボーイズテケテケ〜♪やはりマイケル・ベイ師匠じゃないとギャグも破壊も物足りない！！！師匠めっちゃ出て来たけど笑', '2020-03-14'),
(549, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/2c89f5dcfc12923ba3153f21f9da82561486756a/store/fitpad/150/210/93beab1cc919f657c3e26af0969b88f4d215931dc931129170525448cf9b/_.jpg', 'キャッツ(2019年製作の映画)', 'まさかのテラフォーマーズ！テラフォーマーズは日本だろうがハリウッドだろうが無理なんだということがよく分かりました...こういうミュージカルを作ってしまうと、「いきなり歌い出だして踊る世界観に入り>>続きを読む', '2020-03-14'),
(550, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/cc8342c96edae72a8644242db324340aa5333fb7/store/fitpad/150/210/0c86e1184158e4064ac432bdcb9656921f64abd0624cdfe530a10ae01301/_.jpg', '2人のローマ教皇(2019年製作の映画)', '映画とドキュメンタリーの間のような不思議な作品。お話もさるものながら、合成祭の内容をここまで綺麗に仕上げたクオリティに感動。', '2020-03-14'),
(551, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/cf3bb07fbd93ff6d61a9074f497fa09fc8e886b1/store/fitpad/150/210/fda37030c15ea5f686905eb7a7f40e6213a38b37e8b9ce269e9868d2cc97/_.jpg', 'ジョジョ・ラビット(2019年製作の映画)', 'ワイティティの戦争ものということで、楽しみ6:心配4くらいで鑑賞。結果心配不要でしたね。冒頭、『ソー』で見せてくれた笑いのセンスそのままに気付けば、笑いあり涙あり史実ありタイカ・ワイティティあり>>続きを読む', '2020-03-14'),
(552, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/2c2852e4780a314fc527100e0d753955773a7643/store/fitpad/150/210/cca7c9e3ac096560e800fe1d6652ef2f9c3c5f78f9b126fd0fbb1560a284/_.jpg', 'リチャード・ジュエル(2019年製作の映画)', '実話だが、結末を知らずに観るのが吉。そうすることで、映画のエンタメ部分としての要素も楽しめる内容になっている。泣けるとこで泣くかどうかはそれに依る。実話ドラマとしてみるか、実話ドラマ＋サイコ>>続きを読む', '2020-03-14'),
(553, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/c4109d1a195f9c490ec160285110d1a00152a837/store/fitpad/150/210/f98a25440c59638909f9d80a87c2793262b867f2351cdd59673ccaf4a774/_.jpg', 'パラサイト 半地下の家族(2019年製作の映画)', '邦画にないもの、特に『万引き家族』にあと一歩足りなかったものがある。しかし、あと一歩足りない笑', '2020-03-14'),
(554, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/2d4e069e74f6adc6cf71682b369bf1cd9e02170f/store/fitpad/150/210/7f3fac9ba1f9ee87286fd18c538d9565d6ad384d1bae889e88b8f93b3b15/_.jpg', 'フォードvsフェラーリ(2019年製作の映画)', '一部、バットマン v ボーン でお送りしています。これほど見事に全てが詰まってる映画だったとはっ！極め付けの音楽。F1は『Truth』、24h耐久は『ル・マン66』が今後のスタンダードになる>>続きを読む', '2020-03-14'),
(555, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/401889cc2a2124afc7abcad79d84fef217d229a6/store/fitpad/150/210/64edae91312089c069d3135f0ae30703cd206c159319845f2f6d318bdb11/_.jpg', 'マリッジ・ストーリー(2019年製作の映画)', 'スカヨハ本来の演技力も久々に、主演2人の凄まじい演技力。誰と見るか、どんなタイミングで見るかでまた違った見方が出来そう。序盤の設定を軸に最後までいってくれるので、この手のものであっても凄く観やすい>>続きを読む', '2020-03-14'),
(556, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/f74b4c5b773a4bd76e2ab7940c68c78db35438d6/store/fitpad/150/210/4a4468213d282b0546683a4f2c6a01e0835b794cb8b644e17c0ac16838ad/_.jpg', 'エージェント・ウルトラ(2015年製作の映画)', 'ジェイソン・ボーン・ウルトラ', '2020-03-14'),
(557, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/33b08e2021f5cb89994f839089d697b5e9909783/store/fitpad/150/210/b2071bc90bb8d72d5a1ca3f3934ed30bac21aca9a88183b28c97b0db3135/_.jpg', 'スター・ウォーズ　スカイウォーカーの夜明け(2019年製作の映画)', 'オールスケールアップ！！良い意味はもちろん、特に悪い意味で...さすがILM最高の映像を見せてくれました。さて、問題はそれ以外。予告で分かりきっていたパルパティーンはなんだそれな目的とビリ>>続きを読む', '2020-03-14'),
(558, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/79fb06b38a27d371a62197e72fbb08e884e46f16/store/fitpad/150/210/a2f40f810875c02732f6f16c1c2fa6a6bbee1ded921796c88210b7922641/_.jpg', '６アンダーグラウンド(2019年製作の映画)', 'いつも以上に圧倒的なリアリティと破壊力と満載の映画ネタ！フォースの源が磁力だったとは...この予算感、マイケル・ベイとNetflixは最強の組み合わせかもしれない...', '2020-03-14'),
(559, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/465a2be4e962159b283ef5043dc1682045ffc3b0/store/fitpad/150/210/f9bc624a7420617ca76935c135ed8804a3693c927816b3730d9eab1ef418/_.jpg', 'アイリッシュマン(2019年製作の映画)', 'Netflix映画の強みではあるがこの内容ではやはり、長い...さすがということなのか、落ち着いて見れすぎてしまう。', '2020-03-14'),
(560, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/c62a35454f27dc335570ebfaa60467675b9ef54e/store/fitpad/150/210/278834a1bc64f68edf84e2f90fa191a4cfa39447aa4c36a0ef757801b0b6/_.jpg', 'アロハ(2015年製作の映画)', 'アロハな響きから核兵器の話になると思わなかったけど、キャメロン・クロウらしい陰謀感漂うお話でありながら、お前ら普通に言葉交わせよ！っていうギャグに落ち着いてき結びはオエな作品。', '2020-03-14'),
(561, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/be794f2398b9e89f59dcb8391c471a9079eda4f2/store/fitpad/150/210/51c994388bcec28746cd3abbd750ed0c3b976459dfa10043f3539c52d7da/_.jpg', 'わたしは、ダニエル・ブレイク(2016年製作の映画)', 'これは、映画であって映画ではない。', '2020-03-14'),
(562, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/47ee4d51fb5a0143c13372dd6f078ab81c185aba/store/fitpad/150/210/62c72aed54714a7624673bbda00fd1041ddf3077d31133a87dae2a5bd49b/_.jpg', 'ドクター・スリープ(2019年製作の映画)', '『シャイニング』の続編というより、拡張版と言うべきだろうか。『シャイニング』は好きな人にとっても決して楽しい類の映画ではなかったと思うが、その演出・設定・撮影・美術・キャラクター等々、今なお真似ら>>続きを読む', '2020-03-14'),
(563, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/f360ce42424b577d4c4b6f78f0940f11f1e3e64b/store/fitpad/150/210/474039dca0eddc1a04cbcf678ca5693768a05752195f1fa1d68dd72acfbe/_.jpg', '俺たちに明日はない(1967年製作の映画)', 'あまりに有名すぎる本作だが、実話だとは知らず。こんな2人がアイコン的存在として許されたのが大恐慌時代。まぁこの2人もだけど追う側もやりすぎだろと笑いまいち人物の背景が掴みきれず感情移入も出来な>>続きを読む', '2020-03-14'),
(564, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/46af92b400ca1b4c593c75ba3cae61911f817986/store/fitpad/150/210/d88f37458073a164602fd30b52864a66f02f2d0a4cff6d0e37c8e774353b/_.jpg', 'モンティ・パイソン・アンド・ホーリー・グレイル(1975年製作の映画)', 'これはさすがに、時間を無駄にした', '2020-03-14'),
(565, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/5a96ba599661fadf7d90491a26133efbe988be45/store/fitpad/150/210/5cbe9b588fd99b3ed1ffe96856d54b368756fc68d118cc9e6013f82d2b2e/_.jpg', 'ゾンビランド：ダブルタップ(2019年製作の映画)', '映画ファンに捧げるゾンビ映画。トールキンまで出してくれるとはっ！', '2020-03-14'),
(566, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/1b3e831b7477eac3aba3dcd8fcb531df7885b7b3/store/fitpad/150/210/db5fc4be22643ef40ecfa8181f699e59720401470d54c5f297e5d512fc4a/_.jpg', 'アナと雪の女王２(2019年製作の映画)', 'クリストフのMVシーンは★5', '2020-03-14'),
(567, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/a08e6891f71945ae110a9d25e2ab014b057b16c6/store/fitpad/150/210/3cb7e82baacc0dad1b5fbf70e77c5260f5b72b86c95a8150379be783fc1f/_.jpg', 'クレイマー、クレイマー(1979年製作の映画)', '親権問題の原点的作品。メリル・ストリープの視点で描かれても面白い作品になると思う。', '2020-03-14'),
(568, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/eddceeedec920e74c2922b0ed02eddafe2e53f4f/store/fitpad/150/210/0fc76d52c61c921abb6642a67a905b058379075f722a892ab2b8aeb81a7c/_.jpg', 'イン・ザ・トール・グラス －狂気の迷路－(2019年製作の映画)', 'これまたまたドクター・スリープに向けて。そこから更にあるか、途中からぶっ飛ぶのをやめて最後までいくかすればすげー面白いはず...', '2020-03-14'),
(569, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/20f37851719f3ded286b76df082c64d5aef77f19/store/fitpad/150/210/ade4f18708da504a023f340409b8efb7e4bb12e077fcd65e7f205d4b6ced/_.jpg', 'キング(2019年製作の映画)', 'こういうソフト面ハード面で重厚なNetflix作品をもっと作って欲しい。', '2020-03-14'),
(570, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/b603c82e9a8d881ba88ce9f7a61725b238306bed/store/fitpad/150/210/9c1f5d889e539b7ff3da0aa8682a58166dd9c7dc2d847ea2521c5e1c0d5a/_.jpg', '永遠の門 ゴッホの見た未来(2018年製作の映画)', '生前に1枚しか絵が売れなかったというゴッホ。その悲劇かのような人生をひたすらに映し出す演出かと思えば、ある種救いのような瞬間が散りばめられている。芸術の価値観を考えさせられる。ゴッホ目線を意識>>続きを読む', '2020-03-14'),
(571, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/59b18de600139321e302861b70af71c54b80f09a/store/fitpad/150/210/076a170d44a3abd2676b7e7b207c869a6d70946e9528e7af4159ce6abd1a/_.jpg', 'ターミネーター ニュー・フェイト(2019年製作の映画)', '前評判ほど悪くない。冒頭からの怒涛ド派手なアクションはどの場面も製作陣の挑戦が窺えるクオリティだし、第1作から数年経った今だから考えうる脅威に拡大させた設定も考えさせられる。要はターミネーター>>続きを読む', '2020-03-14'),
(572, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/658938d65af6a27845326fbd965b0718d2c6761c/store/fitpad/150/210/dea583ca3397b5b2a4d778c222264a586cadb10621b9570cb69ee7437636/_.jpg', 'IT／イット THE END “それ”が見えたら、終わり。(2019年製作の映画)', 'うーん、ホラーとみるかコメディとみるか、、ジョーカーがダメだった人はこっちのピエロをどうでしょう。', '2020-03-14'),
(573, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/288286ba28a60eafcb19a66736d4ddd253fd1a0d/store/fitpad/150/210/7bd8b70125efe1db4b40ce71416ca2f9978417d6dc2ddd9b6bde3e657232/_.jpg', 'ジェミニマン(2019年製作の映画)', 'はい、今年度アカデミー賞視覚効果賞おめでとう！でいいでしょう。アン・リーに期待したものそれ以上のものが見れました。3Dに関しては過去最高で次元が違うクオリティ。プラスしてハイフレームレートは今>>続きを読む', '2020-03-14'),
(574, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/00742c47f6b47fc1ed2e5a59b31f5a9d16d5bd67/store/fitpad/150/210/79e4b623db824f349ea480fc4cb1b08b275bed4a333fab3e6bd18fe4aa2f/_.jpg', 'フッド：ザ・ビギニング(2018年製作の映画)', '最初のタロンの衣装、歌い出すかと思ったよ笑(ロケットマン)', '2020-03-14'),
(575, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/7bd1951cd3898f54a19611724e06b09b10eba36b/store/fitpad/150/210/ff4d123f8f4da0d637c70739a7f775fe0cf5373349561f2b6c6229879d67/_.jpg', 'マレフィセント2(2019年製作の映画)', 'よくあるディズニープリンセスフェアリーテイルではなく、ファンタジースペクタクルとして見事昇華した良作！ありがちな尺の足りなさを行間の読みやすい編集でまとめているのも素晴らしい！', '2020-03-14'),
(576, 'https://d2ueuvlup6lbue.cloudfront.net/attachments/97b7c92f2bff4a24eabb0a97164c6c52ee5211af/store/fitpad/150/210/10826c4d57392edc365b93067ff465af9a93779db6572b1d8debc90f883e/_.jpg', 'ダンサー・イン・ザ・ダーク(2000年製作の映画)', 'なんか色々受け入れられない作品', '2020-03-14');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `review_table`
--
ALTER TABLE `review_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
