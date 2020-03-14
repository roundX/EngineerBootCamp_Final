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
-- テーブルの構造 `url_table`
--

CREATE TABLE `url_table` (
  `id` int(12) NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `url_table`
--

INSERT INTO `url_table` (`id`, `url`, `date`) VALUES
(131, 'https://filmarks.com/movies/83796/theaters', '2020-03-14'),
(132, 'https://filmarks.com/movies/83342/theaters', '2020-03-14'),
(133, 'https://filmarks.com/movies/64708/theaters', '2020-03-14'),
(134, 'https://filmarks.com/movies/89612/theaters', '2020-03-14'),
(135, 'https://filmarks.com/movies/85560/theaters', '2020-03-14'),
(136, 'https://filmarks.com/movies/80819/theaters', '2020-03-14'),
(137, 'https://filmarks.com/movies/82082/theaters', '2020-03-14'),
(138, 'https://filmarks.com/movies/81857/theaters', '2020-03-14'),
(139, 'https://filmarks.com/movies/79297/theaters', '2020-03-14'),
(140, 'https://filmarks.com/movies/84124/theaters', '2020-03-14'),
(141, 'https://filmarks.com/movies/84566/theaters', '2020-03-14'),
(142, 'https://filmarks.com/movies/58355/theaters', '2020-03-14'),
(143, 'https://filmarks.com/movies/82051/theaters', '2020-03-14'),
(144, 'https://filmarks.com/movies/73709/theaters', '2020-03-14'),
(145, 'https://filmarks.com/movies/84020/theaters', '2020-03-14'),
(146, 'https://filmarks.com/movies/60905/theaters', '2020-03-14'),
(147, 'https://filmarks.com/movies/86498/theaters', '2020-03-14'),
(148, 'https://filmarks.com/movies/21550/theaters', '2020-03-14'),
(149, 'https://filmarks.com/movies/83065/theaters', '2020-03-14'),
(150, 'https://filmarks.com/movies/79241/theaters', '2020-03-14');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `url_table`
--
ALTER TABLE `url_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `url_table`
--
ALTER TABLE `url_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
