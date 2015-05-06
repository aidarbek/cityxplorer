-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 06 2015 г., 15:54
-- Версия сервера: 5.6.21
-- Версия PHP: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cityxplorer2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bookmarks`
--

CREATE TABLE IF NOT EXISTS `bookmarks` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `address` varchar(300) CHARACTER SET utf8 NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
`id1` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `type1` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

-- --------------------------------------------------------

--
-- Структура таблицы `places`
--

CREATE TABLE IF NOT EXISTS `places` (
`id` int(11) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `address` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=171 ;

--
-- Дамп данных таблицы `places`
--

INSERT INTO `places` (`id`, `longitude`, `latitude`, `type`, `name`, `address`) VALUES
(1, 71.4401, 51.1649, 1, 'King Hotel Astana', 'Shokan Valikhanov Street, Astana, Kazakhstan'),
(2, 71.473, 51.1366, 1, 'Hotel Kazzhol Astana', 'Balqantau Street 213, Astana, Kazakhstan'),
(3, 71.4212, 51.1335, 1, 'Rixos President Hotel Astana', 'Dinmukhamed Qonayev Street 7, Astana, Kazakhstan'),
(4, 71.4293, 51.1314, 1, 'Diplomat Hotel & Business Center', 'Dinmukhamed Qonayev Street 29/1, Astana 010000, Kazakhstan'),
(5, 71.4635, 51.1424, 1, 'Tengri Hotel', 'Vavilova Street 1A, Астана 010000, Kazakhstan'),
(6, 71.4938, 51.134, 1, 'Kazzhol Hotel Astana', 'Balqantau Street, Astana 010000, Kazakhstan'),
(7, 71.4142, 51.1917, 1, 'Ereimentau Hotel', 'Kutpanova Street 14, Астана 010000, Kazakhstan'),
(8, 71.4109, 51.1766, 1, 'Aka Hotel', 'Zhengis Avenue, Astana 010011, Kazakhstan'),
(9, 71.4571, 51.1491, 1, 'Khan Hotel', 'Tauelsizdik Avenue 11, Astana 010000, Kazakhstan'),
(10, 71.4002, 51.1142, 1, 'Boutique Hotel Traditsional', 'Turan Avenue 33, Astana 010000, Kazakhstan'),
(11, 71.4109, 51.1766, 1, 'Skif Hotel', 'Zhengis Avenue, Astana 010000, Kazakhstan'),
(12, 71.4458, 51.1527, 1, 'San Marino Hotel Astana', 'Zhumabek Tashenov Street 17, Astana 010000, Kazakhstan'),
(13, 71.39, 51.2005, 1, 'Noel Hotel', 'Shintas Street 21, Astana 010000, Kazakhstan'),
(14, 71.4334, 51.1219, 1, 'Uyut Hotel', 'Улица Суганак 181, Астана 010000, Kazakhstan'),
(15, 71.4393, 51.1709, 1, 'Отель "Империя-G" 4*', 'Abay Avenue, Astana 010000, Kazakhstan'),
(16, 71.4343, 51.1333, 1, 'Versal Hotel', 'Sarayshyq Street, Astana 010000, Kazakhstan'),
(17, 71.4225, 51.1821, 1, 'Отель Реал', 'Respublika Avenue 54, Astana, Kazakhstan'),
(18, 71.4556, 51.1779, 1, 'Everest Hotel', 'Zhienkulovoy Street 7/1, Astana 010000, Kazakhstan'),
(19, 71.4133, 51.1791, 1, 'Гостиница Астана арт отель', 'улица Желтоксан 42, Astana, Kazakhstan'),
(20, 71.4173, 51.1369, 1, 'Отель "Жумбактас"', '020000, Qarasaqal Yerimbet Street 65, Astana 010000, Kazakhstan'),
(21, 71.4102, 51.1433, 2, 'Tre Kronor', '21 turan av, Astana 010000, Kazakhstan'),
(22, 71.4089, 51.1399, 2, 'Alasha', 'Turan Avenue, Astana 010000, Kazakhstan'),
(23, 71.4836, 51.1549, 2, 'Mr.HOME-сеть демократичных ресторанов', 'Abylay Khan Avenue 26/1, Astana 010000, Kazakhstan'),
(24, 71.4934, 51.1454, 2, 'Attila', 'Bauyrzhan Momyshuly Avenue 31, Astana 010000, Kazakhstan'),
(25, 71.438, 51.1279, 2, 'Wine Bar', 'Dinmukhamed Qonayev St 14, Astana 010000, Kazakhstan'),
(26, 71.4019, 51.1312, 2, 'Black Duck Astana', 'пр. Туран, 37/6, блок Б, Астана, Kazakhstan'),
(27, 71.396, 51.1954, 2, 'Ресторан "Хива"', 'Constitution Street, Astana, Kazakhstan'),
(28, 71.4333, 51.1233, 2, 'Revolving Restaurant', 'Syghanaq Street 27, Astana, Kazakhstan'),
(29, 71.4095, 51.1412, 2, 'Ресторан "Багратиони"', 'район Есиль, Астана, Kazakhstan'),
(30, 71.4276, 51.1628, 2, 'Ресторан "Меруерт"', 'Amangeldi Imanov Street, Astana, Kazakhstan'),
(31, 71.4252, 51.1645, 2, 'Ресторан-Караоке "Мост"', 'Mukhtar Auezov Street 8, Astana, Kazakhstan'),
(32, 71.435, 51.1269, 2, 'Ресторан "Augustin"', 'ул. Достык, Nurzhol Boulevard 13, Astana, Kazakhstan'),
(33, 71.4251, 51.1694, 2, 'Ресторан "Бочонок"', 'Respublika Avenue 33А, Astana, Kazakhstan'),
(34, 71.4212, 51.1336, 2, 'Ресторан "Rixos"', 'Dinmukhamed Qonayev Street 7, Astana, Kazakhstan'),
(35, 71.4157, 51.1491, 2, 'Ресторан "Томирис"', 'Коргальджинское шоссе, 2А, Астана, Kazakhstan'),
(36, 71.425, 51.1276, 2, 'Ресторан "Disah"', 'Dostik Street 9, Astana, Kazakhstan'),
(37, 71.4393, 51.1709, 2, 'Отель "Империя-G" 4*', 'Abay Avenue, Astana 010000, Kazakhstan'),
(38, 71.4297, 51.1652, 2, 'Ресторан "Империал-Хит"', 'Kenesary Street 38, Astana 010000, Kazakhstan'),
(39, 71.4172, 51.1676, 2, 'Кафе "Ямайка"', 'Abay Avenue, Astana 010000, Kazakhstan'),
(40, 71.4314, 51.1257, 2, 'ТОО "Fine Food Astana"', 'Dostyq Street, Astana, Kazakhstan'),
(41, 71.684, 51.1114, 3, 'АЗС "КазМунайГаз"', 'Almaty District, Kujgenzhar, Kazakhstan'),
(42, 71.4759, 51.1485, 3, 'АЗС "Аурика" № 3', 'Zhanaydar Zhirentayev Street 6/1, Astana, Kazakhstan'),
(43, 71.4773, 51.167, 3, 'АЗС "Аурика" №12', 'Pushkin Street, Astana, Kazakhstan'),
(44, 71.3974, 51.127, 3, 'Гелиос АЗС #20', 'Syghanaq Street, Astana, Kazakhstan'),
(45, 71.3953, 51.1824, 3, 'АЗС "Аурика"', 'Katchenko Street, Astana, Kazakhstan'),
(46, 71.3835, 51.1803, 3, 'АЗС "Аурика" № 13', 'Shabal Beysekova Street 1/2, Astana, Kazakhstan'),
(47, 71.5247, 51.1358, 3, 'АЗС "ОЙЛ"', 'Kökzhelek Street, Astana, Kazakhstan'),
(48, 71.379, 51.2516, 3, 'АЗС "Газпром Нефть" № 210212', 'Saryarka District, Astana, Kazakhstan'),
(49, 71.4766, 51.148, 3, 'ТОО АУРИКА', 'ул.Куйшi Дина, 17, Астана 010008, Kazakhstan'),
(50, 71.4253, 51.1647, 3, 'ТОО "ИнкомПлюс"', 'ул. Ауэзова 8, г. Астана 010000, Kazakhstan'),
(51, 71.0177, 51.7007, 3, 'АЗС "Бахыт"', 'Shortandy District, Kazakhstan'),
(52, 71.4598, 51.1604, 3, 'Наружная реклама, Электронное табло "Бегущая строка", Выставочные стенды', 'Amangeldi Imanov Street, Astana, Kazakhstan'),
(53, 71.3895, 51.1686, 3, 'нотариус, Ашимов Руслан, ул. 188, д.9, оф. 28', '28th Street, Astana, Kazakhstan'),
(54, 71.3996, 51.1808, 3, 'ТОО «NADINE PROJECT STUDIO»', 'Maskeu St, Astana 010000, Kazakhstan'),
(55, 71.4649, 51.1401, 4, 'AfishaDay.kz Столичная Афиша, Информационный портал Астаны', 'Правый берег, Астана, Kazakhstan'),
(56, 71.434, 51.1227, 4, 'ТОО "PDMnet"', '211, Syghanaq St 29, Astana 010000, Kazakhstan'),
(57, 71.414, 51.1455, 4, 'сеть ресторанов фудзи', 'Коргальджинское шоссе, 1, Астана 010000, Kazakhstan'),
(58, 71.4534, 51.1524, 4, 'ИП Перекресток', 'Zhastar Micro-District, Astana, Kazakhstan'),
(59, 71.4426, 51.1647, 4, 'ТОО Hot Tour Астана', 'Иманова 19 оф. 710 Б, Бизнес Центр Алматы, г. Астана 010000, Kazakhstan'),
(60, 71.4165, 51.1847, 4, 'Kärcher Store Astana', 'Beibitshilik St 56, Astana, Kazakhstan'),
(61, 71.4574, 51.11, 4, 'oskidkax', 'Haileybury Astana School, Zhumeken Nazhimedenov St 4, Astana 010000, Kazakhstan'),
(62, 71.473, 51.1476, 5, 'ТЦ Евразия 2', 'Mirzoyan Street 24, Astana, Kazakhstan'),
(63, 71.4378, 51.18, 5, 'ТЦ Джафар', 'ул. Бугенбая 71 ТЦ Гарант, проспект Богенбай батыра 73/1, Астана, Kazakhstan'),
(64, 71.4344, 51.1753, 5, 'ТЦ "Ажар"', 'Koshkarbaev Street. 97, Astana, Kazakhstan'),
(65, 71.4381, 51.1799, 5, 'ТЦ "Гарант"', 'Saryarka District, Astana, Kazakhstan'),
(66, 71.4519, 51.1834, 5, 'ТЦ "Арзан"', 'бутик 207, Aqzhol Street 27/2, Astana, Kazakhstan'),
(67, 71.4537, 51.1484, 5, 'ТЦ "Астыкжан"', 'Saryarka District, Astana, Kazakhstan'),
(68, 71.4388, 51.1753, 5, '"Тулпар" - Торговый Центр', 'Shokan Valikhanov Street 24, Astana, Kazakhstan'),
(69, 71.4258, 51.1411, 5, 'Торговый Центр Ажар', 'Qaratay Turysov Street, Astana, Kazakhstan'),
(70, 71.4184, 51.1777, 5, 'Торговый Центр Астыкжан 3', 'Beibitshilik Street 34, Astana, Kazakhstan'),
(71, 71.4284, 51.1776, 5, 'Торговый Центр Джафар', 'Bogenbay Batyr Avenue 71, Astana, Kazakhstan'),
(72, 71.4565, 51.1821, 5, 'Торговый Центр Универсал', 'Aqzhol Street, Astana, Kazakhstan'),
(73, 71.3768, 51.1796, 5, 'Торговый Центр Рахмет-2', 'проезд Нургиза Тлендиева 15, Astana, Kazakhstan'),
(74, 71.4573, 51.1791, 5, 'TOO AKBEL STROYMAT', 'Г. Астана, Жиенкуловой, 8, Astana, Kazakhstan'),
(75, 71.4363, 51.1302, 5, 'Торговый дом "Багира"', 'Новый мир, Dinmukhamed Qonayev Street 35, Astana, Kazakhstan'),
(76, 71.4296, 51.1536, 5, 'Ramstore', 'Ghumar Qarash Street, Astana 010000, Kazakhstan'),
(77, 71.4655, 51.1387, 5, 'MotoPro', 'Tauelsizdik Ave 34, Astana, Kazakhstan'),
(78, 71.4359, 51.13, 5, 'ТД "Багира"', 'D Kunaev St, Astana 010000, Kazakhstan'),
(79, 71.4205, 51.171, 5, 'ТОО "PUCHA"', 'Beibitshilik St 16, Astana 010000, Kazakhstan'),
(80, 71.4125, 51.1281, 5, 'Магазин стильной детской одежды "Нахаленок"', 'пр. Кабанбай батыра, дом 21, ТРЦ Азия Парк , 3 этаж, Астана 010000, Kazakhstan'),
(81, 71.4392, 51.1749, 5, 'ДОМСПОРТ', 'Ch. Valikhanov Street, Astana, Kazakhstan'),
(82, 71.4206, 51.1652, 6, 'Женская одежда', 'Beibitshilik Street 9, Astana, Kazakhstan'),
(83, 71.4128, 51.1762, 6, 'Кокетка', 'Bögenbay Batyr Avenue, Astana, Kazakhstan'),
(84, 71.4655, 51.1387, 6, 'BACCI', 'Tauelsizdik Ave 34, Astana 010000, Kazakhstan'),
(85, 71.4792, 51.1524, 6, 'СПЕЦОДЕЖДА.KZ', 'м-н Целинный 5/1, Астана 010000, Kazakhstan'),
(86, 71.3895, 51.1686, 6, 'нотариус, Ашимов Руслан, ул. 188, д.9, оф. 28', '28th Street, Astana, Kazakhstan'),
(87, 71.3844, 51.1821, 6, 'Астыкжан 2', 'Shabal Beysekova Street 3, Astana, Kazakhstan'),
(88, 71.4547, 51.1827, 6, 'ТОО "Центр торговли "Астыкжан"', 'ул. Акжол, 31, ул. Бейсековой, 3, Астана 010000, Kazakhstan'),
(89, 71.4563, 51.1821, 6, 'Астыкжан 1', 'Aqzhol Street 31, Astana, Kazakhstan'),
(90, 71.4423, 51.1648, 6, 'Интернет портал All biz (Алл биз)', 'Amangeldi Imanov Street 19, Astana 010000, Kazakhstan'),
(91, 71.4085, 51.1679, 6, 'Хуашен', 'пр Сары-Арка, д 31/1, Астана 010000, Kazakhstan'),
(92, 71.4417, 51.1698, 6, 'Media Project.kz', 'улица Абая, 50, офис 112, Астана 010000, Kazakhstan'),
(93, 71.4254, 51.1632, 6, 'кофейня "Эспрессо Бар"', 'Mukhtar Auezov Street 2, Astana, Kazakhstan'),
(94, 71.5002, 51.1515, 6, 'ТОО "MEDIA PROJECT.KZ"', 'Astana, Kazakhstan'),
(95, 71.4779, 51.1645, 6, 'Shanyrak on Abaya', 'Новая Абая ул., Astana 000902, Kazakhstan'),
(96, 71.4142, 51.1725, 6, 'Военторг Армейский магазин', 'Zheltoqsan St, Astana, Kazakhstan'),
(97, 71.4181, 51.1752, 6, 'Ruukki', '33/1 Beibitshilik St., Office 202 and 206, Astana 100000, Kazakhstan'),
(98, 71.4388, 51.1753, 6, '"Тулпар" - Торговый Центр', 'Shokan Valikhanov Street 24, Astana, Kazakhstan'),
(99, 71.4355, 51.1575, 6, 'Dom.kz Астана', 'Almaty District, Astana, Kazakhstan'),
(100, 71.4652, 51.1558, 7, 'Kazakhstan Sport Centre', 'Иманова 9 Munaitpasov Street, Astana, Kazakhstan'),
(101, 71.4116, 51.1423, 7, 'ОЮЛ в ФА «Конфедерация спортивных единоборств и силовых видов спорта»', 'р-н Есиль, пр. Туран 18, Астана 010000, Kazakhstan'),
(102, 71.4423, 51.155, 7, 'Auto Capital Sport', 'мкр.Молодежный, ул.Таха Хусейна 5, автосалон Mitsubishi Motors, 2 этаж, Астана 010000, Kazakhstan'),
(103, 71.3997, 51.1619, 7, 'IRIS sport', 'Kenesary Street 45, Astana, Kazakhstan'),
(104, 71.407, 51.1697, 7, 'Astana', 'Saryarka Avenue 18(44),Abai Avenue, Astana, Kazakhstan'),
(105, 71.4614, 51.1501, 7, 'спорт площадка', 'ул. Петрова, Астана, Kazakhstan'),
(106, 71.4346, 51.1689, 7, 'MegaSport', 'Abai Ave, 40 Астана Казахстан, Astana, Kazakhstan'),
(107, 71.4117, 51.1384, 7, 'Мега Спорт', 'Saryarka, Turan Avenue 24, Astana, Kazakhstan'),
(108, 71.4223, 51.1284, 7, 'Салон "Sport-Line"', 'улица Гапеева, Astana, Kazakhstan'),
(109, 71.4627, 51.1458, 7, 'Салон "Sport-Line"', '2, Astana, Kazakhstan'),
(110, 71.4104, 51.1382, 7, 'Sport Land', 'Saryarka, Turan Avenue 24, Astana, Kazakhstan'),
(111, 71.4657, 51.1659, 7, 'Федерация Велосипедного спорта Республики Казахстан', 'ул. Абая 99, оф. 201, Астана 010000, Kazakhstan'),
(112, 71.4392, 51.1749, 7, 'ДОМСПОРТ', 'Ch. Valikhanov Street, Astana, Kazakhstan'),
(113, 71.4713, 51.1473, 7, 'Goldman Empire', 'Mirzoyan Street 13/1, Astana, Kazakhstan'),
(114, 71.4174, 51.1482, 7, 'Lounge Bar & Night Club OSCAR', 'Кургальджинское шоссе, Astana, Kazakhstan'),
(115, 71.4398, 51.1706, 7, 'G Empire', '63, Abaya Avenue, Astana, Kazakhstan'),
(116, 71.4815, 51.1552, 7, 'Belon Life Hotel', 'Abylai Khana Prospekt 24/1, Астана 010000, Kazakhstan'),
(117, 71.4378, 51.1291, 7, 'маг. ESCADA', 'Teulsyzdyk 14/2, Астана, Kazakhstan'),
(118, 71.4186, 51.1625, 7, 'Limpopo', 'Zheltoqsan Street 2, Astana, Kazakhstan'),
(119, 71.4649, 51.1603, 8, 'L.N. Gumilyov Eurasian National University', 'Казахстан, Астана, ул. К. Мунайтпасова, 5, Алматинский район, Астана 010000, Kazakhstan'),
(120, 71.3982, 51.0905, 8, 'Nazarbayev University', 'Qabanbay Batyr Avenue 53, Astana 010000, Kazakhstan'),
(121, 71.4637, 51.1606, 8, 'Eurasian National University Faculty of Social Sciences', 'Yanushkevich Street 6, Astana, Kazakhstan'),
(122, 71.4691, 51.1558, 8, 'Московский университет', 'M-District5, Astana, Kazakhstan'),
(123, 71.4651, 51.1598, 8, 'Евразийский национальный университет Факультет информационных технологии', 'Amangeldi Imanov Street, Astana, Kazakhstan'),
(124, 71.4163, 51.1814, 8, 'Astana Medical University', 'Beibitshilik Street 49/A, Astana, Kazakhstan'),
(125, 71.4699, 51.1681, 8, 'Kainar University, Astana Branch', 'Tsiolkovskii Street 51, Astana, Kazakhstan'),
(126, 71.409, 51.1872, 8, 'Kazakh State Agrotechnical University', 'Zhengis Avenue 62, Astana, Kazakhstan'),
(127, 71.4654, 51.1599, 8, 'Юридический факультет, Евразийский университет имени Л.Н. Гумилева', 'Alexander Pushkin Street 11, Astana, Kazakhstan'),
(128, 71.4577, 51.16, 8, 'Казахский университет экономики, финансов и международной торговли', 'Akhmet Zhubanov Street 7, Astana 020000, Kazakhstan'),
(129, 71.4117, 51.1423, 8, 'Филиал АО «Казахский Медицинский Университет Непрерывного Образования» в г. Астана', 'Turan Avenue, Astana 020000, Kazakhstan'),
(130, 71.4752, 51.1563, 8, 'Остановка Евразийский Национальный Университет', 'Qazhymuqan Street, Astana, Kazakhstan'),
(131, 71.406, 51.1742, 8, 'АО "Медицинский университет Астана", корпус Сарыарка', 'Saryarka Avenue 33(95) Saryarka Street, Astana, Kazakhstan'),
(132, 71.4245, 51.1809, 8, 'University of Technology and Business', 'Respublika Avenue, Astana, Kazakhstan'),
(133, 71.3982, 51.0907, 8, 'School of Science and Technology, Nazarbayev University', 'Kabanbay Batyr Avenue 53, Astana 010000, Kazakhstan'),
(134, 71.4916, 51.1636, 8, 'College of the D. A. Kunaev University', 'Makhtumkuli Street 23/2, Astana, Kazakhstan'),
(135, 71.4577, 51.1599, 8, 'T.Ryskulov Kazakh Economic University', 'Akhmet Zhubanov Street 7 Zhubanov Street, Astana, Kazakhstan'),
(136, 71.3997, 51.09, 8, 'University Service Management', 'Қабанбай батыр данғылы 53, Astana, Kazakhstan'),
(137, 71.4031, 51.0899, 8, 'Nazarbayev University', 'Qabanbay Batyr Avenue, Astana, Kazakhstan'),
(138, 71.3985, 51.089, 8, 'Nazarbayev University Dormitory', 'Yesil District, Astana, Kazakhstan'),
(139, 71.5283, 51.1405, 9, 'Городская Детская больница №2', 'Raqymzhan Qoshqarbayev Avenue, Astana, Kazakhstan'),
(140, 71.4559, 51.149, 9, 'City Children Hospital #2', 'Yerenqabyrgha Street, Astana, Kazakhstan'),
(141, 71.4485, 51.1567, 9, 'Municipal Hospital', 'Kravtsova Street 47a Beibitshilik Street, Astana, Kazakhstan'),
(142, 71.4949, 51.149, 9, 'Presidential Hospital', 'Almaty District, Astana, Kazakhstan'),
(143, 71.4142, 51.1826, 9, 'State Hospital #2', 'Maskeu Street, Astana, Kazakhstan'),
(144, 71.5295, 51.1425, 9, 'City Hospital', 'Shakarim Kudayberdiuly Avenue, Astana, Kazakhstan'),
(145, 71.4092, 51.0843, 9, '2 городская больница', 'Astana 020000, Kazakhstan'),
(146, 71.4245, 51.0762, 9, 'Больница Медицинского Центра Управления Делами Президента РК', 'Е 495 временный адрес, Kazakhstan'),
(147, 70.7254, 51.2945, 9, 'участковая больница с. Новоишимка', 'Tselinograd District, 010023, Kazakhstan'),
(148, 71.0059, 51.6872, 9, 'Шортандинская центральная больница', 'улица Дзержинского, Shortandy, Kazakhstan'),
(149, 71.4258, 51.1251, 9, 'ТОО "Шар-Курылыс"', 'ул. Сыганак 21/1, ВП-2, Астана, Kazakhstan'),
(150, 71.5298, 51.1435, 9, 'АО "Народный Банк Казахстана"', 'пр. Р Қошқарбаев, 66. ГКП "Городская больница № 1", Этаж 1, Астана 010000, Kazakhstan'),
(151, 71.4193, 51.1624, 10, 'Такси ТиФа', 'ЖК Гранд Алатау, набережная, Astana 100009, Kazakhstan'),
(152, 71.4317, 51.1695, 10, 'Такси Самал Грузотакси Грузчики', 'Astana, Kazakhstan'),
(153, 71.4553, 51.1565, 10, 'ТОО "Пегас-XXl" Такси', 'Pushkin Street 3/1, Astana, Kazakhstan'),
(154, 71.4555, 51.1565, 10, 'ТОО "Пегас-XXl" Такси', 'Tselinnyi Micro-District, Astana, Kazakhstan'),
(155, 71.4189, 51.1225, 10, 'Астана Груза Такси', 'Sauran Street, Astana 020000, Kazakhstan'),
(156, 71.4216, 51.1335, 10, 'Astana Vip Taxi', 'район Есиль, Астана, Kazakhstan'),
(157, 71.4341, 51.1416, 10, 'ТОО "Caspian Projects Supply Company Ltd"', 'Mirnyi Street, Astana 010000, Kazakhstan'),
(158, 71.4401, 51.1649, 10, 'King Hotel Astana', 'Shokan Valikhanov Street, Astana, Kazakhstan'),
(159, 71.4206, 51.1143, 10, 'Royal Park Astana', '18, Kirei-Zhanibek khans St, Astana 010000, Kazakhstan'),
(160, 71.467, 51.0224, 10, 'Astana International Airport', 'Yesil District, Astana, Kazakhstan'),
(161, 71.4779, 51.1645, 10, 'Shanyrak on Abaya', 'Новая Абая ул., Astana 000902, Kazakhstan'),
(162, 71.4398, 51.1706, 10, 'G Empire', '63, Abaya Avenue, Astana, Kazakhstan'),
(163, 71.4574, 51.11, 10, 'oskidkax', 'Haileybury Astana School, Zhumeken Nazhimedenov St 4, Astana 010000, Kazakhstan'),
(164, 71.4363, 51.1324, 10, 'Bayterek', 'Sarayshyq Street 38, Astana 010017, Kazakhstan'),
(165, 71.4249, 51.1439, 10, 'Ulpan Guest House', 'Halel Dosmukhameduly Street 11, Астана 010001, Kazakhstan'),
(166, 71.4263, 51.1237, 10, 'Beijing Palace Soluxe Hotel Astana', 'Syghanaq Street 27, Astana 010000, Kazakhstan'),
(167, 71.3895, 51.1686, 10, 'нотариус, Ашимов Руслан, ул. 188, д.9, оф. 28', '28th Street, Astana, Kazakhstan'),
(168, 71.4807, 51.1497, 10, 'Assumption Cathedral', 'Kuyshi Dina Street 27, Astana, Kazakhstan'),
(169, 71.4037, 51.1848, 10, 'O Azamat', 'Potanin St, Astana 010011, Kazakhstan'),
(170, 71.4448, 51.1642, 10, 'Jelsomino Boutique Hotel', 'Amangeldi Imanov Street 26, Astana, Kazakhstan');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
`id` int(11) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `place_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE IF NOT EXISTS `types` (
`id` int(11) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'отель'),
(2, 'ресторан'),
(3, 'азс'),
(4, 'развлечения'),
(5, 'ТЦ'),
(6, 'Одежда'),
(7, 'спорт'),
(8, 'университет'),
(9, 'больница'),
(10, 'такси');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 NOT NULL,
  `mail` varchar(300) CHARACTER SET utf8 NOT NULL,
  `password` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
 ADD PRIMARY KEY (`id1`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
MODIFY `id1` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
