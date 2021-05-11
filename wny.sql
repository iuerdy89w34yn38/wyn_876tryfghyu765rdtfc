-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2021 at 08:55 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wny`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `role`) VALUES
(2, 'hamza56', 'admin990', '');

-- --------------------------------------------------------

--
-- Table structure for table `associates`
--

DROP TABLE IF EXISTS `associates`;
CREATE TABLE IF NOT EXISTS `associates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `associates`
--

INSERT INTO `associates` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'Associates', 'associates', 'Careers', 'Careers', '7833dfb1d1a2f282237730db5d5a20211.png', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `pid`, `pslug`, `name`, `slug`, `metak`, `metad`, `cover`, `post`, `ordr`) VALUES
(17, 2, 'pages', 'Car Player X5556', 'car-player-x5556', 'Car Player X5556', 'Car Player X5556', '12cc2438ad0ec779ee4049b013bb38d61.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n', 0),
(18, 2, 'pages', 'The Best Restutrants in Lahore', 'the-best-restutrants-in-lahore', 'The Best Restutrants in Lahore', 'The Best Restutrants in Lahore', 'fb3a88c9001f3695b9281ea5cd03b5601.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n', 1),
(19, 2, 'pages', 'The Most Afforable Displays', 'the-most-afforable-displays', 'The Most Afforable Displays', 'The Most Afforable Displays', '15e6b2f5ed3ec1ea4e4fab04b83ebc151.png', '<p>Lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n', 3),
(20, 2, 'pages', 'USB Converting to Type C', 'usb-converting-to-type-c', 'USB Converting to Type C', 'USB Converting to Type C', '77a346a04fe5ba9c05e109d3257bcbd41.png', '<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n', 4);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(8, 14, 'add-brands', 'Nestle', '7283c441717071782b8817389f0d928b1.png', '', 3, 1),
(6, 14, 'add-brands', 'Coca Cola', 'a003acfa5c231245fe989a24f4bc02fd1.png', '', 1, 1),
(7, 14, 'add-brands', 'Peek Freans', '1c58fc466b5348942a323ca2fb4202ad1.png', '', 2, 1),
(9, 14, 'add-brands', 'Pizza Hut', '9fe5706787adcb0a4f26da4a2495af1e1.png', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brandscat`
--

DROP TABLE IF EXISTS `brandscat`;
CREATE TABLE IF NOT EXISTS `brandscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brandscat`
--

INSERT INTO `brandscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(14, 'Brands', 'add-brands', '7e69217aed0e94170b03198627fb61491.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'Careers', 'careers', 'Careers', 'Careers', '7833dfb1d1a2f282237730db5d5a20211.png', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `ctval` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(22) NOT NULL,
  PRIMARY KEY (`ctval`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`ctval`, `city`) VALUES
(1, 'Abdul Hakeem'),
(2, 'Abottabad'),
(3, 'Adda jahan khan'),
(4, 'Adda shaiwala'),
(5, 'Ahmed Pur East'),
(6, 'Ahmedpur Lamma'),
(7, 'Akhora khattak'),
(8, 'Ali chak'),
(9, 'Alipur Chatta'),
(10, 'Allahabad'),
(11, 'Amangarh'),
(12, 'Arifwala'),
(13, 'Attock'),
(14, 'Babarloi'),
(15, 'Babri banda'),
(16, 'Badin'),
(17, 'Bahawal Nagar'),
(18, 'Balakot'),
(19, 'Bannu'),
(20, 'Baroute'),
(21, 'Basirpur'),
(22, 'Basti Shorekot'),
(23, 'Bat khela'),
(24, 'Batang'),
(25, 'Bhai pheru'),
(26, 'Bhakkar'),
(27, 'Bhalwal'),
(28, 'Bhan saeedabad'),
(29, 'Bhawalpur'),
(30, 'Bhera'),
(31, 'Bhikky'),
(32, 'Bhimber'),
(33, 'Bhirya road'),
(34, 'Bhuawana'),
(35, 'Buchay key'),
(36, 'Burewala'),
(37, 'Chacklala'),
(38, 'Chaininda'),
(39, 'Chak 4 b c'),
(40, 'Chak 46'),
(41, 'Chak jamal'),
(42, 'Chak jhumra'),
(43, 'Chak Shahzad'),
(44, 'Chaksawari'),
(45, 'Chakwal'),
(46, 'Charsadda'),
(47, 'Chashma'),
(48, 'Chawinda'),
(49, 'Chichawatni'),
(50, 'Chiniot'),
(51, 'Chishtian'),
(52, 'Chitral'),
(53, 'Chohar jamali'),
(54, 'Choppar hatta'),
(55, 'Chowha saidan shah'),
(56, 'Chowk azam'),
(57, 'Chowk mailta'),
(58, 'Chowk munda'),
(59, 'Chunian'),
(60, 'D.G.Khan'),
(61, 'Dadakhel'),
(62, 'Dadu'),
(63, 'Dadyal Ak'),
(64, 'Daharki'),
(65, 'Dandot'),
(66, 'Dargai'),
(67, 'Darya khan'),
(68, 'Daska'),
(69, 'Daud khel'),
(70, 'Daulatpur'),
(71, 'Deh pathaan'),
(72, 'Depal pur'),
(73, 'Dera Allah Yar'),
(74, 'Dera ismail khan'),
(75, 'Dera murad jamali'),
(76, 'Dera nawab sahib'),
(77, 'Dhatmal'),
(78, 'Dhoun kal'),
(79, 'Digri'),
(80, 'Dijkot'),
(81, 'Dina'),
(82, 'Dinga'),
(83, 'Dir'),
(84, 'Doaaba'),
(85, 'Doltala'),
(86, 'Domeli'),
(87, 'Donga Bonga'),
(88, 'Dudial'),
(89, 'Dunia Pur'),
(90, 'Eminabad'),
(91, 'Esa Khel'),
(92, 'Faisalabad'),
(93, 'Faqirwali'),
(94, 'Farooqabad'),
(95, 'Fateh Jang'),
(96, 'Fateh pur'),
(97, 'Feroz walla'),
(98, 'Feroz watan'),
(99, 'Ferozwatowan'),
(100, 'Fiza got'),
(101, 'Fort Abbass'),
(102, 'Gadoon amazai'),
(103, 'Gaggo mandi'),
(104, 'Gakhar mandi'),
(105, 'Gambat'),
(106, 'Gambet'),
(107, 'Garh maharaja'),
(108, 'Garh more'),
(109, 'Garhi yaseen'),
(110, 'Gari habibullah'),
(111, 'Gari mori'),
(112, 'Gharo'),
(113, 'Ghazi'),
(114, 'Ghotki'),
(115, 'Gilgit'),
(116, 'Gohar ghoushti'),
(117, 'Gojar khan'),
(118, 'Gojra'),
(119, 'Goth Machi'),
(120, 'Goular khel'),
(121, 'Guddu'),
(122, 'Gujar Khan'),
(123, 'Gujranwala'),
(124, 'Gujrat'),
(125, 'Gwadar'),
(126, 'Hafizabad'),
(127, 'Hala'),
(128, 'Hangu'),
(129, 'Harappa'),
(130, 'Hari pur'),
(131, 'Hariwala'),
(132, 'Haroonabad'),
(133, 'Hasilpur'),
(134, 'hamza abdal'),
(135, 'Hattar'),
(136, 'Hattian'),
(137, 'Hattian lawrencepur'),
(138, 'Havali Lakhan'),
(139, 'Hawilian'),
(140, 'Hayatabad'),
(141, 'Hazro'),
(142, 'Head marala'),
(143, 'Hub'),
(144, 'Hub-Balochistan'),
(145, 'Hujra Shah Mukeem'),
(146, 'Hunza'),
(147, 'Hyderabad'),
(148, 'Iskandarabad'),
(149, 'Jacobabad'),
(150, 'Jahaniya'),
(151, 'Jaja abasian'),
(152, 'Jalalpur Jattan'),
(153, 'Jalalpur Pirwala'),
(154, 'Jampur'),
(155, 'Jamrud road'),
(156, 'Jamshoro'),
(157, 'Jan pur'),
(158, 'Jand'),
(159, 'Jandanwala'),
(160, 'Jaranwala'),
(161, 'Jatlaan'),
(162, 'Jatoi'),
(163, 'Jauharabad'),
(164, 'Jehangira'),
(165, 'Jehlum'),
(166, 'Jhal Magsi'),
(167, 'Jhand'),
(168, 'Jhang'),
(169, 'Jhatta bhutta'),
(170, 'Jhudo'),
(171, 'Jin Pur'),
(172, 'K.N. Shah'),
(173, 'Kabirwala'),
(174, 'Kacha khooh'),
(175, 'Kahuta'),
(176, 'Kakul'),
(177, 'Kakur town'),
(178, 'Kala bagh'),
(179, 'Kala shah kaku'),
(180, 'Kalaswala'),
(181, 'Kallar Kahar'),
(182, 'Kallar Saddiyian'),
(183, 'Kallur kot'),
(184, 'Kamalia'),
(185, 'Kamalia musa'),
(186, 'Kamber ali khan'),
(187, 'Kameer'),
(188, 'Kamoke'),
(189, 'Kamra'),
(190, 'Kandh kot'),
(191, 'Kandiaro'),
(192, 'Karak'),
(193, 'Karoor pacca'),
(194, 'Karore lalisan'),
(195, 'Kashmir'),
(196, 'Kashmore'),
(197, 'Kasur'),
(198, 'Kazi ahmed'),
(199, 'Khair Pur Mirs'),
(200, 'Khairpur'),
(201, 'Khan Bela'),
(202, 'Khan qah sharif'),
(203, 'Khandabad'),
(204, 'Khanewal'),
(205, 'Khangarh'),
(206, 'Khanqah dogran'),
(207, 'Khanqah sharif'),
(208, 'Kharian'),
(209, 'Khebar'),
(210, 'Khewra'),
(211, 'Khoski'),
(212, 'Khudian Khas'),
(213, 'Khurian wala'),
(214, 'Khurrianwala'),
(215, 'Khushab'),
(216, 'Khushal kot'),
(217, 'Khuzdar'),
(218, 'Klaske'),
(219, 'Kohat'),
(220, 'Kot addu'),
(221, 'Kot bunglow'),
(222, 'Kot ghulam mohd'),
(223, 'Kot mithan'),
(224, 'Kot Momin'),
(225, 'Kot radha kishan'),
(226, 'Kotla'),
(227, 'Kotla arab ali khan'),
(228, 'Kotla jam'),
(229, 'Kotla Pathan'),
(230, 'Kotly Ak'),
(231, 'Kotly Loharana'),
(232, 'Kotri'),
(233, 'Kumbh'),
(234, 'Kundina'),
(235, 'Kunjah'),
(236, 'Kunri'),
(237, 'Laki marwat'),
(238, 'Lala musa'),
(239, 'Lala rukh'),
(240, 'Laliah'),
(241, 'Lalshanra'),
(242, 'Larkana'),
(243, 'Lasbella'),
(244, 'Lawrence pur'),
(245, 'Layya'),
(246, 'Liaqat Pur'),
(247, 'Lodhran'),
(248, 'Lower Dir'),
(249, 'Ludhan'),
(250, 'Madina'),
(251, 'Makli'),
(252, 'Malakand Agency'),
(253, 'Malikwal'),
(254, 'Mamu kunjan'),
(255, 'Mandi bahauddin'),
(256, 'Mandra'),
(257, 'Manga mandi'),
(258, 'Mangal sada'),
(259, 'Mangi'),
(260, 'Mangla'),
(261, 'Mangowal'),
(262, 'Manoabad'),
(263, 'Mansahra'),
(264, 'Mardan'),
(265, 'Mari indus'),
(266, 'Mastoi'),
(267, 'Matli'),
(268, 'Mehar'),
(269, 'Mehmood kot'),
(270, 'Mehrabpur'),
(271, 'Melsi'),
(272, 'Mian Channu'),
(273, 'Mian Wali'),
(274, 'Minchanaabad'),
(275, 'Mingora'),
(276, 'Mir ali'),
(277, 'Miran shah'),
(278, 'Mirpur A.K.'),
(279, 'Mirpur khas'),
(280, 'Mirpur mathelo'),
(281, 'Mithi'),
(282, 'Mitiari'),
(283, 'Mohen jo daro'),
(284, 'More kunda'),
(285, 'Morgah'),
(286, 'Moro'),
(287, 'Mubarik pur'),
(288, 'Multan'),
(289, 'Muridkay'),
(290, 'Murree'),
(291, 'Musafir khana'),
(292, 'Mustung'),
(293, 'Muzaffar Gargh'),
(294, 'Muzaffarabad'),
(295, 'Nankana sahib'),
(296, 'Narang mandi'),
(297, 'Narowal'),
(298, 'Naseerabad'),
(299, 'Naukot'),
(300, 'Naukundi'),
(301, 'Nawabshah'),
(302, 'New saeedabad'),
(303, 'Nilore'),
(304, 'Noor kot'),
(305, 'Nooriabad'),
(306, 'Noorpur nooranga'),
(307, 'Noshero Feroze'),
(308, 'Noudero'),
(309, 'Nowshera'),
(310, 'Nowshera cantt'),
(311, 'Nowshera Virka'),
(312, 'Okara'),
(313, 'Other'),
(314, 'Padidan'),
(315, 'Pak china fertilizer'),
(316, 'Pak pattan sharif'),
(317, 'Panjan kisan'),
(318, 'Panjgoor'),
(319, 'Panno Aqil'),
(320, 'Panu Aqil'),
(321, 'Pasni'),
(322, 'Pasroor'),
(323, 'Pattoki'),
(324, 'Phagwar'),
(325, 'Phalia'),
(326, 'Phool nagar'),
(327, 'Piaro goth'),
(328, 'Pind Dadan Khan'),
(329, 'Pindi Bhattiya'),
(330, 'Pindi bhohri'),
(331, 'Pindi gheb'),
(332, 'Piplan'),
(333, 'Pir mahal'),
(334, 'Pishin'),
(335, 'Qalandarabad'),
(336, 'Qamber Ali Khan'),
(337, 'Qasba gujrat'),
(338, 'Qazi ahmed'),
(339, 'Qila Deedar Singh'),
(340, 'Quaid Abad'),
(341, 'Quetta'),
(342, 'Rabwah'),
(343, 'Rahim Yar Khan'),
(344, 'Rahwali'),
(345, 'Raiwind'),
(346, 'Rajana'),
(347, 'Rajanpur'),
(348, 'Rangoo'),
(349, 'Ranipur'),
(350, 'Rato Dero'),
(351, 'Rawala kot'),
(352, 'Rawat'),
(353, 'Renala khurd'),
(354, 'Risalpur'),
(355, 'Rohri'),
(356, 'Sadiqabad'),
(357, 'Sagri'),
(358, 'Sahiwal'),
(359, 'Saidu sharif'),
(360, 'Sajawal'),
(361, 'Sakhi Sarwar'),
(362, 'Samanabad'),
(363, 'Sambrial'),
(364, 'Samma satta'),
(365, 'Sanghar'),
(366, 'Sanghi'),
(367, 'Sangla Hills'),
(368, 'Sangote'),
(369, 'Sanjarpur'),
(370, 'Sanjwal'),
(371, 'Sara e naurang'),
(372, 'Sara-E-Alamgir'),
(373, 'Sargodha'),
(374, 'Satiayana'),
(375, 'Sawabi'),
(376, 'Sehar baqlas'),
(377, 'Sehwan Sharif'),
(378, 'Sekhat'),
(379, 'Serai alamgir'),
(380, 'Shadiwal'),
(381, 'Shah kot'),
(382, 'Shahdad kot'),
(383, 'Shahdara'),
(384, 'Shahpur chakar'),
(385, 'Shahpur Saddar'),
(386, 'Sheikhupura'),
(387, 'Shakargarh'),
(388, 'Shamsabad'),
(389, 'Shankiari'),
(390, 'Shedani sharif'),
(391, 'Shehdadpur'),
(392, 'Shemier'),
(394, 'Shikar pur'),
(395, 'Shorekot Cantt'),
(396, 'Shorkot'),
(397, 'Shuja Abad'),
(398, 'Sialkot'),
(399, 'Sibi'),
(400, 'Sihala'),
(401, 'Sikandarabad'),
(402, 'Sillanwali'),
(403, 'Sita road'),
(404, 'Skardu'),
(405, 'Skrand'),
(406, 'Sohawa'),
(407, 'Sohawa district daska'),
(408, 'Sukkur'),
(409, 'Sumandari'),
(410, 'Swat'),
(411, 'Swatmingora'),
(412, 'Takhtbai'),
(413, 'Talagang'),
(414, 'Talamba'),
(415, 'Talhur'),
(416, 'Tandiliyawala'),
(417, 'Tando adam'),
(418, 'Tando Allah Yar'),
(419, 'Tando jam'),
(420, 'Tando Muhammad Khan'),
(421, 'Tank'),
(422, 'Tarbela'),
(423, 'Tarmatan'),
(424, 'Tatlay Wali'),
(425, 'Taunsa sharif'),
(426, 'Taxila'),
(427, 'Tharo shah'),
(428, 'Thatta'),
(429, 'Theing jattan more'),
(430, 'Thull'),
(431, 'Tibba sultanpur'),
(432, 'Toba Tek Singh'),
(433, 'Topi'),
(434, 'Toru'),
(435, 'Tranda Muhammad Pannah'),
(436, 'Turbat'),
(437, 'Ubaro'),
(438, 'Ubauro'),
(439, 'Ugoke'),
(440, 'Ukba'),
(441, 'Umer Kot'),
(442, 'Upper deval'),
(443, 'Usta Muhammad'),
(444, 'Vehari'),
(445, 'Village Sunder'),
(446, 'Wah cantt'),
(447, 'Wahi hassain'),
(448, 'Wahn Bachran'),
(449, 'Wan radha ram'),
(450, 'Warah'),
(451, 'Warburton'),
(452, 'Wazirabad'),
(453, 'Yazman mandi'),
(454, 'Zafarwal'),
(455, 'Zahir Peer'),
(456, 'Lahore'),
(457, 'Karachi'),
(458, 'Islamabad'),
(459, 'Rawalpindi'),
(460, 'Peshawar');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(27, 14, 'add-clients', 'hello', '6d92ddfe8519de07c4635c2d5fbbce701.png', 'www.hamzapervaiz.com', 9, 1),
(28, 14, 'add-clients', 'Best in Class', '687311a399f64d866b7413a4d6e543911.png', 'www.hamzapervaiz.com', 3, 1),
(29, 14, 'add-clients', 'Honda', '79dcf7757be1d7f2f727f44960dca2001.png', 'www.lol.123', 1, 1),
(30, 14, 'add-clients', 'Name', 'ae3eb7745aedc87e61c442292ed6a0921.png', '112.qlol.q12', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientscat`
--

DROP TABLE IF EXISTS `clientscat`;
CREATE TABLE IF NOT EXISTS `clientscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientscat`
--

INSERT INTO `clientscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(14, 'Clients', 'add-clients', '1a242f37060cac2e1e56b05369ac96e61.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` text,
  `logo` text,
  `phone` text,
  `email` text,
  `address` text,
  `gmaps` text,
  `cover` text,
  `post` text,
  `fpost` text,
  `facebook` text,
  `twitter` text,
  `insta` text,
  `youtube` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `sitename`, `logo`, `phone`, `email`, `address`, `gmaps`, `cover`, `post`, `fpost`, `facebook`, `twitter`, `insta`, `youtube`) VALUES
(1, 'WNY Professional Supplies Inc', '344c0d64300afe8dd3dc559c059f3b481.png', '1866 go go ize (46 46 493), 716 236 7894,', 'company@email.com', 'Company, Lahore. (Pakistan).                                  ', 'Map Code             ', 'b83d69d563a0d0469c59dbfe1cec621f1.png', '<p>test</p>\r\n', 'WNY PSI carries a complete range of quality Tattoo studio supplies. \r\nWe have 1000s of satisfied clients, \r\nCan you be one of them ?\r\nTry us, if you have not already. ', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.instagram.com', 'http://www.youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
CREATE TABLE IF NOT EXISTS `field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `desp` text NOT NULL,
  `ordr` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`id`, `name`, `img`, `desp`, `ordr`) VALUES
(3, 'Hydropower  & Dams', 'f6bda39b9e56d33c5b4b3bb208d62fcf1.png', 'Over the last 40 Years, NDC has been engaged in feasibility detailed, design & construction supervision of more than 20,000 MW of Hydropower Projects including worldâ€™s highest RCC dams i.e. 272 m high Diamer Basha Dam and 242 m high Dasu ', 1),
(2, 'River Training & Flood Protection', 'b953c0a05b20bd4cc14eca52045a4e4a1.png', 'NDC has contributed, over the years, in water resources projects for river training, flood protection & control. Projects successfully completed by NDC in this field include Second Flood Sector Project, Flood Protection Works in Sindhâ€¦..', 3),
(4, 'Irrigation', '9f6719a449cccf7f7bf4b75cb4d963a21.png', 'NDC has undertaken detailed design and construction supervision of irrigation projects & rehabilitation of mega irrigation and drainage projects including Sulemanki Barrage, Taunsa Barrage, Sukkur Barrage, Kachhi Canal Project, New Khanki Barrage,  National Drainage Program, Chashma', 2),
(5, 'Irrigation & Hydraulics', 'e7d83d1ed2452a0b619534bc81f7f67e1.png', 'Isst  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 4),
(6, 'River Training & Flood Protetion', '2413c767f30a48f93cd75d3f07f773921.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 5),
(7, 'Drainage & Groundwater Resource', '1cc50c07166f99e0216d0b09ada6f9c71.png', '  adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 6),
(8, 'Transportation', 'a82177f5973ad7b5b1022963388b98d81.png', '   adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 7),
(9, 'Urban Infrastructure Development', 'cb9d2bf166244d97b43322e82cd53a001.png', 'adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 8),
(10, 'Physical and Numerical Hydraulic Modeling', '04865cef1631adc07b535b90353b7fd31.png', ' labore et dolore magna aliqua. Ut enim ad minim ', 9),
(11, 'Heading', '0de1b71f2c045a1551d5b9ccef582fd61.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 10),
(12, 'Heading', '1d91a12b29ffaf1408643ff4d5667f931.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 11),
(13, 'Heading', 'c3170bd38420563fa4548f143741ed071.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et ..Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et ..', 12);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallerycat`
--

DROP TABLE IF EXISTS `gallerycat`;
CREATE TABLE IF NOT EXISTS `gallerycat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` text NOT NULL,
  `img` text NOT NULL,
  `vid` text,
  `vidpost` text,
  `vidimg` text NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `post`, `img`, `vid`, `vidpost`, `vidimg`, `msg`) VALUES
(1, '<h1>--</h1>\r\n\r\n<p>-</p>\r\n\r\n<h1><strong><span style=\"color:#000000\">WNY PSI</span></strong></h1>\r\n\r\n<h1>&nbsp;</h1>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:18px\">We carry great inks for your vibrant tattoos includes MoM&#39;s, Kuru Sumi, Intenze, Eternal, Fusion, Skin candy, Talon&#39;s drawing-ink are all here to enhance your great art work.&nbsp;<br />\r\nYou are most welcome to talk to us first for the courteous service on the globe. &nbsp;The only supply company where artists come first, where your professional opinion matters most.&nbsp;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\">WNY PSI carries a complete range of quality Tattoo studio supplies.&nbsp;<br />\r\nWe have 1000s of satisfied clients,&nbsp;<br />\r\nCan you be one of them ?<br />\r\n<strong>Try us, if you have not already.</strong></span></p>\r\n', 'be48e21a8fe5f38a652ccdb332266ff51.png', '   Custom Video URL   ', '<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">Shaping the future through</span></span></span></h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\">EVEN MORE FEATURE RICH</span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">Philanthropy convener livelihoods, initiative end hunger gender rights local. John Lennon storytelling; advocate, altruism impact catalyst.<span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"> creative solutions and visionary leadership.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">Testing</span></span></span></p>\r\n', '4709c35999256ec9b2bcb750135058b71.png', '<p>National Development Consultants Pvt. Ltd. Pakistan, is one of the Pakistan&#39;s premier consulting engineering organization, which has attained international standard and is ranked among the Pakistan&#39;s top 5 consulting firms.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(28, 15, 'image-gallery1', 'Test', '1f40dcf29c529a095c8b6b873133f9d41.png', 'www.hamzapervaiz.com', 0, 1),
(29, 15, 'image-gallery1', 'Test 2', 'f4b0bf8ae34bc216c301b98cc32c84221.png', 'test.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `imagescat`
--

DROP TABLE IF EXISTS `imagescat`;
CREATE TABLE IF NOT EXISTS `imagescat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagescat`
--

INSERT INTO `imagescat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(15, 'Image Gallery1', 'image-gallery1', '7f3e135916f408ffb2256bddbb6f0a111.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `marquee`
--

DROP TABLE IF EXISTS `marquee`;
CREATE TABLE IF NOT EXISTS `marquee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text,
  `text` text,
  `heading` text,
  `month` text,
  `year` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marquee`
--

INSERT INTO `marquee` (`id`, `img`, `text`, `heading`, `month`, `year`, `url`, `ordr`) VALUES
(9, NULL, 'Testing Event', NULL, '2020', '10', '<p>hello Event Description</p>\r\n', 1),
(10, NULL, 'Another  Testing Event Andorid', NULL, '10', '2020', '<p>Sample Testing Event</p>\r\n', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'News and Events', '', 'Careers', 'Careers', '15562240ad0d6bfc4be7dcd977c92aaf1.png', '<p>post</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `icon` text,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  `res` int(11) NOT NULL DEFAULT '0',
  `ordr` int(11) NOT NULL,
  `foot` int(11) NOT NULL DEFAULT '0',
  `hide` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `icon`, `metak`, `metad`, `cover`, `post`, `res`, `ordr`, `foot`, `hide`) VALUES
(1, 'Home', 'home', 'home', 'Site Names', 'Site Name', '16221544bd7db1d546fd5d83855d330b1.png', '<h2>Hello World</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>234</p>\r\n', 1, 2, 0, 0),
(9, 'Contact Us', 'contacts', 'envelope', 'Contacts', 'Contacts', '50328b0848a675537220aa34a602f2041.png', '<p>test</p>\r\n', 1, 20, 1, 0),
(24, 'Clients', 'clients', 'group', 'clients ', 'clients ', '9de10abac4b0183b85d6c341daf581431.png', '<p>Some Test Posting</p>\r\n', 1, 10, 0, 1),
(5, 'Services', 'services', 'briefcase', 'Services', 'meta description', '', '', 1, 12, 0, 1),
(4, 'Brands', 'brands', 'tags', 'Brands', 'Brands of Products', 'd8f57278aa2b427bddb39eeec19f414c1.png', '<p>It could be argued that the most valuable property any fast food chain has, just as much as a unique recipe, is their logo. It is a well known fact that the McDonald&rsquo;s golden arches are among the most recognised symbols on earth. No design could be simpler; so is simplicity the key to the success of a logo design? Conventional wisdom in the design world would seem to say so, but it isn&rsquo;t always the case, perhaps confirming George Bernard Shaw&rsquo;s mantra, &ldquo;The golden rule is: there are no golden rules.&rdquo;<img alt=\"fast-food-logos\" src=\"https://pas.org.pk/wp-content/uploads/2017/09/fast-food-logos.gif\" style=\"height:420px; width:326px\" /><br />\r\nOne of the great advantages the McDonald&rsquo;s logo has is that it is omnipresent. It is impossible to drive around almost any city in the world without seeing those golden arches at least once. Sure, the logos of other fast food restaurants are immediately recognisable, but none are engrained in the mind as deeply as those golden arches.<br />\r\nEvery brand in the world has a logo, be it a motor car, airline, perfume or cup of instant noodles. The thing that sets fast food restaurants apart is they must be a spur to immediate</p>\r\n', 1, 8, 0, 0),
(28, 'About Us', 'page-about', NULL, 'About US', 'About Food Kitchen', 'a9eacdeeec38fe0032f9976fde17a4331.png', '<h1><strong>FoodKitchen...</strong></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Order lunch, fuel for meetings or late-night deliveries to the office. Your favorite restaurants coming to a desk near you.</p>\r\n\r\n<p>Are you hungry? Had a long and busy day? Then <strong>FoodKitchen </strong>is the right place for you! we&nbsp;offers you a long and detailed&nbsp;<strong>list of the best restaurants near you</strong>. Whether it is a delicious Pizza, Burger, Japanese or any kind of Fast Food you are craving, foodpanda has an extensive roaster of 15000 restaurants; further, if you are in the mood for Indian, Pakistani, or Afghan cuisines, there are plenty of restaurants available for you to&nbsp;<strong>order food online with home delivery</strong>. foodpanda is available in a total of 30 cities in Pakistan, among which are the top popular four cities: Islamabad, Lahore, Rawalpindi, and Karachi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Frequently Asked Questions</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4><strong>How can I get FoodKitchen delivery?</strong></h4>\r\n\r\n<p>To get <strong>FoodKitchen </strong>delivery, simply locate the restaurants near you by typing in your address, browse through a variety of restaurants and cuisines, check menus and prices, choose your dishes and add them to the basket. Now you only need to checkout and make the payment. Soon your delicious food will arrive at your doorstep!</p>\r\n\r\n<h4><strong>How can I order food in Pakistan?</strong></h4>\r\n\r\n<p>To order food delivery in Pakistan, follow these simple steps:</p>\r\n\r\n<ol>\r\n	<li><strong>Choose your dishes.</strong>&nbsp;Browse the menu of the chosen restaurant, select your dishes and add them to your basket. When you are done, press the &quot;Checkout&quot; button.</li>\r\n	<li><strong>Checkout &amp; Payment.</strong>&nbsp;Check your order, payment method selection and exact delivery address. Simply follow the checkout instructions from there.</li>\r\n	<li><strong>Delivery.&nbsp;</strong>We will send you an email&nbsp;confirming your order and delivery time. Sit back, relax and wait for piping hot food to be conveniently delivered to you!.</li>\r\n</ol>\r\n\r\n<ul>\r\n</ul>\r\n', 0, 2, 1, 0),
(7, 'Images Gallery', 'image', 'camera', 'Images Gallery', 'Images Gallery', 'c960d16f3cf63f31067161bff94108f81.png', '', 1, 16, 0, 1),
(3, 'Products', 'products', 'list', 'products', 'products', '', '', 1, 6, 0, 0),
(6, 'News / Events', 'news', 'info-circle', 'News/Events', 'News / Events', '53bb95cfdc5c32765745bcbc6747d9b31.png', '<p>lol this</p>\r\n', 1, 14, 0, 1),
(2, 'Blogs', 'blogs', 'book', 'Blogs', 'Blogs', '', '', 1, 3, 1, 0),
(8, 'Videos', 'video', 'video-camera', 'Videos Gallery', 'Videos Gallery', '395a08298e40fdd55b41d04d13cc9ff61.png', '', 1, 18, 0, 1),
(29, 'Request a Product', 'requestpro', 'book', 'Pages', 'pages', '', '', 1, 8, 0, 1),
(30, 'Search', 'searchs', 'Search', 'Search', 'Search', '', '', 1, 5, 0, 1),
(31, 'Privacy Policy', 'page-privacy-policy', NULL, 'Privacy Policy', 'Privacy Policy', '8a0235dbb43c6465a3021af608b5fc8a1.png', '<h3>Privacy Policy</h3>\r\n\r\n<p>This page (together with the documents referred to on it) tells you the terms of use on which you may make use of our website&nbsp;<a href=\"https://www.foodkitchen.pk\" target=\"_blank\">www.foodkitchen.pk</a>&nbsp;(our site), whether as a guest or a registered user. Please read these terms of use carefully before you start to use the site. By using our site, you indicate that you accept these terms of use and that you agree to abide by them. If you do not agree to these terms of use, please refrain from using our site.</p>\r\n\r\n<h4>Information about us</h4>\r\n\r\n<p><a href=\"https://www.foodkitchen.pk\" target=\"_blank\">www.foodkitchen.pk</a>&nbsp;is a site operated by Cheetay Logistics Pvt Ltd (we and/or the Company). We are registered in Pakistan under company number 7158005-8 and our registered office and main trading address is at 110 &ndash; B, Faiz Ahmed Faiz Road, Quaid e Azam Industrial Estate, Lahore Pakistan.</p>\r\n\r\n<h4>Accessing our site</h4>\r\n\r\n<p>Access to our site is permitted on a temporary basis, and we reserve the right to withdraw or amend the service we provide on our site without notice (see below). We will not be liable if for any reason our site is unavailable at any time or for any period.</p>\r\n\r\n<p>From time to time, we may restrict access to some parts of our site, or our entire site, to users who have registered with us.</p>\r\n\r\n<p>If you choose, or you are provided with, a user identification code, password or any other piece of information as part of our security procedures, you must treat such information as confidential, and you must not disclose it to any third party. We have the right to disable any user identification code or password, whether chosen by you or allocated by us, at any time, if in our opinion you have failed to comply with any of the provisions of these terms of use.</p>\r\n\r\n<p>When using our site, you must comply with the provisions of our acceptable use policy available on our website.</p>\r\n\r\n<p>You are responsible for making all arrangements necessary for you to have access to our site. You are also responsible for ensuring that all persons who access our site through your internet connection are aware of these terms, and that they comply with them.</p>\r\n\r\n<h4>Intellectual property rights</h4>\r\n\r\n<p>We are the owner or the licensee of all intellectual property rights in our site, and in the material published on it. Those works are protected by copyright laws and treaties around the world. All such rights are reserved.</p>\r\n\r\n<p>You may print off one copy, and may download extracts, of any page(s) from our site for your personal reference and you may draw the attention of others within your organisation to material posted on our site.</p>\r\n\r\n<p>You must not modify the paper or digital copies of any materials you have printed off or downloaded in any way, and you must not use any illustrations, photographs, video or audio sequences or any graphics separately from any accompanying text.</p>\r\n\r\n<p>Our status (and that of any identified contributors) as the authors of material on our site must always be acknowledged.</p>\r\n\r\n<p>You must not use any part of the materials on our site for commercial purposes without obtaining a licence to do so from us or our licensors.</p>\r\n\r\n<p>If you print off, copy or download any part of our site in breach of these terms of use, your right to use our site will cease immediately and you must, at our option, return or destroy any copies of the materials you have made.</p>\r\n\r\n<h4>Reliance on information posted</h4>\r\n\r\n<p>Commentary and other materials posted on our site are not intended to amount to advice on which reliance should be placed. We therefore disclaim all liability and responsibility arising from any reliance placed on such materials by any visitor to our site, or by anyone who may be informed of any of its contents.</p>\r\n\r\n<h4>Our site changes regularly</h4>\r\n\r\n<p>We aim to update our site regularly, and may change the content at any time. If the need arises, we may suspend access to our site, or close it indefinitely. Any of the material on our site may be out of date at any given time, and we are under no obligation to update such material.</p>\r\n\r\n<h4>Our liability</h4>\r\n\r\n<p>The material displayed on our site is provided without any guarantees, conditions or warranties as to its accuracy. To the extent permitted by law, we, other members of our group of companies and third parties connected to us hereby expressly exclude:</p>\r\n\r\n<p>All conditions, warranties and other terms which might otherwise be implied by any law of Pakistan.</p>\r\n\r\n<p>Any liability for any direct, indirect or consequential loss or damage incurred by any user in connection with our site or in connection with the use, inability to use, or results of the use of our site, any websites linked to it and any materials posted on it, including, without limitation any liability for:</p>\r\n\r\n<ul>\r\n	<li>loss of income or revenue;</li>\r\n	<li>loss of business;</li>\r\n	<li>loss of profits or contracts;</li>\r\n	<li>loss of anticipated savings;</li>\r\n	<li>loss of data;</li>\r\n	<li>loss of goodwill;</li>\r\n	<li>wasted management or office time;</li>\r\n</ul>\r\n\r\n<p>and for any other loss or damage of any kind, however arising and whether caused by tort (including negligence), breach of contract or otherwise, even if foreseeable, provided that this condition shall not prevent claims for loss of or damage to your tangible property or any other claims for direct financial loss that are not excluded by any of the categories set out above.</p>\r\n\r\n<p>This does not affect our liability for death or personal injury arising from our negligence, nor our liability for fraudulent misrepresentation or misrepresentation as to a fundamental matter, nor any other liability which cannot be excluded or limited under applicable law.</p>\r\n\r\n<h4>Information about you and your visits to our site</h4>\r\n\r\n<p>We process information about you in accordance with our privacy policy available on our website. By using our site, you consent to such processing and you warrant that all data provided by you is accurate.</p>\r\n\r\n<h4>Transactions concluded through our site</h4>\r\n\r\n<p>Contracts for the supply of goods formed through our site or as a result of visits made by you are governed by our terms and conditions of supply available on our website.</p>\r\n\r\n<h4>Uploading material to our site</h4>\r\n\r\n<p>Whenever you make use of a feature that allows you to upload material to our site, or to make contact with other users of our site, you must comply with the content standards set out in our acceptable use policy available on our website. You warrant that any such contribution does comply with those standards, and you indemnify us for any breach of that warranty.</p>\r\n\r\n<p>Any material you upload to our site will be considered non&not;-confidential and non&not;proprietary, and we have the right to use, copy, distribute and disclose to third parties any such material for any purpose. We also have the right to disclose your identity to any third party who is claiming that any material posted or uploaded by you to our site constitutes a violation of their intellectual property rights, or of their right to privacy.</p>\r\n\r\n<p>We will not be responsible, or liable to any third party, for the content or accuracy of any materials posted by you or any other user of our site.</p>\r\n\r\n<p>We have the right to remove any material or posting you make on our site if, in our opinion, such material does not comply with the content standards set out in our acceptable use policy avaiable on our website.</p>\r\n\r\n<h4>Viruses, hacking and other offences</h4>\r\n\r\n<p>You must not misuse our site by knowingly introducing viruses, trojans, worms, logic bombs or other material which is malicious or technologically harmful. You must not attempt to gain unauthorised access to our site, the server on which our site is stored or any server, computer or database connected to our site. You must not attack our site via a denial&not;of&not;service attack or a distributed denial&not;ofservice attack.</p>\r\n\r\n<p>We will report any such breach to the relevant law enforcement authorities and we will co&not;operate with those authorities by disclosing your identity to them. In the event of such a breach, your right to use our site will cease immediately.</p>\r\n\r\n<p>We will not be liable for any loss or damage caused by a distributed denial&not;of&not;service attack, viruses or other technologically harmful material that may infect your computer equipment, computer programs, data or other proprietary material due to your use of our site or to your downloading of any material posted on it, or on any website linked to it.</p>\r\n\r\n<h4>Linking to our site</h4>\r\n\r\n<p>You may link to our home page, provided you do so in a way that is fair and legal and does not damage our reputation or take advantage of it, but you must not establish a link in such a way as to suggest any form of association, approval or endorsement on our part where none exists.</p>\r\n\r\n<p>You must not establish a link from any website that is not owned by you.</p>\r\n\r\n<p>Our site must not be framed on any other site, nor may you create a link to any part of our site other than the home page. We reserve the right to withdraw linking permission without notice. The website from which you are linking must comply in all respects with the content standards set out in our acceptable use policy available on our website.</p>\r\n\r\n<p>If you wish to make any use of material on our site other than that set out above, please address your request to info@cheetay.pk.</p>\r\n\r\n<h4>Links from our site</h4>\r\n\r\n<p>Where our site contains links to other sites and resources provided by third parties, these links are provided for your information only. We have no control over the contents of those sites or resources, and accept no responsibility for them or for any loss or damage that may arise from your use of them.</p>\r\n\r\n<h4>Promotions</h4>\r\n\r\n<p>From time to time, we may offer free promotions through our site, in relation to each of which:</p>\r\n\r\n<ul>\r\n	<li>unless stated to contrary, such promotion is open to all Pakistani residents aged 18 or over;</li>\r\n	<li>where such promotion is run through any website provided by a third party (including but not limited to Facebook and Twitter), it is acknowledged by each of us and you that such promotion is in no way sponsored, endorsed or administered by, or associated with such third party, which is hereby released by each of us and you from any liability arising in relation to such promotion.</li>\r\n</ul>\r\n\r\n<h4>Jurisdiction and applicable law</h4>\r\n\r\n<p>The Pakistani courts will have exclusive jurisdiction over any claim arising from, or related to, a visit to our site although we retain the right to bring proceedings against you for breach of these conditions in your country of residence or any other relevant country.</p>\r\n\r\n<p>These terms of use and any dispute or claim arising out of or in connection with them or their subject matter or formation (including non&not;contractual disputes or claims) shall be governed by and construed in accordance with the law of Pakistan.</p>\r\n\r\n<h4>Variations</h4>\r\n\r\n<p>We may revise these terms of use at any time by amending this page. You are expected to check this page from time to time to take notice of any changes we made, as they are binding on you. Some of the provisions contained in these terms of use may also be superseded by provisions or notices published elsewhere on our site.</p>\r\n\r\n<h4>Your concerns</h4>\r\n\r\n<p>If you have any concerns about material which appears on our site, please contact&nbsp;<a href=\"mailto:info@foodkitchen.pk\">info@foodkitchen.pk</a>. Thank you for visiting our site.</p>\r\n', 0, 6, 1, 1),
(32, 'Terms of Services', 'page-terms-of-services', NULL, 'Terms of Services', 'Terms of Services', 'ced11ceac3f9a1a6829636ddb7824c1e1.png', '<h3>Terms and Conditions</h3>\r\n\r\n<p>This page (together with the documents referred to on it) tells you the terms and conditions on which we supply any of the products (Products) listed on our website&nbsp;<a href=\"https://www.foodkitchen.pk\">www.foodkitchen.pk</a>&nbsp;(our site) to you. Please read these terms and conditions carefully before ordering any Products from our site. You should understand that by ordering any of our Products, you agree to be bound by these terms and conditions.</p>\r\n\r\n<p>You should print a copy of these terms and conditions for future reference.</p>\r\n\r\n<p>Please click on the button marked &quot;I Accept&quot; at the end of these terms and conditions if you accept them. Please understand that if you refuse to accept these terms and conditions, you will not be able to order any Products from our site.</p>\r\n\r\n<ol>\r\n	<li><strong>Information about us</strong>\r\n\r\n	<ol style=\"margin-left:40px\">\r\n		<li>www.foodkitchen.pk is a site operated in Pakistan.Our office and main trading is in&nbsp;Lahore, Pakistan.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Your Status</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>By placing an order through our site, you warrant that:\r\n		<ol style=\"margin-left:40px\">\r\n			<li>You are legally capable of entering into binding contracts; and</li>\r\n			<li>You are at least 16 years old; we will not sell or deliver to anyone who is, or appears to be, under the age of 16; we reserve the right not to deliver if we are unsure of this.</li>\r\n		</ol>\r\n		</li>\r\n		<li>You do not intend to use our site or service for the sale or delivery of any form of alcohol, drugs and/or narcotics. We will refuse deliver any such products to anyone.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>How the contract is formed between you and us</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>After placing an order, you will receive an e-mail from us acknowledging that we have received your order. Please note that this does not mean that your order has been accepted. Your order constitutes an offer to us to buy a Product. All orders are subject to acceptance by us, and we will confirm such acceptance to you by sending you an e-mail that confirms that the Product has been dispatched (the Dispatch Confirmation). The contract between us (Contract) will only be formed when we send you the Dispatch Confirmation. We reserve the right to refuse any order or cancel a delivery at any time without giving a reason.</li>\r\n		<li>The Contract will relate only to those Products whose dispatch we have confirmed in the Dispatch Confirmation. We will not be obliged to supply any other Products which may have been part of your order until the dispatch of such Products has been confirmed in a separate Dispatch Confirmation.</li>\r\n		<li>Please note that once you have made your order and your payment has been authorized you will not be able to cancel your order and that refunds may be given at the discretion of the management.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Our Status</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>We are entering into the Contract ourselves and not as nominee or agent for any other person and we alone shall be responsible to you under it; no other person, as agent or otherwise, is entitled or authorised to bind or commit the Company to any obligation to you.</li>\r\n		<li>We may provide links on our site to the websites of other companies (other websites), whether affiliated with us or not. We cannot give any undertaking, that products you purchase from companies to whose website we have provided a link on our site, will be of satisfactory quality, and any such warranties are DISCLAIMED by us absolutely. This DISCLAIMER does not affect your statutory rights against the third party.</li>\r\n		<li>All questions regarding goods shown on our site should be directed to the affiliate restaurant.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Availability and Delivery</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>Your order will be fulfilled by the delivery date/time set out in the Dispatch Confirmation.</li>\r\n		<li>Delivery shall only be made to verified residential addresses and for intended consumption at home.</li>\r\n		<li>Delivery periods quoted at the time of ordering are approximate only and may vary. Products will be delivered to the address designated by you at the time of ordering. You agree to take particular care when providing us with your details and warrant that these details are accurate and complete at the time of ordering.</li>\r\n		<li>In case of a late delivery, the delivery charge will neither be voided nor refunded.</li>\r\n		<li>If you fail to accept delivery of a Product at the time they are ready for delivery, or we are unable to deliver at the nominated time due to your failure to provide appropriate instructions, or authorizations, then such Products shall be deemed to have been delivered to you and all risk and responsibility in relation to such Products shall pass to you. Any storage, insurance and other costs which we incur as a result of the inability to deliver shall be your responsibility and you shall indemnify us in full for such cost.</li>\r\n		<li>In the unlikely event that a wrong item is delivered or a partial delivery is made, you have the right to reject the delivery of the wrong item and you shall be not be liable to make any payment.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Risk and Title</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>The Products will be at your risk from the time of delivery.</li>\r\n		<li>Ownership of the Products will only pass to you when we receive full payment of all sums due in respect of the Products, including delivery charges. It is the responsibility of the customer to thoroughly check the Products before agreeing to pay for an order.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Price and Payment</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>The price of any Products will be as quoted on our site or other websites from time to time, except in cases of obvious error.</li>\r\n		<li>If the prices on our websites or any other websites are exclusive of any applicable taxes it shall be indicated so. However the prices of Products shall exclude delivery costs, which shall be confirmed prior to your placing an order and added to the total amount due.</li>\r\n		<li>Prices are liable to change at any time, but changes will not affect orders in respect of which we have already sent you a Dispatch Confirmation.</li>\r\n		<li>Our site contains a large number of Products and it is always possible that, despite our best efforts, some of the Products listed on our site may be incorrectly priced. We will normally verify prices as part of our dispatch procedures so that, where a Product&rsquo;s correct price is less than our stated price, we will charge the lower amount when dispatching the Product to you. If a Product&rsquo;s correct price is higher than the price stated on our site, we will normally, at our discretion, either contact you for instructions before dispatching the Product, or reject your order and notify you of such rejection.</li>\r\n		<li>We are under no obligation to provide the Product to you at the incorrect (lower) price, even after we have sent you a Dispatch Confirmation, if the pricing error is obvious and unmistakeable and could have reasonably been recognised by you as a mis-pricing.</li>\r\n		<li>Payment for all Products must be made by cash on delivery.</li>\r\n		<li>We do not accept payment with credit or debit card, VISA, Mastercard, Debit, switch, solo, AMEX, Paypal, Diner Club and or Cheques.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Our Liability</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>We warrant to you that any Product purchased from us through our site is of satisfactory quality and reasonably fit for all the purposes for which products of the kind are commonly supplied.</li>\r\n		<li>Our liability for losses you suffer as a result of us breaking this agreement is strictly limited to the purchase price of the Product you purchased and any losses which are a foreseeable consequence of us breaking the agreement. Losses are foreseeable where they could be contemplated by you and us at the time your order is accepted by us.</li>\r\n		<li>This does not include or limit in any way our liability:\r\n		<ol>\r\n			<li>For death or personal injury caused by our negligence;</li>\r\n			<li>For fraud or fraudulent misrepresentation; or</li>\r\n			<li>For any matter for which it would be illegal for us to exclude, or attempt to exclude, our liability.</li>\r\n		</ol>\r\n		</li>\r\n		<li>We are not responsible for indirect losses which happen as a side effect of the main loss or damage, including but not limited to:\r\n		<ol>\r\n			<li>loss of income or revenue</li>\r\n			<li>loss of business</li>\r\n			<li>loss of profits or contracts</li>\r\n			<li>loss of anticipated savings</li>\r\n			<li>loss of data, or</li>\r\n			<li>waste of management or office time however arising and whether caused by tort (including negligence), breach of contract or otherwise;</li>\r\n		</ol>\r\n\r\n		<p>provided that this clause 8.4 shall not prevent claims for loss of or damage to your tangible property that fall within the terms of clause 8.1 or clause 8.2 or any other claims for direct financial loss that are not excluded by any of the provisions of this clause 8.4.</p>\r\n		</li>\r\n		<li>Great care has been taken to ensure that the information available on this Website is correct and error free. We apologize for any errors or omissions that may have occurred. We cannot warrant that use of the Website will be error free or fit for purpose, timely, that defects will be corrected, or that the site or the server that makes it available are free of viruses or bugs or represents the full functionality, accuracy, reliability of the Website and we do not make any warranty whatsoever, whether express or implied, relating to fitness for purpose, or accuracy.</li>\r\n		<li>By accepting these terms of use you agree to relieve us from any liability whatsoever arising from your use of information from any third party, or your use of any third party website.</li>\r\n		<li>We do not accept any liability for any delays, failures, errors or omissions or loss of transmitted information, viruses or other contamination or destructive properties transmitted to you or your computer system via our website.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Written communications</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>Applicable laws require that some of the information or communications we send to you should be in writing. When using our site, you accept that communication with us will be mainly electronic. We will contact you by e-mail or provide you with information by posting notices on our website. For contractual purposes, you agree to this electronic means of communication and you acknowledge that all contracts, notices, information and other communications that we provide to you electronically comply with any legal requirement that such communications be in writing. This condition does not affect your statutory rights.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Notices</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>We may give notice to you at either the e-mail or postal address you provide to us when placing an order, or in any of the ways specified in clause 9 above. Notice will be deemed received and properly served immediately when posted on our website, 24 hours after an e-mail is sent, or three days after the date of posting of any letter. In proving the service of any notice, it will be sufficient to prove, in the case of a letter, that such letter was properly addressed, stamped and placed in the post and, in the case of an e-mail, that such e-mail was sent to the specified e-mail address of the addressee.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Transfer of rights and obligations</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>The contract between you and us is binding on you and us and on our respective successors and assigns.</li>\r\n		<li>You may not transfer, assign, charge or otherwise dispose of a Contract, or any of your rights or obligations arising under it, without our prior written consent.</li>\r\n		<li>We may transfer, assign, charge, sub-contract or otherwise dispose of a Contract, or any of our rights or obligations arising under it, at any time during the term of the Contract.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Events outside our control</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>We will not be liable or responsible for any failure to perform, or delay in performance of, any of our obligations under a Contract that is caused by events outside our reasonable control (Force Majeure Event).</li>\r\n		<li>A Force Majeure Event includes any act, event, non-happening, omission or accident beyond our reasonable control and includes in particular (without limitation) the following:\r\n		<ol style=\"margin-left:40px\">\r\n			<li>Strikes, lock-outs or other industrial action.</li>\r\n			<li>Civil commotion, riot, invasion, terrorist attack or threat of terrorist attack, war (whether declared or not) or threat or preparation for war.</li>\r\n			<li>Fire, explosion, storm, flood, earthquake, subsidence, epidemic or other natural disaster.</li>\r\n			<li>Impossibility of the use of railways, shipping, aircraft, motor transport or other means of public or private transport.</li>\r\n			<li>Impossibility of the use of public or private telecommunications networks.</li>\r\n			<li>The acts, decrees, legislation, regulations or restrictions of any government.</li>\r\n			<li>Our performance under any Contract is deemed to be suspended for the period that the Force Majeure Event continues, and we will have an extension of time for performance for the duration of that period. We will use our reasonable endeavours to bring the Force Majeure Event to a close or to find a solution by which our obligations under the Contract may be performed despite the Force Majeure Event.</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Waiver</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>If we fail, at any time during the term of a Contract, to insist upon strict performance of any of your obligations under the Contract or any of these terms and conditions, or if we fail to exercise any of the rights or remedies to which we are entitled under the Contract, this shall not constitute a waiver of such rights or remedies and shall not relieve you from compliance with such obligations.</li>\r\n		<li>A waiver by us of any default shall not constitute a waiver of any subsequent default.</li>\r\n		<li>No waiver by us of any of these terms and conditions shall be effective unless it is expressly stated to be a waiver and is communicated to you in writing in accordance with clause 10 above.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Severability</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>If any of these terms and Conditions or any provisions of a Contract are determined by any competent authority to be invalid, unlawful or unenforceable to any extent, such term, condition or provision will to that extent be severed from the remaining terms, conditions and provisions which will continue to be valid to the fullest extent permitted by law.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Entire agreement</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>These terms and conditions and any document expressly referred to in them constitute the whole agreement between us and supersede any previous arrangement, understanding or agreement between us, relating to the subject matter of any Contract.</li>\r\n		<li>We each acknowledge that, in entering into a Contract, (and the documents referred to in it), neither of us relies on any statement, representation, assurance or warranty (Representation) of any person (whether a party to that Contract or not) other than as expressly set out in these terms and conditions.</li>\r\n		<li>Each of us agrees that the only rights and remedies available to us arising out of or in connection with a Representation shall be for breach of contract as provided in these terms and conditions.</li>\r\n		<li>Nothing in this clause shall limit or exclude any liability for fraud.</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Our right to vary these terms and conditions</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>We have the right to revise and amend these terms and conditions from time to time.</li>\r\n		<li>You will be subject to the policies and terms and conditions in force at the time that you order products from us, unless any change to those policies or these terms and conditions is required to be made by law or governmental authority (in which case it will apply to orders previously placed by you), or if we notify you of the change to those policies or these terms and conditions before we send you the Dispatch Confirmation (in which case we have the right to assume that you have accepted the change to the terms and conditions, unless you notify us to the contrary within seven working days of receipt by you of the Products).</li>\r\n	</ol>\r\n	</li>\r\n	<li><strong>Law and jurisdiction</strong>\r\n	<ol style=\"margin-left:40px\">\r\n		<li>Contracts for the purchase of Products through our site and any dispute or claim arising out of or in connection with them or their subject matter or formation (including non-contractual disputes or claims) will be governed by Pakistani law. Any dispute or claim arising out of or in connection with such Contracts or their formation (including non-contractual disputes or claims) shall be subject to the non-exclusive jurisdiction of the courts of Pakistan.</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n', 0, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pimgs`
--

DROP TABLE IF EXISTS `pimgs`;
CREATE TABLE IF NOT EXISTS `pimgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) NOT NULL,
  `img` text,
  `feat` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pimgs`
--

INSERT INTO `pimgs` (`id`, `pid`, `pslug`, `img`, `feat`, `ordr`) VALUES
(180, 61, 'new-jens', '9846ab56f3cb9ea8e14d922e871cff611.png', 1, 0),
(181, 61, 'new-jens', '3afb5476d8ef57cfc3afaf97430eab611.png', 0, 1),
(189, 63, 'men-dress-pant-1', 'dacf7d919b1d941578a5023043f7d52e1.png', 1, 0),
(182, 61, 'new-jens', '6a1395a64bb5be8865077acc73157c6b1.png', 0, 2),
(174, 59, 'rent-your-ride', 'b0a32c0e306fe73ebde3cb3bc16ea2611.png', 1, 0),
(183, 62, 'del-pro', '8530ea18330e31520dab7c1761b80fa51.png', 1, 0),
(184, 62, 'del-pro', 'a8e061b515e7fff0b3a864c396842cad1.png', 0, 1),
(188, 60, 'boys-jeans-1', '4d7424ea180ceda1869c8435ea703bdd1.png', 0, 1),
(187, 60, 'boys-jeans-1', '99e758b55c729eac5e8be4280cb18f331.png', 1, 0),
(190, 63, 'men-dress-pant-1', 'a236b4042ca32650c40a18cbd1b84ce11.png', 0, 1),
(191, 63, 'men-dress-pant-1', 'fc45f4cbb17d692dd22db537ccb6e8411.png', 0, 2),
(192, 64, 'new-pant-l778-', 'd4971954314c592e478b65db692e04791.png', 1, 0),
(193, 64, 'new-pant-l778-', '99831a44a03403d1522e831085383f161.png', 0, 1),
(194, 65, 'black-night-trouser', '90c3c90dabe6a17e71adb794b979a2a01.png', 1, 0),
(195, 66, 'v-neck-grey', 'ddd47dc2b98560ba2c1f04d58e6042581.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `mslug` varchar(40) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `saleprice` int(11) DEFAULT NULL,
  `sizesm` int(11) NOT NULL DEFAULT '0',
  `sizemd` int(11) NOT NULL DEFAULT '0',
  `sizelg` int(11) NOT NULL DEFAULT '0',
  `metak` text,
  `metad` text,
  `desp` text,
  `img1` text,
  `img2` text,
  `img3` text,
  `img4` text,
  `img5` int(11) DEFAULT NULL,
  `feat` text,
  `ordr` int(11) DEFAULT '0',
  `pending` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productcat`
--

DROP TABLE IF EXISTS `productcat`;
CREATE TABLE IF NOT EXISTS `productcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productcat`
--

INSERT INTO `productcat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(49, 'PPE', 'ppe_13', 'ae6263fad232a364e6d230cf9a70e1251.png', NULL, '1', 2),
(50, 'CARTRIDGES', 'cartridges_41', '2b3fe78d506c841bab4fd1b25a220f281.png', NULL, '1', 3),
(51, 'ARTIST SETUP', 'artist-setup_65', '0affe0a93f087bf4eefb234451a090ef1.png', NULL, '1', 4),
(52, 'medical supplies', 'medical-supplies_12', '6f26fa6a658ba3bbb3475cefe009cd421.png', NULL, '1', 5),
(48, 'Tattoo Supplies', 'tattoo-supplies_52', '108965d97596fb96839a81def8b6a9fa1.png', NULL, '1', 11);

-- --------------------------------------------------------

--
-- Table structure for table `productsubcat`
--

DROP TABLE IF EXISTS `productsubcat`;
CREATE TABLE IF NOT EXISTS `productsubcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pslug` varchar(90) NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `img` text NOT NULL,
  `desp` text,
  `feat` text,
  `ordr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productsubcat`
--

INSERT INTO `productsubcat` (`id`, `pid`, `pslug`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(45, 51, 'artist-setup_65', 'SHOP FIXTURES', 'shop-fixtures_9', 'e4a50b0a96de5089e6246cfd539d35ca1.png', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actid` int(11) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text,
  `datec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `actid`, `proid`, `rating`, `review`, `datec`) VALUES
(28, 3, 79, 4, '12143214312', '2021-05-11 06:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `mslug` varchar(40) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `saleprice` int(11) DEFAULT NULL,
  `sizesm` int(11) NOT NULL DEFAULT '0',
  `sizemd` int(11) NOT NULL DEFAULT '0',
  `sizelg` int(11) NOT NULL DEFAULT '0',
  `metak` text,
  `metad` text,
  `desp` text,
  `img1` text,
  `img2` text,
  `img3` text,
  `img4` text,
  `img5` int(11) DEFAULT NULL,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `mid`, `mslug`, `pid`, `pslug`, `name`, `slug`, `brand`, `price`, `sale`, `saleprice`, `sizesm`, `sizemd`, `sizelg`, `metak`, `metad`, `desp`, `img1`, `img2`, `img3`, `img4`, `img5`, `feat`, `ordr`) VALUES
(1, 13, 'name_26', 1, 'boys_82', 'Name', 'name-68', NULL, 0, 0, NULL, 0, 0, 0, '', '', '<p>kolol</p>\r\n', 'def4a8aaaeb168c681b7d67f50c08cd41.png', '4b6a89ac3e2f94d910066711a622b9a61.png', 'a0cc7656545aa5d75207b6583fbadce21.png', NULL, NULL, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `servicecat`
--

DROP TABLE IF EXISTS `servicecat`;
CREATE TABLE IF NOT EXISTS `servicecat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicecat`
--

INSERT INTO `servicecat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(10, 'Our Services', 'add-services', '15b8e40d18212e11c814e9c702ae5dd61.png', '<p>lol</p>\r\n', NULL, 0),
(13, 'Name', 'name_26', 'ed742f3db91f74b9674df140a425c81f1.png', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `servicesubcat`
--

DROP TABLE IF EXISTS `servicesubcat`;
CREATE TABLE IF NOT EXISTS `servicesubcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pslug` varchar(90) NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `img` text NOT NULL,
  `desp` text,
  `feat` text,
  `ordr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicesubcat`
--

INSERT INTO `servicesubcat` (`id`, `pid`, `pslug`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(1, 10, 'add-services', 'Boys', 'boys_82', 'd81616c99aefa736aaffe341b693d8201.png', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `size` varchar(40) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `totalprice` int(11) DEFAULT '0',
  `bfname` text,
  `blname` text,
  `bcompany` text,
  `baddress1` text,
  `baddress2` text,
  `bcity` text,
  `bcountry` text,
  `bmobile` text,
  `bemail` text,
  `spostal` text,
  `bpostal` text,
  `sfname` text,
  `slname` text,
  `scompany` text,
  `saddress1` text,
  `saddress2` text,
  `scity` text,
  `scountry` text,
  `smobile` text,
  `semail` text,
  `inst` text,
  `status` text,
  `datec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pdate` date DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `ddate` date DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `expreason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `actid`, `pid`, `qty`, `size`, `price`, `totalprice`, `bfname`, `blname`, `bcompany`, `baddress1`, `baddress2`, `bcity`, `bcountry`, `bmobile`, `bemail`, `spostal`, `bpostal`, `sfname`, `slname`, `scompany`, `saddress1`, `saddress2`, `scity`, `scountry`, `smobile`, `semail`, `inst`, `status`, `datec`, `pdate`, `edate`, `ddate`, `expdate`, `expreason`) VALUES
(11, 3, 79, 5, '', 120, 0, 'Hamza Pervaiz', '', NULL, 'Al Rehman Garden P II', '', 'Lahore', NULL, '+923204150000', 'hamzademp5@gmail.com', '54000', '54000', 'Hamza Pervaiz', '', NULL, 'Al Rehman Garden P II', '', 'Lahore', NULL, '+923204150000', 'hamzademp5@gmail.com', '123123123', 'enroute', '2021-04-30 12:47:52', '2021-04-30', '2021-05-11', NULL, NULL, NULL),
(12, 3, 81, 3, '', 200, 0, 'HAMZA PERVAIZ', '', NULL, 'Al Rehman Garden P II', '', 'Lahore', NULL, '+923204150000', 'hamzademp5@gmail.com', '54000', '54000', 'Hamza Pervaiz', '', NULL, 'Al Rehman Garden P II', '', 'Lahore', NULL, '+923204150000', 'hamzademp5@gmail.com', 'Special Instructions:Special Instructions:Special Instructions:', 'pending', '2021-05-02 05:20:52', '2021-05-11', NULL, NULL, NULL, NULL),
(13, 3, 79, 5, '', 120, 0, 'HAMZA PERVAIZ', '', NULL, 'Al Rehman Garden P II', '', 'Lahore', NULL, '+923204150000', 'hamzademp5@gmail.com', '54000', '54000', 'Hamza Pervaiz', '', NULL, 'Al Rehman Garden P II', '', 'Lahore', NULL, '+923204150000', 'hamzademp5@gmail.com', 'Special Instructions:Special Instructions:Special Instructions:', 'pending', '2021-05-02 05:29:06', '2021-05-11', NULL, NULL, NULL, NULL),
(14, 3, 87, 3, '', 90, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cart', '2021-05-11 06:44:17', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simgs`
--

DROP TABLE IF EXISTS `simgs`;
CREATE TABLE IF NOT EXISTS `simgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) NOT NULL,
  `img` text,
  `feat` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simgs`
--

INSERT INTO `simgs` (`id`, `pid`, `pslug`, `img`, `feat`, `ordr`) VALUES
(122, 28, 'not-show', '4d1cc98ce7e783223f020ddc8dea93f71.png', 0, 0),
(111, 25, 'another-serveice', '426f967cc6d0fcb2254462a854d8b35a1.png', 1, 0),
(112, 25, 'another-serveice', 'e2a324e7a423c441be0c793d691f49d31.png', 0, 2),
(113, 26, 'more', '124513a35bcca744e2d12a9334487da61.png', 1, 0),
(114, 27, 'must-show-on-home', '2d9cec06d36bf1521df9c2ef0a05b2671.png', 1, 0),
(121, 28, 'not-show', '6339fd77e1059c684c8feb109aa5676a1.png', 1, 0),
(116, 36, 'pro-20', '8493c168a080a9aa42323db7aef5fe251.png', 1, 0),
(118, 39, 'new-product-10', 'f90bc793c85d11511f50ca0be2efce5c1.png', 1, 0),
(119, 40, 'slud', 'a55ffefe04018b2f05720bb1d1d95f8b1.png', 1, 0),
(123, 24, 'new-services', 'd62f57f2c4c820c616bf93418190dec21.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `img`, `ordr`) VALUES
(32, '', 'd1e71f09e996cad0ae606c44a6411f121.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `img` text,
  `bfname` text,
  `blname` text,
  `bcompany` text,
  `baddress1` text,
  `baddress2` text,
  `bcity` text,
  `bcountry` text,
  `bmobile` text,
  `bemail` text,
  `spostal` text,
  `bpostal` text,
  `sfname` text,
  `slname` text,
  `scompany` text,
  `saddress1` text,
  `saddress2` text,
  `scity` text,
  `scountry` text,
  `smobile` text,
  `semail` text,
  `inst` text,
  `datec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `block` int(11) NOT NULL DEFAULT '0',
  `blockres` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `img`, `bfname`, `blname`, `bcompany`, `baddress1`, `baddress2`, `bcity`, `bcountry`, `bmobile`, `bemail`, `spostal`, `bpostal`, `sfname`, `slname`, `scompany`, `saddress1`, `saddress2`, `scity`, `scountry`, `smobile`, `semail`, `inst`, `datec`, `block`, `blockres`) VALUES
(3, 'HAMZA PERVAIZ', 'hamzademp5@gmail.com', 'hamzademp5', 'avatar.png', 'HAMZA PERVAIZ', '', NULL, 'Al Rehman Garden P II', '', 'Lahore', NULL, '+923204150000', 'hamzademp5@gmail.com', '54000', '54000', 'Hamza Pervaiz', '', NULL, 'Al Rehman Garden P II', '', 'Lahore', NULL, '+923204150000', 'hamzademp5@gmail.com', 'Special Instructions:Special Instructions:Special Instructions:', '2021-04-30 12:10:14', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(32, 16, 'vid-cat1', 'Boys', 'e614836c77b93b0f23c6672e214d355e1.png', 'www.hamzapervaiz.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videoscat`
--

DROP TABLE IF EXISTS `videoscat`;
CREATE TABLE IF NOT EXISTS `videoscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videoscat`
--

INSERT INTO `videoscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(16, 'Vid Cat1', 'vid-cat1', 'a053355994c8b15ae79accf7e3b249281.png', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
