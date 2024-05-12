-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 04:58 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `playlist_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `content_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `user_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `tutor_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `comment` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('Xel2xuE8h1e3GjdRI6mW', 'JCe5qS4zuR3oNYTqWLMN', 'wgNf33yKQlyg4rFg9k2A', 'pPI9gDjZnlNpfg7nBxKA', 'thank you for your g', '2022-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `tutor_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `playlist_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `video` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `thumb` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'deactive',
  `pdf_file` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`, `pdf_file`) VALUES
('JCe5qS4zuR3oNYTqWLMN', 'pPI9gDjZnlNpfg7nBxKA', '8E9UBa1zTSwx18Ru5nVM', 'Gear box', 'Automobile Tec ', 'ZUs3KQAOiYaSPKN1D2gE.mp4', 'OLsrfw3Oe5b1tXEysY8V.png', '2022-11-29', 'active', 'wyAeODasrk8bCyAMk2UU.pdf'),
('YDmGDHcqDnjAW9wnQLUG', 'pPI9gDjZnlNpfg7nBxKA', '8E9UBa1zTSwx18Ru5nVM', 'Water Filter ', 'its civil engineering part', 'TDXqlAJNUK1bUSEwBuzO.mp4', 'qRXkRB3Iat9ln2KswgRn.png', '2022-11-29', 'active', 'DWPOtq0SlKOYQImF4PRl.pdf'),
('DoHAB9SFgu3m4Bz5inOP', 'pPI9gDjZnlNpfg7nBxKA', '8E9UBa1zTSwx18Ru5nVM', 'Finishing', 'it&#39;s a civil engineering part', '4z33nrHQIpovb6in4gzl.mp4', 'Pj6q8OQzXytk6NBXE9Vu.png', '2022-11-29', 'active', 'gD74psA8Id5PkpFapJFu.pdf'),
('9G4easc9nvo42MjvxkSx', 'pPI9gDjZnlNpfg7nBxKA', 'BC8mq67W9Sbahif2oHUo', 'unit-01 Finishing', 'civil engineering', 'Zq39AYZgEz12QkhX0j2J.', 'XFM4kLAPvpyR2sbG2nQi.jpg', '2022-11-29', 'active', 'Eaefxdq1CVjIlFouz37h.pdf'),
('4soEyxxXVyewy6hxCNlS', 'pPI9gDjZnlNpfg7nBxKA', 'BC8mq67W9Sbahif2oHUo', 'unit-02Gearbox', 'it is automobile part', 'YGwBPCj6lKuHunufdxnq.', 'xIGzDah7ITog7GSAr8gn.jpg', '2022-11-30', 'active', '8z4BQd6HRaUNV6ACkeJf.pdf'),
('16cKkYYj6oZFzqWslQes', 'pPI9gDjZnlNpfg7nBxKA', 'BC8mq67W9Sbahif2oHUo', 'unit-03 Water Filtering', 'it is a civil engineering part', 'SUHJduNl15i6bZjpvTw1.', 'v75JWyTbV4kgCROThMoD.jpg', '2022-11-30', 'active', 'pvu5dcWlzHCEc6S32ZgQ.pdf'),
('Elmoj0l8JxVtoD9ak55a', 'pPI9gDjZnlNpfg7nBxKA', 'BC8mq67W9Sbahif2oHUo', 'unit-04 Quantity Survey', 'it is a civil engineering part', 'pf7v9PRuzdg6YDurFvjD.', 'rLwDJjlTeCX2XQYDr7qn.jpg', '2022-11-30', 'active', 'qcIXMTnE8UfBgIhGAPxS.pdf'),
('NAj8icogoGrpKMLnkMuy', 'pPI9gDjZnlNpfg7nBxKA', 'vSW5izZYFyg4ZaAZ5qRw', '2018-G.C.E.A/L', 'past paper(E-Tec)', 'PXMOO0M6pXT7cQDMk5kg.', 'IoyQlZwOARtblJ7iL2nG.jpg', '2022-11-30', 'active', 'tJolnYTQQtAOaC1dOxty.pdf'),
('QhbN17lEcxilWsd8gQmc', 'pPI9gDjZnlNpfg7nBxKA', 'vSW5izZYFyg4ZaAZ5qRw', '2019-G.C.E.A/L', 'past paper(E-Tec)', 'VIkgabwBJHuSrkOj7qkq.', 'Yn9gUCHfUJzw2s1hn2qJ.jpg', '2022-11-30', 'active', 'sTvzJZL63ST110pIGLI4.pdf'),
('1EX9zeqLk0Sf6kBaAct4', 'pPI9gDjZnlNpfg7nBxKA', 'vSW5izZYFyg4ZaAZ5qRw', '2020-G.C.E.A/L', 'past paper(E-Tec)', 'vyApTcTAQbpa9UIC2nyH.', 'kZel2C0oNPVWdiNOUnOS.jpg', '2022-11-30', 'active', 'XPURGDGVbk1V2G0ZHPBK.pdf'),
('Agvc53PaGtoU6dY0OTXa', 'pPI9gDjZnlNpfg7nBxKA', 'vSW5izZYFyg4ZaAZ5qRw', '2021-G.C.E.A/L', 'past paper(E-Tec)', 'sSpwYadwFcrUeC3RPKFG.', 'nfRZaNo7m0TtFthTgHSt.jpg', '2022-11-30', 'active', 'BBhNpzh4IWN3DOh1HsQi.pdf'),
('hSxV2H6Zav1COzzFduH3', 'pPI9gDjZnlNpfg7nBxKA', 'l6eMNUP2k0nQRIWCSF0V', 'unit-01 Network', 'networking ', 'MxJ1nWWQMB3eLXotif2n.', 'FmLDExYybQokAQpJQYVe.jpg', '2022-12-04', 'active', '34OMPIWgM2IStp9yKcH6.pdf'),
('KDgcFyTneg5OcPzE5w6R', 'pPI9gDjZnlNpfg7nBxKA', 'l6eMNUP2k0nQRIWCSF0V', 'unit-02 IOT', 'internet of things', 'dDqyP452qzHUZxES3phV.', 'P3q4RYWauPYH6KvvMWBO.jpg', '2022-12-04', 'active', 'OWWBsfGlWSoMIy1aWbbu.pdf'),
('Fyxbqjfn18UvxiqswyDh', 'pPI9gDjZnlNpfg7nBxKA', 'l6eMNUP2k0nQRIWCSF0V', 'ICT Text Book', 'ICT text book part -01', 'USsnF5q2Jgjy2g9nIytD.', 'pnxUP1nDjSLfAn5YkeCp.jpg', '2022-12-04', 'active', '2cf0idzBNX3OZT5SI2X3.pdf'),
('r7DDKvLznYKQz8wK0Tvz', 'pPI9gDjZnlNpfg7nBxKA', 'MFEs3F0OpooEgz6Zbyyu', '2019-G.C.E.A/L', 'ICT', 'mMYvUMomHyovES0vO4kg.', 'bURDC6cMPzVdP2PWMa4q.jpg', '2022-12-04', 'active', 'O28GOYsbgyTV4htM7LvH.pdf'),
('uULD17MmsJmUhhH7pVqP', 'pPI9gDjZnlNpfg7nBxKA', 'MFEs3F0OpooEgz6Zbyyu', '2020-G.C.E.A/L', 'ICT', '9V2o4e5ook8zlZW5p16f.', 'liEphntiLCqCTeIUKKGo.jpg', '2022-12-04', 'active', 'AulyR5faE5UICFuZJY03.pdf'),
('FENyHU6hYL6bbjFkj1qW', 'pPI9gDjZnlNpfg7nBxKA', 'MFEs3F0OpooEgz6Zbyyu', '2021-G.C.E.A/L', 'ICT', 'xgr1TaOAiiK8yh14Ptix.', 'xS7jiIiwnj1XIXO3a5YX.jpg', '2022-12-04', 'active', 'qZ7GbcaERNsP20FfjmH8.pdf'),
('vvQkHjSeR42Z9etQjGpn', 'pPI9gDjZnlNpfg7nBxKA', 'xW1FeqOu196srPdLQSiD', 'ER Diagram', 'How to draw the ER diagram', '7OV5hzzhKD55qYzY1k6y.mp4', '7FEwclVukRx3y2kSxtlu.png', '2022-12-04', 'active', 'XEsjIYXamNXWjmw9BIKT.pdf'),
('Oca0SEx9zH5XPDiuNsNm', 'pPI9gDjZnlNpfg7nBxKA', 'xW1FeqOu196srPdLQSiD', 'Generation of Computer', 'generation of computer', '8kQG5wZrlGebqoYGR6P7.mp4', 'oYxtotfL6El3Oob15ukl.png', '2022-12-04', 'active', 'xUxFflRC6RLu5TXj7Wcn.pdf'),
('OglU0opONO23RAlPij0o', 'pPI9gDjZnlNpfg7nBxKA', 'xW1FeqOu196srPdLQSiD', 'Relational Data Base', 'How to draw data base', '0YXlPWZFzK3lo06Yzaly.mp4', 'XMDHPo7yV9SNGNLsfche.png', '2022-12-04', 'active', 'DGIHj5piai2uB2MLT6CT.pdf'),
('7zDvP9TAcKOlj5FTxo1r', 'pPI9gDjZnlNpfg7nBxKA', 'ZaQqyXjMIeVWmd7Y0KFt', '2018-G.C.E.A/L', 'SFT', 'Y6pSKqC1uYZM0weCv8lr.', 'xMKLrX0YgoHQxppflTI2.jpg', '2022-12-04', 'active', 'KAIrfjzg3YErDpvXjnAW.pdf'),
('gTilpQXHlJFphAmIfdAH', 'pPI9gDjZnlNpfg7nBxKA', 'ZaQqyXjMIeVWmd7Y0KFt', '2019-G.C.E.A/L', 'SFT', 'yXIPzGDdUyW6tPE0MV3Q.', 'a1wTSgzAd7JhVopQemxD.jpg', '2022-12-04', 'active', 'MgH2OAjg1KK5uUCFVsFj.pdf'),
('UBhcXvhr6VkY0Jk9FWTz', 'pPI9gDjZnlNpfg7nBxKA', 'ZaQqyXjMIeVWmd7Y0KFt', '2020-G.C.E.A/L', 'SFT', '9PNmjXIpdYUNRIu4kFjn.', 'yt5Kr1TW0SmsaFkbCVlU.jpg', '2022-12-04', 'active', 'DCbWjjMADc1Ayr7Mt90u.pdf'),
('0VXlvOOTPz63wgtXrYhO', 'pPI9gDjZnlNpfg7nBxKA', 'EbDFYPGo7WMcRwRuSKtH', 'Text Book ( Math s )', 'Part 01', 'ggNHq8Fvyvxj1DZ28dfd.', 'toGb4BzwLKegfobmVYqb.jpg', '2022-12-04', 'active', 'CS4WlRKQmVrVTHH8bMmL.pdf'),
('D4b9hGt0LGRHMeH1VLsV', 'pPI9gDjZnlNpfg7nBxKA', 'EbDFYPGo7WMcRwRuSKtH', 'Text Book (Bio)', 'text book', 'WWatnA8Te1UF7bJPbEZY.', 'k4ZEhfcjSY7zh8EikuXw.jpg', '2022-12-04', 'active', 'EWsmMSUZC9TLhJ4fxtof.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `tutor_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `content_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('wgNf33yKQlyg4rFg9k2A', 'pPI9gDjZnlNpfg7nBxKA', 'QhbN17lEcxilWsd8gQmc');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `tutor_id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `thumb` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('BC8mq67W9Sbahif2oHUo', 'pPI9gDjZnlNpfg7nBxKA', 'Notes(E-Tec)', 'Engineering Technology', 'UC0Jnaj39foHgSOH1hsB.jpg', '2022-11-29', 'active'),
('vSW5izZYFyg4ZaAZ5qRw', 'pPI9gDjZnlNpfg7nBxKA', 'Past Papers(E-Tec)', 'Engineering Technology', '1r7WtxFvsKozvliHicqz.jpg', '2022-11-29', 'active'),
('8E9UBa1zTSwx18Ru5nVM', 'pPI9gDjZnlNpfg7nBxKA', 'Video(E-Tec)', 'Engineering Technology', 'ytOBFMRHCyZQNbEa5kkF.jpg', '2022-11-29', 'active'),
('EbDFYPGo7WMcRwRuSKtH', 'pPI9gDjZnlNpfg7nBxKA', 'Notes (SFT)', 'Science for technology', 'eeTf60ZbfCh2BgeyP2vx.png', '2022-12-04', 'active'),
('ZaQqyXjMIeVWmd7Y0KFt', 'pPI9gDjZnlNpfg7nBxKA', 'past papers(SFT)', 'Science For Technology', '8qo6PdQS4QreOddjvbCH.png', '2022-12-04', 'active'),
('l6eMNUP2k0nQRIWCSF0V', 'pPI9gDjZnlNpfg7nBxKA', 'Notes(ICT)', 'Information Communication Technology', 'wjHi3hWM8tRc2OSuUm8M.png', '2022-12-04', 'active'),
('MFEs3F0OpooEgz6Zbyyu', 'pPI9gDjZnlNpfg7nBxKA', 'Past Papers(ICT)', 'Information Communication Technology', 'yzKxwWj0J2rLe2jsYDkt.png', '2022-12-04', 'active'),
('xW1FeqOu196srPdLQSiD', 'pPI9gDjZnlNpfg7nBxKA', 'Video (ICT)', 'Information Communication Technology', 'JqqSqtVYtwOKJB1zyHwJ.png', '2022-12-04', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `profession` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('pPI9gDjZnlNpfg7nBxKA', 'vihara', 'Admin', 'sandeepaninv@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'mg4VcEgQhot9vfC77bpF.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('wgNf33yKQlyg4rFg9k2A', 'shehara', 'imandiviha@gmail.com', 'd2f75e8204fedf2eacd261e2461b2964e3bfd5be', '4raF6lrHscvfg6qgkNMH.png'),
('r0FEcPqn8ZaG9QeMmnXr', 'sheha', 'viha@gmail.coom', 'c455582f41f589213a7d34ccb3954c67476077da', '50FSe81blhYUH1yeqRoh.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
