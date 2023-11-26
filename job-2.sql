-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 12:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(50) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` int(50) NOT NULL,
  `customer_mail` varchar(255) NOT NULL,
  `customer_location` varchar(255) NOT NULL,
  `order_id` int(50) NOT NULL,
  `customer_age` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_phone`, `customer_mail`, `customer_location`, `order_id`, `customer_age`) VALUES
(1, 'Cale Woolway', 493, 'cwoolway0@nifty.com', '27056 Sugar Trail', 1, 46),
(2, 'Chucho Bleasdale', 336, 'cbleasdale1@acquirethisname.com', '97 Lake View Point', 2, 100),
(3, 'Madonna Churcher', 491, 'mchurcher2@ft.com', '29 Holy Cross Road', 3, 24),
(4, 'Tadeas Purcer', 112, 'tpurcer3@sitemeter.com', '87575 Beilfuss Park', 2147483647, 44),
(9, 'Lucine Mathouse', 509, 'lmathouse8@princeton.edu', '09085 Roth Road', 2147483647, 73),
(10, 'Leicester Camis', 200, 'lcamis9@amazon.co.uk', '6 Hazelcrest Pass', 2147483647, 62),
(12, 'Raimundo Handscomb', 712, 'rhandscombb@gnu.org', '86 Dakota Park', 2147483647, 80),
(22, 'Gualterio Forbes', 265, 'gforbesl@sbwire.com', '371 Shasta Crossing', 2147483647, 56),
(23, 'Irita Cowperthwaite', 770, 'icowperthwaitem@aboutads.info', '12073 Dixon Junction', 2147483647, 91),
(25, 'Tiertza Godrich', 571, 'tgodricho@fema.gov', '147 Service Plaza', 2147483647, 100),
(26, 'Shermy Hargey', 240, 'shargeyp@de.vu', '0075 Raven Terrace', 2147483647, 23),
(27, 'Sella Gladwell', 460, 'sgladwellq@wikispaces.com', '89838 Bunting Avenue', 2147483647, 30),
(28, 'Karia Shower', 953, 'kshowerr@seattletimes.com', '3548 Roxbury Court', 2147483647, 100),
(29, 'Bradan MacAllen', 522, 'bmacallens@desdev.cn', '56 Forest Dale Point', 2147483647, 29),
(30, 'Augy Diment', 174, 'adimentt@oracle.com', '0692 Autumn Leaf Alley', 2147483647, 18),
(40, 'Raul Judgkins', 183, 'rjudgkins13@twitpic.com', '2583 Prairieview Alley', 2147483647, 63),
(41, 'Gwenore Roach', 366, 'groach14@archive.org', '610 Sheridan Alley', 2147483647, 61),
(46, 'Care Anthonies', 718, 'canthonies19@t-online.de', '9 School Court', 2147483647, 66),
(47, 'Cornie Gluyas', 487, 'cgluyas1a@ucsd.edu', '185 Golden Leaf Street', 2147483647, 89);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(50) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_pnumber` int(50) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_pnumber`, `location`) VALUES
(1, 'G5 Hawthorn', 12345678, 'Australia'),
(2, 'G5 Hanoi', 23456789, 'VietNam'),
(3, 'G5 CND', 2353121, 'Canada'),
(4, 'G5 FD', 3314123, 'USA'),
(5, 'Killdeer', 694, 'Hangchuan'),
(6, '7th', 126, 'Gongjiahe'),
(7, 'Corben', 486, 'Manjing'),
(8, 'Dovetail', 652, 'Datan'),
(9, 'Donald', 284, 'Hengshan'),
(10, 'Anhalt', 787, 'Ruy Barbosa'),
(11, 'Knutson', 218, 'Cap-Santé'),
(12, 'Vermont', 714, 'Gununggoong'),
(13, 'Pine View', 245, 'Braunschweig'),
(14, 'Schurz', 426, 'Jatiraya'),
(15, 'Carberry', 265, 'Valle Grande'),
(16, 'Porter', 599, 'Hats’avan'),
(17, 'Warner', 711, 'Tauca'),
(18, 'Mifflin', 993, 'Dhahab'),
(19, 'Memorial', 488, 'Bāgh-e Malek'),
(20, 'Westend', 286, 'Galátsi'),
(21, 'Maple Wood', 867, 'Chengbei'),
(22, 'East', 907, 'Ash Shafā'),
(23, 'Farragut', 649, 'Cilebang Satu'),
(24, 'Pond', 953, 'Zhutang'),
(25, 'Boyd', 794, 'Gaborone'),
(26, 'Chive', 687, 'Pedome'),
(27, 'Cardinal', 294, 'Kuala Lumpur'),
(28, 'Hoffman', 938, 'Zhangjiagang'),
(29, 'Morning', 308, 'Urzhar'),
(30, 'Talmadge', 202, 'Vodstroy'),
(31, 'Bashford', 304, 'Ndungu'),
(32, 'La Follette', 229, 'Samoš'),
(33, 'Menomonie', 972, 'Yaring'),
(34, 'Everett', 158, 'Hikone'),
(35, '3rd', 160, 'Taiba'),
(36, 'Novick', 160, 'Jinhe'),
(37, 'Lyons', 216, 'Rongcheng'),
(38, 'Becker', 290, 'Daoxu'),
(39, 'Bayside', 550, 'Dobříš'),
(40, 'Stone Corner', 124, 'Gudang'),
(41, 'Almo', 720, 'Hanyuan'),
(42, 'Merchant', 650, 'Artemivs’k'),
(43, 'Independence', 740, 'Anyar'),
(44, 'Crowley', 795, 'Mao'),
(45, 'Orin', 318, 'Kodamachō-kodamaminami'),
(46, 'East', 398, 'Temizhbekskaya'),
(47, 'Hudson', 730, 'Iraquara'),
(48, 'Fulton', 472, 'Vladikavkaz'),
(49, 'Colorado', 286, 'Kronoby'),
(50, 'Schiller', 946, 'Rajhradice'),
(51, 'Veith', 123, 'Paritaman');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(50) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_age` int(50) NOT NULL,
  `employee_gender` varchar(255) NOT NULL,
  `payment_id` int(50) NOT NULL,
  `department_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_age`, `employee_gender`, `payment_id`, `department_id`) VALUES
(3, 'minh', 30, 'Male', 10, 38),
(4, 'Linh', 21, 'Female', 23, 22),
(5, 'Taga', 40, 'Male', 44, 49);

-- --------------------------------------------------------

--
-- Table structure for table `oder`
--

CREATE TABLE `oder` (
  `order_id` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `total` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oder`
--

INSERT INTO `oder` (`order_id`, `price`, `quantity`, `total`, `product_id`, `status`) VALUES
(1, 20, 2, 40, 3, 'Pending'),
(2, 9, 1, 9, 2, 'Done'),
(3, 3, 3, 9, 1, 'Pending'),
(4, 9, 2147483647, 2147483647, 3, 'pending'),
(5, 9, 2147483647, 2147483647, 2, 'done'),
(6, 20, 2147483647, 1201716191, 3, 'done'),
(7, 9, 2147483647, 2147483647, 3, 'pending'),
(8, 20, 2147483647, 254241835, 2, 'pending'),
(9, 20, 2147483647, 2147483647, 1, 'pending'),
(10, 20, 2147483647, 1234632463, 1, 'done'),
(11, 3, 960391922, 536783676, 2, 'pending'),
(12, 3, 2147483647, 2147483647, 3, 'done'),
(13, 9, 2147483647, 2147483647, 2, 'pending'),
(14, 9, 2147483647, 2147483647, 1, 'done'),
(15, 3, 1943455921, 2147483647, 2, 'pending'),
(16, 9, 2147483647, 2147483647, 1, 'done'),
(17, 9, 2147483647, 2147483647, 2, 'done'),
(18, 9, 2147483647, 2147483647, 2, 'done'),
(19, 20, 2147483647, 1710027698, 3, 'pending'),
(20, 20, 2147483647, 2147483647, 3, 'done'),
(21, 3, 2147483647, 1475326691, 3, 'done'),
(22, 3, 1334991122, 2147483647, 3, 'pending'),
(23, 3, 2147483647, 2147483647, 1, 'pending'),
(24, 20, 2147483647, 2147483647, 1, 'pending'),
(25, 3, 2147483647, 907172618, 3, 'done'),
(26, 20, 2147483647, 2147483647, 3, 'pending'),
(27, 20, 2147483647, 2147483647, 3, 'done'),
(28, 20, 1521327393, 2147483647, 3, 'done'),
(29, 3, 2147483647, 509166393, 2, 'pending'),
(30, 3, 2147483647, 2032002783, 3, 'pending'),
(31, 3, 2147483647, 2147483647, 1, 'done'),
(32, 3, 241379049, 2147483647, 1, 'pending'),
(33, 20, 2147483647, 664821205, 2, 'pending'),
(34, 3, 2147483647, 2147483647, 3, 'pending'),
(35, 9, 1578056219, 2147483647, 1, 'done'),
(36, 20, 2147483647, 2147483647, 3, 'done'),
(37, 20, 2147483647, 2087054284, 2, 'pending'),
(38, 20, 2147483647, 2147483647, 2, 'done'),
(39, 20, 2147483647, 2147483647, 1, 'done'),
(40, 9, 2147483647, 2147483647, 3, 'done'),
(41, 9, 2147483647, 1349897778, 2, 'done'),
(42, 3, 1817838957, 2147483647, 2, 'pending'),
(43, 9, 2147483647, 2147483647, 3, 'done'),
(44, 9, 2147483647, 2147483647, 2, 'pending'),
(45, 9, 2147483647, 2147483647, 2, 'done'),
(46, 9, 2147483647, 2147483647, 1, 'done'),
(47, 20, 2147483647, 2147483647, 1, 'pending'),
(48, 3, 2147483647, 2147483647, 1, 'pending'),
(49, 20, 2147483647, 2147483647, 3, 'pending'),
(50, 3, 2147483647, 2147483647, 2, 'pending'),
(51, 9, 2147483647, 2147483647, 1, 'done'),
(43513074, 9, 2147483647, 2147483647, 3, 'done'),
(183943368, 3, 2147483647, 2147483647, 1, 'done'),
(456402113, 20, 2147483647, 2147483647, 1, 'done'),
(458721454, 3, 2147483647, 1214042015, 2, 'done'),
(532792692, 3, 2147483647, 2147483647, 1, 'pending'),
(845184738, 9, 397399668, 2147483647, 3, 'done'),
(977213524, 3, 161914157, 2147483647, 3, 'done'),
(1502020409, 3, 1558041890, 2147483647, 1, 'pending'),
(1827626777, 3, 2147483647, 2147483647, 2, 'done'),
(1909384801, 9, 185906352, 2147483647, 3, 'done'),
(2115803412, 9, 2147483647, 48563022, 3, 'pending'),
(2118032805, 20, 2147483647, 2147483647, 1, 'pending'),
(2147483647, 9, 2147483647, 2147483647, 2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(50) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `tip` int(50) NOT NULL,
  `payment_amount` int(50) NOT NULL,
  `order_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_date`, `payment_method`, `tip`, `payment_amount`, `order_id`) VALUES
(1, '2023-11-08', 'Visa Card', 5, 9, 2),
(2, '2023-11-09', 'Cash', 0, 9, 3),
(3, '2023-10-18', 'MasterCard', 10, 40, 1),
(5, '0000-00-00', 'Mastercard', 35510, 8582924, 2147483647),
(6, '0000-00-00', 'Cash', 27704, 3277004, 2147483647),
(9, '0000-00-00', 'Cash', 74033, 5606506, 2147483647),
(10, '0000-00-00', 'Mastercard', 14227, 9021134, 2147483647),
(11, '0000-00-00', 'Visa Card', 13457, 1503062, 2147483647),
(12, '0000-00-00', 'Cash', 23459, 2711425, 2147483647),
(14, '0000-00-00', 'Cash', 82767, 4120871, 2147483647),
(21, '0000-00-00', 'Cash', 71790, 4696030, 2147483647),
(23, '0000-00-00', 'Cash', 18166, 4043215, 2147483647),
(27, '0000-00-00', 'Cash', 51938, 8565083, 2147483647),
(30, '0000-00-00', 'Cash', 68726, 3018512, 2147483647),
(32, '0000-00-00', 'Cash', 42138, 841471, 2147483647),
(33, '0000-00-00', 'Cash', 20206, 5374150, 2147483647),
(35, '0000-00-00', 'Mastercard', 79913, 4670669, 2147483647),
(36, '0000-00-00', 'Visa Card', 93168, 5858002, 2147483647),
(37, '0000-00-00', 'Mastercard', 12774, 1108930, 2147483647),
(40, '0000-00-00', 'Mastercard', 30297, 2938132, 2147483647),
(41, '0000-00-00', 'Cash', 89143, 9534809, 2147483647),
(43, '0000-00-00', 'Mastercard', 69110, 2292140, 2147483647),
(44, '0000-00-00', 'Visa Card', 75319, 2861469, 2147483647),
(48, '0000-00-00', 'Mastercard', 2979, 9067229, 2147483647),
(50, '0000-00-00', 'Mastercard', 71524, 1567247, 2147483647),
(51, '0000-00-00', 'Mastercard', 97673, 9932876, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `decs` varchar(255) NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `decs`, `quantity`, `price`, `type`) VALUES
(1, 'Basic', 'Apply for a limited number of jobs.\r\nGet advice from our employees', 1, 3, 'Bundles'),
(2, 'Pro', 'Career coaching or personalized advice\r\nIntroduce with some company', 1, 9, 'Bundles'),
(3, 'Vip', 'Offer networking opportunities\r\nAccess to exclusive events or job fairs\r\nInternship, Connect with big companies', 1, 20, 'Bundles');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promote_id` int(50) NOT NULL,
  `promote_name` varchar(255) NOT NULL,
  `datecreate` date NOT NULL,
  `discount` int(50) NOT NULL,
  `giveaway` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promote_id`, `promote_name`, `datecreate`, `discount`, `giveaway`) VALUES
(1, 'kbeilby0', '0000-00-00', 27, 'Lamb - Loin, Trimmed, Boneless'),
(2, 'bcretney1', '0000-00-00', 33, 'V8 - Tropical Blend'),
(3, 'shathway2', '0000-00-00', 91, 'Beef - Bones, Marrow'),
(4, 'edeakin3', '0000-00-00', 22, 'Bacardi Breezer - Tropical'),
(5, 'bmcpeake4', '0000-00-00', 77, 'Rice - 7 Grain Blend'),
(6, 'itrenholme5', '0000-00-00', 73, 'Soup Campbells'),
(7, 'acheel6', '0000-00-00', 22, 'Soap - Mr.clean Floor Soap'),
(8, 'acaitlin7', '0000-00-00', 49, 'Tarragon - Primerba, Paste'),
(9, 'vyouhill8', '0000-00-00', 17, 'Wiberg Cure'),
(10, 'hdunleavy9', '0000-00-00', 55, 'Soup - Campbells Chili Veg'),
(11, 'ldukesa', '0000-00-00', 5, 'Sauce - Gravy, Au Jus, Mix'),
(12, 'lmcgaraghanb', '0000-00-00', 46, 'Chips Potato Reg 43g'),
(13, 'mhacketc', '0000-00-00', 82, 'Peach - Fresh'),
(14, 'pironmongerd', '0000-00-00', 29, 'Corn Shoots'),
(15, 'wkrope', '0000-00-00', 2, 'Tart Shells - Sweet, 4'),
(16, 'mmarxsenf', '0000-00-00', 24, 'Turkey - Whole, Fresh'),
(17, 'mhartupg', '0000-00-00', 49, 'Juice - Grapefruit, 341 Ml'),
(18, 'jsherwoodh', '0000-00-00', 75, 'Bread - Calabrese Baguette'),
(19, 'rquadrioi', '0000-00-00', 41, 'Apple - Custard'),
(20, 'bloriej', '0000-00-00', 95, 'Table Cloth 54x54 White'),
(21, 'emundeek', '0000-00-00', 15, 'Chocolate Eclairs'),
(22, 'emeijerl', '0000-00-00', 13, 'Tobasco Sauce'),
(23, 'sborleasem', '0000-00-00', 100, 'Magnotta - Bel Paese White'),
(24, 'ysteuhlmeyern', '0000-00-00', 27, 'Wine - Conde De Valdemar'),
(25, 'fwidmoreo', '0000-00-00', 48, 'Bar - Granola Trail Mix Fruit Nut'),
(26, 'bsummerillp', '0000-00-00', 24, 'Crab Meat Claw Pasteurise'),
(27, 'wsharkq', '0000-00-00', 15, 'Pickerel - Fillets'),
(28, 'ldarnboroughr', '0000-00-00', 74, 'Tomatoes - Orange'),
(29, 'asmullens', '0000-00-00', 75, 'Potatoes - Mini Red'),
(30, 'clambartont', '0000-00-00', 57, 'Cookie - Oreo 100x2'),
(31, 'bmatesu', '0000-00-00', 42, 'Bagel - Ched Chs Presliced'),
(32, 'mbodechonv', '0000-00-00', 77, 'Schnappes Peppermint - Walker'),
(33, 'aeccottw', '0000-00-00', 26, 'Wine - Prosecco Valdobiaddene'),
(34, 'xdohrx', '0000-00-00', 53, 'Sobe - Berry Energy'),
(35, 'kwaypery', '0000-00-00', 45, 'Sesame Seed Black'),
(36, 'bchaulkz', '0000-00-00', 5, 'Wine - Barossa Valley Estate'),
(37, 'mpitcher10', '0000-00-00', 72, 'Chicken - Breast, 5 - 7 Oz'),
(38, 'fhaighton11', '0000-00-00', 61, 'Fuji Apples'),
(39, 'gcurme12', '0000-00-00', 5, 'Beets - Pickled'),
(40, 'mgillooly13', '0000-00-00', 86, 'Turnip - White, Organic'),
(41, 'cpendred14', '0000-00-00', 71, 'Chocolate - Milk, Callets'),
(42, 'jlummasana15', '0000-00-00', 54, 'Pear - Asian'),
(43, 'dwillingale16', '0000-00-00', 31, 'Gelatine Powder'),
(44, 'bkeane17', '0000-00-00', 19, 'Cream - 35%'),
(45, 'khobbema18', '0000-00-00', 4, 'Vermouth - White, Cinzano'),
(46, 'kshipston19', '0000-00-00', 8, 'Anisette - Mcguiness'),
(47, 'fsoden1a', '0000-00-00', 41, 'Wine - Clavet Saint Emilion'),
(48, 'laughton1b', '0000-00-00', 67, 'Cheese - Grana Padano'),
(49, 'jorigin1c', '0000-00-00', 93, 'Cloves - Whole'),
(50, 'mlethbury1d', '0000-00-00', 10, 'Goat - Leg'),
(51, 'akedie1e', '0000-00-00', 44, 'Hot Choc Vending'),
(52, 'mbuyers1f', '0000-00-00', 66, 'Mix - Cocktail Ice Cream'),
(53, 'bpook1g', '0000-00-00', 1, 'Wine - Red, Harrow Estates, Cab'),
(54, 'srummings1h', '0000-00-00', 61, 'Bread - Italian Roll With Herbs'),
(55, 'ncunradi1i', '0000-00-00', 5, 'Cakes Assorted'),
(56, 'phavard1j', '0000-00-00', 88, 'Pop - Club Soda Can'),
(57, 'lcressingham1k', '0000-00-00', 88, 'Tea - Jasmin Green'),
(58, 'adodle1l', '0000-00-00', 6, 'Napkin - Cocktail,beige 2 - Ply'),
(59, 'mjahns1m', '0000-00-00', 39, 'Beef - Texas Style Burger'),
(60, 'iquodling1n', '0000-00-00', 95, 'Cake - Lemon Chiffon'),
(61, 'ngronou1o', '0000-00-00', 12, 'Flower - Commercial Spider'),
(62, 'mboosey1p', '0000-00-00', 67, 'Bread - Olive'),
(63, 'bchessill1q', '0000-00-00', 17, 'Eggplant Oriental'),
(64, 'aknifton1r', '0000-00-00', 62, 'Soup - Campbells Tomato Ravioli'),
(65, 'lbrock1s', '0000-00-00', 28, 'Aspic - Amber'),
(66, 'ialmack1t', '0000-00-00', 89, 'Cheese - Parmigiano Reggiano'),
(67, 'mgudeman1u', '0000-00-00', 5, 'Skirt - 29 Foot'),
(68, 'lmccarry1v', '0000-00-00', 19, 'Soup - Cream Of Broccoli, Dry'),
(69, 'ncowerd1w', '0000-00-00', 81, 'Pastry - Butterscotch Baked'),
(70, 'ygilman1x', '0000-00-00', 98, 'Wine - Ej Gallo Sonoma'),
(71, 'zsleep1y', '0000-00-00', 70, 'Schnappes - Peach, Walkers'),
(72, 'dlennie1z', '0000-00-00', 64, 'Table Cloth 81x81 Colour'),
(73, 'ezecchi20', '0000-00-00', 71, 'Garam Masala Powder'),
(74, 'dbiggin21', '0000-00-00', 72, 'Jagermeister'),
(75, 'jmanuel22', '0000-00-00', 1, 'Crab - Dungeness, Whole'),
(76, 'rbradock23', '0000-00-00', 4, 'Cake - Miini Cheesecake Cherry'),
(77, 'gmckissack24', '0000-00-00', 74, 'Lemon Grass'),
(78, 'pwaliszewski25', '0000-00-00', 43, 'Glove - Cutting'),
(79, 'adelacourt26', '0000-00-00', 62, 'Cucumber - English'),
(80, 'acornely27', '0000-00-00', 82, 'Beer - Fruli'),
(81, 'mcolebrook28', '0000-00-00', 76, 'Turkey Leg With Drum And Thigh'),
(82, 'agardiner29', '0000-00-00', 44, 'Puree - Passion Fruit'),
(83, 'dzamorano2a', '0000-00-00', 52, 'Pepper - Paprika, Hungarian'),
(84, 'mchapelle2b', '0000-00-00', 48, 'Pea - Snow'),
(85, 'lamoss2c', '0000-00-00', 30, 'Wine - Stoneliegh Sauvignon'),
(86, 'sbetty2d', '0000-00-00', 100, 'Ostrich - Fan Fillet'),
(87, 'lahlf2e', '0000-00-00', 22, 'Ice Cream - Turtles Stick Bar'),
(88, 'jboulstridge2f', '0000-00-00', 13, 'Ecolab Crystal Fusion'),
(89, 'olockey2g', '0000-00-00', 3, 'Sping Loaded Cup Dispenser'),
(90, 'kgatman2h', '0000-00-00', 28, 'Sugar - Individual Portions'),
(91, 'jtunsley2i', '0000-00-00', 6, 'Squid - U 5'),
(92, 'ccamacke2j', '0000-00-00', 17, 'Sausage - Chorizo'),
(93, 'aburdis2k', '0000-00-00', 51, 'Cheese - Goat'),
(94, 'ncandish2l', '0000-00-00', 32, 'Bagel - Whole White Sesame'),
(95, 'jchstney2m', '0000-00-00', 95, 'Wine - Chianti Classica Docg'),
(96, 'rannon2n', '0000-00-00', 4, 'Cheese - Bocconcini'),
(97, 'hdzeniskevich2o', '0000-00-00', 19, 'Potatoes - Yukon Gold, 80 Ct'),
(98, 'cworham2p', '0000-00-00', 26, 'Thyme - Dried'),
(99, 'amiddup2q', '0000-00-00', 37, 'Calypso - Black Cherry Lemonade'),
(100, 'lfitzer2r', '0000-00-00', 22, 'Lamb Rack Frenched Australian'),
(101, 'sbencher2s', '0000-00-00', 47, 'Bamboo Shoots - Sliced'),
(102, 'gtender2t', '0000-00-00', 91, 'Cheese Cheddar Processed'),
(103, 'lpartrick2u', '0000-00-00', 5, 'Ham - Proscuitto'),
(104, 'amerill2v', '0000-00-00', 71, 'Oil - Cooking Spray'),
(105, 'sgladdor2w', '0000-00-00', 62, 'Cheese - Shred Cheddar / Mozza'),
(106, 'cconeau2x', '0000-00-00', 58, 'Spinach - Frozen'),
(107, 'mbeminster2y', '0000-00-00', 75, 'Crab - Imitation Flakes'),
(108, 'fthackeray2z', '0000-00-00', 95, 'Gingerale - Schweppes, 355 Ml'),
(109, 'chaith30', '0000-00-00', 29, 'Cheese - St. Andre'),
(110, 'amackim31', '0000-00-00', 69, 'Pickle - Dill'),
(111, 'jkenson32', '0000-00-00', 48, 'Rhubarb'),
(112, 'rstockford33', '0000-00-00', 75, 'Magnotta - Bel Paese White'),
(113, 'trabjohn34', '0000-00-00', 82, 'Sage - Fresh'),
(114, 'gervine35', '0000-00-00', 43, 'Potatoes - Pei 10 Oz'),
(115, 'gwall36', '0000-00-00', 31, 'Peas Snow'),
(116, 'sfransson37', '0000-00-00', 99, 'Wine - Magnotta - Belpaese'),
(117, 'vweatherhogg38', '0000-00-00', 42, 'Beef Striploin Aaa'),
(118, 'zscarborough39', '0000-00-00', 39, 'Red Currants'),
(119, 'njanosevic3a', '0000-00-00', 63, 'Buffalo - Striploin'),
(120, 'apettus3b', '0000-00-00', 6, 'Bread - Crusty Italian Poly'),
(121, 'dnajara3c', '0000-00-00', 43, 'Cheese Cloth No 100'),
(122, 'tpapen3d', '0000-00-00', 61, 'Pepper Squash'),
(123, 'rmcleod3e', '0000-00-00', 59, 'Dome Lid Clear P92008h'),
(124, 'jparslow3f', '0000-00-00', 43, 'Cookies - Oreo, 4 Pack'),
(125, 'ltoller3g', '0000-00-00', 5, 'Pasta - Fettuccine, Egg, Fresh'),
(126, 'yhammond3h', '0000-00-00', 44, 'Sour Puss Sour Apple'),
(127, 'cllewelyn3i', '0000-00-00', 23, 'Pepper - Paprika, Hungarian'),
(128, 'dibbitson3j', '0000-00-00', 0, 'Temperature Recording Station'),
(129, 'ppickring3k', '0000-00-00', 71, 'Energy - Boo - Koo'),
(130, 'adancer3l', '0000-00-00', 35, 'Rice - Wild'),
(131, 'bbortolotti3m', '0000-00-00', 100, 'Apple - Fuji'),
(132, 'vgarmons3n', '0000-00-00', 80, 'Kiwi'),
(133, 'ccottage3o', '0000-00-00', 79, 'Wine - Ej Gallo Sierra Valley'),
(134, 'ssamwayes3p', '0000-00-00', 7, 'Heavy Duty Dust Pan'),
(135, 'rdanigel3q', '0000-00-00', 33, 'Bag Stand'),
(136, 'rrizzi3r', '0000-00-00', 90, 'Longos - Grilled Veg Sandwiches'),
(137, 'lkeat3s', '0000-00-00', 29, 'Vinegar - Balsamic, White'),
(138, 'ameindl3t', '0000-00-00', 65, 'Chicken - Soup Base'),
(139, 'lcrocombe3u', '0000-00-00', 5, 'Peppercorns - Pink'),
(140, 'fwoltman3v', '0000-00-00', 54, 'Wine - Rioja Campo Viejo'),
(141, 'fduckhouse3w', '0000-00-00', 70, 'Chocolate - Sugar Free Semi Choc'),
(142, 'fhague3x', '0000-00-00', 55, 'Wine - Zonnebloem Pinotage'),
(143, 'gcarmen3y', '0000-00-00', 66, 'Tomatoes - Vine Ripe, Yellow'),
(144, 'dmartignon3z', '0000-00-00', 18, 'Appetizer - Lobster Phyllo Roll'),
(145, 'sibbitt40', '0000-00-00', 25, 'Syrup - Monin, Irish Cream'),
(146, 'amoyne41', '0000-00-00', 26, 'Potatoes - Purple, Organic'),
(147, 'dhardwin42', '0000-00-00', 31, 'Oregano - Fresh'),
(148, 'kduckers43', '0000-00-00', 87, 'Juice - Happy Planet'),
(149, 'pangelo44', '0000-00-00', 49, 'Duck - Breast'),
(150, 'asteed45', '0000-00-00', 8, 'Wine - Zinfandel California 2002'),
(151, 'gmacallaster46', '0000-00-00', 7, 'Shortbread - Cookie Crumbs'),
(152, 'ledwins47', '0000-00-00', 47, 'Tea - Lemon Green Tea'),
(153, 'dschimank48', '0000-00-00', 65, 'Mousse - Mango'),
(154, 'mfulkes49', '0000-00-00', 32, 'Crab - Dungeness, Whole, live'),
(155, 'peggerton4a', '0000-00-00', 69, 'Corn - Mini'),
(156, 'nargue4b', '0000-00-00', 39, 'Rhubarb'),
(157, 'mhoulahan4c', '0000-00-00', 5, 'Lid Coffeecup 12oz D9542b'),
(158, 'msneaker4d', '0000-00-00', 78, 'Veal - Round, Eye Of'),
(159, 'ijeppensen4e', '0000-00-00', 32, 'Cilantro / Coriander - Fresh'),
(160, 'rolivera4f', '0000-00-00', 34, 'Wine - White, Lindemans Bin 95'),
(161, 'wgregoriou4g', '0000-00-00', 81, 'Bread - Frozen Basket Variety'),
(162, 'todonoghue4h', '0000-00-00', 88, 'Petite Baguette'),
(163, 'osoldner4i', '0000-00-00', 60, 'Flour - Strong'),
(164, 'eokenny4j', '0000-00-00', 45, 'Chocolate Bar - Oh Henry'),
(165, 'tfettis4k', '0000-00-00', 74, 'Beef - Short Loin'),
(166, 'jvaud4l', '0000-00-00', 63, 'Spice - Montreal Steak Spice'),
(167, 'dmalcolm4m', '0000-00-00', 41, 'Bread - Calabrese Baguette'),
(168, 'sshearsby4n', '0000-00-00', 16, 'Worcestershire Sauce'),
(169, 'oloveland4o', '0000-00-00', 61, 'Sausage - Breakfast'),
(170, 'mspalding4p', '0000-00-00', 55, 'Beef - Bones, Marrow'),
(171, 'ccordero4q', '0000-00-00', 76, 'Cauliflower'),
(172, 'bgarber4r', '0000-00-00', 46, 'Bread - Italian Roll With Herbs'),
(173, 'wclover4s', '0000-00-00', 11, 'Crab - Back Fin Meat, Canned'),
(174, 'rdomm4t', '0000-00-00', 8, 'Crab - Back Fin Meat, Canned'),
(175, 'gwearden4u', '0000-00-00', 67, 'Bread - Rosemary Focaccia'),
(176, 'rskahill4v', '0000-00-00', 60, 'Strawberries'),
(177, 'mjacquemy4w', '0000-00-00', 44, 'Table Cloth 62x114 White'),
(178, 'jgribbon4x', '0000-00-00', 93, 'Strawberries'),
(179, 'bthurstance4y', '0000-00-00', 2, 'Fruit Salad Deluxe'),
(180, 'vdietsche4z', '0000-00-00', 23, 'Oil - Shortening - All - Purpose'),
(181, 'rpundy50', '0000-00-00', 32, 'Monkfish - Fresh'),
(182, 'jdixcee51', '0000-00-00', 32, 'Octopus - Baby, Cleaned'),
(183, 'mgiacomuzzo52', '0000-00-00', 29, 'Pasta - Penne Primavera, Single'),
(184, 'fdecristoforo53', '0000-00-00', 12, 'Shichimi Togarashi Peppeers'),
(185, 'lcrees54', '0000-00-00', 24, 'Kale - Red'),
(186, 'cglassman55', '0000-00-00', 75, 'Cheese - Montery Jack'),
(187, 'hmichelet56', '0000-00-00', 77, 'Cheese - Brie Roitelet'),
(188, 'lkahler57', '0000-00-00', 95, 'Raisin - Golden'),
(189, 'gremer58', '0000-00-00', 28, 'Wine - Mondavi Coastal Private'),
(190, 'bpursehouse59', '0000-00-00', 61, 'Doilies - 10, Paper'),
(191, 'sskones5a', '0000-00-00', 3, 'Wine - Riesling Dr. Pauly'),
(192, 'ebortolomei5b', '0000-00-00', 91, 'Bar - Granola Trail Mix Fruit Nut'),
(193, 'vkinchington5c', '0000-00-00', 5, 'Coffee - Decaffeinato Coffee'),
(194, 'bbonnier5d', '0000-00-00', 72, 'Water - Mineral, Carbonated'),
(195, 'csteen5e', '0000-00-00', 47, 'Tomatoes Tear Drop'),
(196, 'friddel5f', '0000-00-00', 58, 'Milk 2% 500 Ml'),
(197, 'kcrinion5g', '0000-00-00', 73, 'Lamb - Leg, Diced'),
(198, 'kpagelsen5h', '0000-00-00', 1, 'Fudge - Cream Fudge'),
(199, 'fedmund5i', '0000-00-00', 97, 'Compound - Pear'),
(200, 'tdriscoll5j', '0000-00-00', 23, 'Bread - White, Sliced'),
(201, 'tskuse5k', '0000-00-00', 54, 'Wine - Jafflin Bourgongone'),
(202, 'bpirri5l', '0000-00-00', 31, 'Beef - Salted'),
(203, 'bhughill5m', '0000-00-00', 84, 'Goat - Leg'),
(204, 'cshama5n', '0000-00-00', 71, 'Syrup - Monin - Passion Fruit'),
(205, 'ssatteford5o', '0000-00-00', 14, 'Pork - Sausage Casing'),
(206, 'dskocroft5p', '0000-00-00', 36, 'Energy Drink - Redbull 355ml'),
(207, 'ltollerfield5q', '0000-00-00', 94, 'Mushroom - Portebello'),
(208, 'mandell5r', '0000-00-00', 84, 'Tomatoes - Diced, Canned'),
(209, 'ahoppner5s', '0000-00-00', 89, 'Cookies - Fortune'),
(210, 'kmquhan5t', '0000-00-00', 79, 'Tofu - Firm'),
(211, 'bbridle5u', '0000-00-00', 4, 'Muffin - Mix - Bran And Maple 15l'),
(212, 'bfeatherstone5v', '0000-00-00', 20, 'Boogies'),
(213, 'hstudders5w', '0000-00-00', 71, 'Truffle Cups - Red'),
(214, 'kseckington5x', '0000-00-00', 53, 'Bread - 10 Grain Parisian'),
(215, 'smcgahern5y', '0000-00-00', 61, 'Wine - Kwv Chenin Blanc South'),
(216, 'dluckhurst5z', '0000-00-00', 15, 'Ham - Cooked Italian'),
(217, 'alevin60', '0000-00-00', 87, 'Beer - True North Lager'),
(218, 'lcarnelley61', '0000-00-00', 77, 'Tea - Herbal - 6 Asst'),
(219, 'wupton62', '0000-00-00', 39, 'Tomatoes - Grape'),
(220, 'ilantry63', '0000-00-00', 26, 'Melon - Watermelon Yellow'),
(221, 'ksandcroft64', '0000-00-00', 45, 'Pears - Bosc'),
(222, 'karmatys65', '0000-00-00', 58, 'Aspic - Amber'),
(223, 'cscrivens66', '0000-00-00', 72, 'Cod - Fillets'),
(224, 'cbalasini67', '0000-00-00', 97, 'Mangoes'),
(225, 'vtout68', '0000-00-00', 83, 'Bread - Onion Focaccia'),
(226, 'gvairow69', '0000-00-00', 0, 'Onion - Dried'),
(227, 'demps6a', '0000-00-00', 38, 'Appetiser - Bought'),
(228, 'madamsson6b', '0000-00-00', 33, 'Honey - Liquid'),
(229, 'scuphus6c', '0000-00-00', 36, 'Quail - Whole, Bone - In'),
(230, 'mtopper6d', '0000-00-00', 9, 'Veal - Round, Eye Of'),
(231, 'ckline6e', '0000-00-00', 16, 'Beer - Sleemans Cream Ale'),
(232, 'amerrifield6f', '0000-00-00', 58, 'Clam - Cherrystone'),
(233, 'bsurphliss6g', '0000-00-00', 41, 'Rice - Sushi'),
(234, 'vantalffy6h', '0000-00-00', 78, 'Beef - Chuck, Boneless'),
(235, 'lseaman6i', '0000-00-00', 15, 'Wine - Casablanca Valley'),
(236, 'mbuckler6j', '0000-00-00', 11, 'Dried Figs'),
(237, 'ksnibson6k', '0000-00-00', 24, 'Oxtail - Cut'),
(238, 'mwaterman6l', '0000-00-00', 70, 'Cape Capensis - Fillet'),
(239, 'losmund6m', '0000-00-00', 23, 'Eel Fresh'),
(240, 'cscone6n', '0000-00-00', 65, 'Cardamon Ground'),
(241, 'sdewinton6o', '0000-00-00', 33, 'Containter - 3oz Microwave Rect.'),
(242, 'wgoatcher6p', '0000-00-00', 52, 'Onions - Dried, Chopped'),
(243, 'morum6q', '0000-00-00', 83, 'Wine - German Riesling'),
(244, 'sbrugman6r', '0000-00-00', 70, 'Papayas'),
(245, 'fspearing6s', '0000-00-00', 3, 'Tia Maria'),
(246, 'jhearnaman6t', '0000-00-00', 46, 'Limes'),
(247, 'stheriot6u', '0000-00-00', 58, 'Potatoes - Instant, Mashed'),
(248, 'ldesmond6v', '0000-00-00', 28, 'Chinese Foods - Pepper Beef'),
(249, 'ksighart6w', '0000-00-00', 80, 'Pepper - Chipotle, Canned'),
(250, 'cpermain6x', '0000-00-00', 84, 'Cheese - Woolwich Goat, Log'),
(251, 'lcartmael6y', '0000-00-00', 84, 'Mustard Prepared'),
(252, 'hfolbig6z', '0000-00-00', 35, 'Daikon Radish'),
(253, 'hhayhurst70', '0000-00-00', 49, 'Lamb Leg - Bone - In Nz'),
(254, 'mdunkerley71', '0000-00-00', 83, 'Cheese - Taleggio D.o.p.'),
(255, 'afewings72', '0000-00-00', 73, 'Shrimp - Prawn'),
(256, 'fmatieu73', '0000-00-00', 79, 'Squeeze Bottle'),
(257, 'ejenicek74', '0000-00-00', 80, 'Nut - Walnut, Pieces'),
(258, 'wriding75', '0000-00-00', 92, 'Skewers - Bamboo'),
(259, 'gbenwell76', '0000-00-00', 80, 'Puree - Pear'),
(260, 'tcottill77', '0000-00-00', 80, 'Lentils - Green Le Puy'),
(261, 'dsavile78', '0000-00-00', 71, 'Flavouring - Rum'),
(262, 'goldnall79', '0000-00-00', 54, 'Chicken - White Meat With Tender'),
(263, 'lcodling7a', '0000-00-00', 3, 'Mussels - Cultivated'),
(264, 'jsoltan7b', '0000-00-00', 12, 'Cranberries - Fresh'),
(265, 'kawty7c', '0000-00-00', 59, 'Saskatoon Berries - Frozen'),
(266, 'dridde7d', '0000-00-00', 29, 'Mushroom - Shitake, Dry'),
(267, 'aaveries7e', '0000-00-00', 63, 'Potatoes - Mini Red'),
(268, 'oscamadin7f', '0000-00-00', 95, 'Eel Fresh'),
(269, 'hadamek7g', '0000-00-00', 39, 'Tomatoes - Roma'),
(270, 'avallance7h', '0000-00-00', 69, 'Tarragon - Primerba, Paste'),
(271, 'gsieur7i', '0000-00-00', 94, 'Goulash Seasoning'),
(272, 'mdibatista7j', '0000-00-00', 57, 'Bread - Raisin Walnut Oval'),
(273, 'kgilstin7k', '0000-00-00', 49, 'Cheese - Camembert'),
(274, 'lvaudin7l', '0000-00-00', 80, 'Pasta - Bauletti, Chicken White'),
(275, 'rconeybeer7m', '0000-00-00', 13, 'Pepper Squash'),
(276, 'cpattrick7n', '0000-00-00', 34, 'Beans - Green'),
(277, 'ykohrt7o', '0000-00-00', 43, 'Jameson Irish Whiskey'),
(278, 'sgelderd7p', '0000-00-00', 88, 'Seaweed Green Sheets'),
(279, 'athorouggood7q', '0000-00-00', 37, 'Wine - Prem Select Charddonany'),
(280, 'ptowler7r', '0000-00-00', 44, 'Pepper - Julienne, Frozen'),
(281, 'mjerzyk7s', '0000-00-00', 82, 'Flavouring - Orange'),
(282, 'agroucutt7t', '0000-00-00', 55, 'Towel Dispenser'),
(283, 'dingliby7u', '0000-00-00', 51, 'Huck White Towels'),
(284, 'geveling7v', '0000-00-00', 20, 'Wine - Pinot Noir Pond Haddock'),
(285, 'mdowker7w', '0000-00-00', 59, 'V8 Splash Strawberry Kiwi'),
(286, 'nlaborda7x', '0000-00-00', 78, 'Garlic Powder'),
(287, 'mflegg7y', '0000-00-00', 95, 'Bread - Raisin Walnut Oval'),
(288, 'vbrechin7z', '0000-00-00', 17, 'Pork - Liver'),
(289, 'fhawket80', '0000-00-00', 23, 'Steel Wool S.o.s'),
(290, 'sbabcock81', '0000-00-00', 91, 'Pickle - Dill'),
(291, 'mdrohane82', '0000-00-00', 7, 'Milk - Condensed'),
(292, 'ebaylis83', '0000-00-00', 66, 'Coriander - Ground'),
(293, 'ealthrop84', '0000-00-00', 30, 'Oregano - Fresh'),
(294, 'dgiabucci85', '0000-00-00', 19, 'Calypso - Pineapple Passion'),
(295, 'mmacaskill86', '0000-00-00', 33, 'Squeeze Bottle'),
(296, 'ofass87', '0000-00-00', 97, 'Shopper Bag - S - 4'),
(297, 'adallison88', '0000-00-00', 82, 'Cheese - Swiss Sliced'),
(298, 'dbudgen89', '0000-00-00', 80, 'Lid Tray - 16in Dome'),
(299, 'poury8a', '0000-00-00', 24, 'Tray - 16in Rnd Blk'),
(300, 'ptebbet8b', '0000-00-00', 99, 'Pastry - Lemon Danish - Mini'),
(301, 'kpumfrett8c', '0000-00-00', 33, 'Dry Ice'),
(302, 'nesseby8d', '0000-00-00', 47, 'Cotton Wet Mop 16 Oz'),
(303, 'iheathwood8e', '0000-00-00', 34, 'Wine - George Duboeuf Rose'),
(304, 'nrosenfarb8f', '0000-00-00', 91, 'Spaghetti Squash'),
(305, 'aekins8g', '0000-00-00', 58, 'Lamb Rack - Ontario'),
(306, 'abromehed8h', '0000-00-00', 66, 'Alize Red Passion'),
(307, 'ecaplen8i', '0000-00-00', 24, 'Chick Peas - Canned'),
(308, 'zjoskovitch8j', '0000-00-00', 43, 'Chef Hat 20cm'),
(309, 'cbaverstock8k', '0000-00-00', 22, 'Chicken - Bones'),
(310, 'qgallardo8l', '0000-00-00', 27, 'Chicken - Whole'),
(311, 'jsimonetti8m', '0000-00-00', 42, 'Bag Clear 10 Lb'),
(312, 'rquerrard8n', '0000-00-00', 52, 'Cheese - Manchego, Spanish'),
(313, 'igold8o', '0000-00-00', 90, 'Southern Comfort'),
(314, 'igowlett8p', '0000-00-00', 6, 'Calypso - Black Cherry Lemonade'),
(315, 'mpluthero8q', '0000-00-00', 74, 'Sweet Pea Sprouts'),
(316, 'dbacop8r', '0000-00-00', 19, 'Cleaner - Lime Away'),
(317, 'slikly8s', '0000-00-00', 28, 'Tortillas - Flour, 8'),
(318, 'rdefraine8t', '0000-00-00', 25, 'Samosa - Veg'),
(319, 'kdethloff8u', '0000-00-00', 61, 'Honey - Lavender'),
(320, 'smoulsdale8v', '0000-00-00', 44, 'Bread - Olive'),
(321, 'bquantick8w', '0000-00-00', 26, 'Kellogs All Bran Bars'),
(322, 'mcalliss8x', '0000-00-00', 49, 'Oil - Food, Lacquer Spray'),
(323, 'kevason8y', '0000-00-00', 69, 'Chicken - Bones'),
(324, 'bgrabban8z', '0000-00-00', 43, 'Bread - Crusty Italian Poly'),
(325, 'itoon90', '0000-00-00', 75, 'Water - Mineral, Carbonated'),
(326, 'pcleveley91', '0000-00-00', 85, 'Sausage - Blood Pudding'),
(327, 'schinge92', '0000-00-00', 4, 'Shrimp - Black Tiger 16/20'),
(328, 'mpires93', '0000-00-00', 51, 'Pail For Lid 1537'),
(329, 'mdemageard94', '0000-00-00', 16, 'Pepper - Chili Powder'),
(330, 'obleier95', '0000-00-00', 99, 'Mushroom - Porcini Frozen'),
(331, 'ttollett96', '0000-00-00', 65, 'Beef - Chuck, Boneless'),
(332, 'cingold97', '0000-00-00', 79, 'Tomatoes - Hot House'),
(333, 'awinckle98', '0000-00-00', 47, 'Icecream Bar - Del Monte'),
(334, 'phammerberg99', '0000-00-00', 98, 'Tomatoes'),
(335, 'petoile9a', '0000-00-00', 79, 'Sausage - Andouille'),
(336, 'jreaveley9b', '0000-00-00', 7, 'Water - Perrier'),
(337, 'jkilshall9c', '0000-00-00', 28, 'Lettuce Romaine Chopped'),
(338, 'iwanless9d', '0000-00-00', 88, 'Fuji Apples'),
(339, 'rmurkin9e', '0000-00-00', 76, 'Soup - Campbells, Chix Gumbo'),
(340, 'mcreaney9f', '0000-00-00', 0, 'Flour - Whole Wheat'),
(341, 'tcoie9g', '0000-00-00', 60, 'Watercress'),
(342, 'obutterley9h', '0000-00-00', 69, 'Tea - English Breakfast'),
(343, 'gface9i', '0000-00-00', 30, 'Spring Roll Veg Mini'),
(344, 'lkoenen9j', '0000-00-00', 35, 'Aspic - Amber'),
(345, 'amccaughey9k', '0000-00-00', 90, 'Cheese - Parmesan Grated'),
(346, 'esyms9l', '0000-00-00', 33, 'Honey - Lavender'),
(347, 'cbonas9m', '0000-00-00', 37, 'Muffin - Blueberry Individual'),
(348, 'nbrymner9n', '0000-00-00', 19, 'Beef - Top Sirloin - Aaa'),
(349, 'sjelley9o', '0000-00-00', 34, 'Gingerale - Diet - Schweppes'),
(350, 'ddemeis9p', '0000-00-00', 28, 'Tuna - Yellowfin'),
(351, 'efontanet9q', '0000-00-00', 13, 'Scallops - 10/20'),
(352, 'bfeild9r', '0000-00-00', 81, 'Peas - Pigeon, Dry'),
(353, 'amaides9s', '0000-00-00', 54, 'Pepper - Paprika, Spanish'),
(354, 'dbore9t', '0000-00-00', 68, 'Cabbage Roll'),
(355, 'gtowey9u', '0000-00-00', 15, 'Cheese - Valancey'),
(356, 'alestor9v', '0000-00-00', 69, 'Beer - Corona'),
(357, 'rblannin9w', '0000-00-00', 58, 'Grand Marnier'),
(358, 'zocannon9x', '0000-00-00', 38, 'The Pop Shoppe - Grape'),
(359, 'alearoyde9y', '0000-00-00', 13, 'Bread - Burger'),
(360, 'nmctear9z', '0000-00-00', 11, 'Wine - Lamancha Do Crianza'),
(361, 'gsemorada0', '0000-00-00', 65, 'Beef - Tenderloin Tails'),
(362, 'mlancastlea1', '0000-00-00', 64, 'Breakfast Quesadillas'),
(363, 'clocktona2', '0000-00-00', 12, 'Beer - Rickards Red'),
(364, 'kbagnolda3', '0000-00-00', 71, 'Ecolab - Balanced Fusion'),
(365, 'dkoscheka4', '0000-00-00', 50, 'Oil - Shortening,liqud, Fry'),
(366, 'msauniera5', '0000-00-00', 5, 'Cake - Pancake'),
(367, 'mbertwistlea6', '0000-00-00', 65, 'Smirnoff Green Apple Twist'),
(368, 'selcoata7', '0000-00-00', 88, 'Guava'),
(369, 'eprudhama8', '0000-00-00', 77, 'Wine - Red, Black Opal Shiraz'),
(370, 'dgermainea9', '0000-00-00', 30, 'Pastry - Raisin Muffin - Mini'),
(371, 'kferreiraaa', '0000-00-00', 63, 'Water - Tonic'),
(372, 'lestableab', '0000-00-00', 74, 'Pepper - Red Bell'),
(373, 'areadingac', '0000-00-00', 50, 'Pork - Butt, Boneless'),
(374, 'csylvainead', '0000-00-00', 35, 'Chicken - Wieners'),
(375, 'rpunchae', '0000-00-00', 99, 'Vinegar - Raspberry'),
(376, 'smarietonaf', '0000-00-00', 39, 'Fork - Plastic'),
(377, 'wpittemag', '0000-00-00', 4, 'Salt - Seasoned'),
(378, 'ekillfordah', '0000-00-00', 2, 'Squeeze Bottle'),
(379, 'hsantoriai', '0000-00-00', 0, 'Fib N9 - Prague Powder'),
(380, 'luttridgeaj', '0000-00-00', 25, 'Oil - Canola'),
(381, 'iaimeak', '0000-00-00', 18, 'Juice Peach Nectar'),
(382, 'edulakeal', '0000-00-00', 41, 'Veal - Provimi Inside'),
(383, 'eferencziam', '0000-00-00', 53, 'Beef Tenderloin Aaa'),
(384, 'hreddingtonan', '0000-00-00', 57, 'Sausage - Breakfast'),
(385, 'mhoffmanao', '0000-00-00', 4, 'Table Cloth 90x90 Colour'),
(386, 'ckellingap', '0000-00-00', 31, 'Pepper - Red Thai'),
(387, 'mmartinovicaq', '0000-00-00', 80, 'Aromat Spice / Seasoning'),
(388, 'ctoppesar', '0000-00-00', 38, 'Soup - Canadian Pea, Dry Mix'),
(389, 'ldarrachas', '0000-00-00', 92, 'Crab - Dungeness, Whole, live'),
(390, 'ctibbsat', '0000-00-00', 50, 'Tomato Puree'),
(391, 'skasmanau', '0000-00-00', 37, 'Lid - 10,12,16 Oz'),
(392, 'sharceav', '0000-00-00', 75, 'Capon - Whole'),
(393, 'sdurantaw', '0000-00-00', 85, 'Tea - Herbal Sweet Dreams'),
(394, 'gwilhelmyax', '0000-00-00', 72, 'Rum - Dark, Bacardi, Black'),
(395, 'canglishay', '0000-00-00', 35, 'Nut - Almond, Blanched, Whole'),
(396, 'cgrimsdithaz', '0000-00-00', 20, 'Cut Wakame - Hanawakaba'),
(397, 'swimsb0', '0000-00-00', 14, 'Beef - Kindney, Whole'),
(398, 'gpuckettb1', '0000-00-00', 22, 'Bread Bowl Plain'),
(399, 'rmeneghellib2', '0000-00-00', 82, 'Beer - Fruli'),
(400, 'rrollb3', '0000-00-00', 34, 'Fish - Artic Char, Cold Smoked'),
(401, 'fdragoeb4', '0000-00-00', 41, 'Brandy - Orange, Mc Guiness'),
(402, 'rlaughreyb5', '0000-00-00', 40, 'Beef - Tenderloin - Aa'),
(403, 'ggittensb6', '0000-00-00', 85, 'Oysters - Smoked'),
(404, 'dbutfieldb7', '0000-00-00', 28, 'Beef - Tenderloin - Aa'),
(405, 'xclemendetb8', '0000-00-00', 27, 'Pike - Frozen Fillet'),
(406, 'nlarwayb9', '0000-00-00', 28, 'Soup Knorr Chili With Beans'),
(407, 'ebirksba', '0000-00-00', 32, 'Beer - Fruli'),
(408, 'finnocentibb', '0000-00-00', 63, 'Bread - Multigrain, Loaf'),
(409, 'gantognazzibc', '0000-00-00', 40, 'Compound - Mocha'),
(410, 'pbaistowbd', '0000-00-00', 45, 'Wine - Vineland Estate Semi - Dry'),
(411, 'slezemorebe', '0000-00-00', 22, 'Horseradish - Prepared'),
(412, 'derteltbf', '0000-00-00', 52, 'Wine - Sogrape Mateus Rose'),
(413, 'ccrimpbg', '0000-00-00', 7, 'Onions - Dried, Chopped'),
(414, 'ideansbh', '0000-00-00', 72, 'Tortillas - Flour, 12'),
(415, 'askermanbi', '0000-00-00', 75, 'Cinnamon - Ground'),
(416, 'svialsbj', '0000-00-00', 69, 'Cookies - Englishbay Oatmeal'),
(417, 'khawkswoodbk', '0000-00-00', 90, 'Goulash Seasoning'),
(418, 'otchaikovskybl', '0000-00-00', 2, 'Toothpick Frilled'),
(419, 'pstevanibm', '0000-00-00', 74, 'Graham Cracker Mix'),
(420, 'noxbebn', '0000-00-00', 47, 'Lettuce - Arugula'),
(421, 'cclaybo', '0000-00-00', 51, 'Vodka - Hot, Lnferno'),
(422, 'tkatzmannbp', '0000-00-00', 91, 'Cape Capensis - Fillet'),
(423, 'hwillgoosebq', '0000-00-00', 65, 'Pasta - Lasagne, Fresh'),
(424, 'smasdingbr', '0000-00-00', 89, 'Rum - Coconut, Malibu'),
(425, 'cmcwilliamsbs', '0000-00-00', 35, 'Sugar - Monocystal / Rock'),
(426, 'wblickbt', '0000-00-00', 63, 'Mushroom - Crimini'),
(427, 'cliptrotbu', '0000-00-00', 18, 'Anchovy In Oil'),
(428, 'aoiseaubv', '0000-00-00', 94, 'Limes'),
(429, 'amcallbw', '0000-00-00', 87, 'Mustard - Pommery'),
(430, 'hodamsbx', '0000-00-00', 71, 'Flour - Teff'),
(431, 'rminshullby', '0000-00-00', 0, 'Cheese - Manchego, Spanish'),
(432, 'lhandmorebz', '0000-00-00', 15, 'Jolt Cola - Red Eye'),
(433, 'swilberc0', '0000-00-00', 18, 'Bread - Pita, Mini'),
(434, 'pberc1', '0000-00-00', 3, 'Red Cod Fillets - 225g'),
(435, 'bjukesc2', '0000-00-00', 64, 'Soup - Campbells, Cream Of'),
(436, 'jnuttyc3', '0000-00-00', 29, 'Dried Peach'),
(437, 'etarboxc4', '0000-00-00', 12, 'Tea - Darjeeling, Azzura'),
(438, 'mwardingtonc5', '0000-00-00', 51, 'Towel Multifold'),
(439, 'btrotmanc6', '0000-00-00', 97, 'Pepper - Pablano'),
(440, 'aprimrosec7', '0000-00-00', 35, 'Cookies - Englishbay Oatmeal'),
(441, 'bnalderc8', '0000-00-00', 10, 'Hot Chocolate - Individual'),
(442, 'gsindlec9', '0000-00-00', 51, 'Passion Fruit'),
(443, 'msaffellca', '0000-00-00', 90, 'Broccoli - Fresh'),
(444, 'mrickertsencb', '0000-00-00', 23, 'Juice - Clam, 46 Oz'),
(445, 'jchootercc', '0000-00-00', 36, 'Vermouth - Sweet, Cinzano'),
(446, 'efirmagercd', '0000-00-00', 24, 'Beans - Turtle, Black, Dry'),
(447, 'lmarchettice', '0000-00-00', 4, 'Potatoes - Idaho 80 Count'),
(448, 'sskeycf', '0000-00-00', 31, 'Beef - Texas Style Burger'),
(449, 'habrycg', '0000-00-00', 61, 'Pineapple - Regular'),
(450, 'jclausench', '0000-00-00', 40, 'Tumeric'),
(451, 'skirscheci', '0000-00-00', 80, 'Cheese - Swiss'),
(452, 'emcmanuscj', '0000-00-00', 22, 'Pasta - Penne Primavera, Single'),
(453, 'kcornehlck', '0000-00-00', 9, 'Oven Mitts 17 Inch'),
(454, 'vjacobssencl', '0000-00-00', 19, 'Paper Towel Touchless'),
(455, 'hnelissencm', '0000-00-00', 82, 'Sausage - Breakfast'),
(456, 'kdumbreckcn', '0000-00-00', 6, 'Bouillion - Fish'),
(457, 'gglowachco', '0000-00-00', 79, 'Evaporated Milk - Skim'),
(458, 'rbuckettcp', '0000-00-00', 30, 'Jam - Blackberry, 20 Ml Jar'),
(459, 'nwestwellcq', '0000-00-00', 0, 'Soup - Campbells, Beef Barley'),
(460, 'mmillthorpecr', '0000-00-00', 39, 'Pie Filling - Pumpkin'),
(461, 'ybaigentcs', '0000-00-00', 96, 'Apricots - Dried'),
(462, 'jbaggsct', '0000-00-00', 30, 'Dragon Fruit'),
(463, 'bmunfordcu', '0000-00-00', 20, 'Chicken - Thigh, Bone In'),
(464, 'sgoodladcv', '0000-00-00', 100, 'Tea Peppermint'),
(465, 'hroblincw', '0000-00-00', 41, 'Yogurt - Strawberry, 175 Gr'),
(466, 'acottelcx', '0000-00-00', 35, 'Pork Salted Bellies'),
(467, 'zcarswellcy', '0000-00-00', 69, 'Chinese Foods - Plain Fried Rice'),
(468, 'ifronkscz', '0000-00-00', 47, 'Containter - 3oz Microwave Rect.'),
(469, 'mcoppeardd0', '0000-00-00', 73, 'Pepper - Chili Powder'),
(470, 'tcreerd1', '0000-00-00', 89, 'Sugar - Splenda Sweetener'),
(471, 'jmclauchlind2', '0000-00-00', 58, 'Energy - Boo - Koo'),
(472, 'hbinhamd3', '0000-00-00', 21, 'Pork - Smoked Kassler'),
(473, 'cskillend4', '0000-00-00', 12, 'Bar Nature Valley'),
(474, 'abanckd5', '0000-00-00', 25, 'Cheese - Stilton'),
(475, 'mcalderheadd6', '0000-00-00', 9, 'Cheese Cloth'),
(476, 'mdargied7', '0000-00-00', 29, 'Madeira'),
(477, 'bcrumleyd8', '0000-00-00', 8, 'Lettuce Romaine Chopped'),
(478, 'etuxilld9', '0000-00-00', 81, 'Beef - Outside, Round'),
(479, 'fcatleyda', '0000-00-00', 64, 'Sprouts - Baby Pea Tendrils'),
(480, 'spaulettodb', '0000-00-00', 1, 'Star Fruit'),
(481, 'ddavidovicidc', '0000-00-00', 30, 'Nut - Pumpkin Seeds'),
(482, 'dlapthorndd', '0000-00-00', 89, 'Potatoes - Yukon Gold 5 Oz'),
(483, 'ribotsonde', '0000-00-00', 67, 'Beer - Mill St Organic'),
(484, 'smacbaindf', '0000-00-00', 21, 'Cookies - Englishbay Chochip'),
(485, 'rcolindg', '0000-00-00', 38, 'Water Chestnut - Canned'),
(486, 'boyleydh', '0000-00-00', 89, 'Wine - German Riesling'),
(487, 'amencidi', '0000-00-00', 21, 'Wine - Cave Springs Dry Riesling'),
(488, 'ypolettodj', '0000-00-00', 15, 'Juice - Orangina'),
(489, 'cglasscockdk', '0000-00-00', 82, 'Pork - Butt, Boneless'),
(490, 'tgillebertdl', '0000-00-00', 49, 'Dc Hikiage Hira Huba'),
(491, 'lgerarddm', '0000-00-00', 74, 'Wonton Wrappers'),
(492, 'nfurneauxdn', '0000-00-00', 14, 'Corn - Mini'),
(493, 'mjoskowiczdo', '0000-00-00', 80, 'Tart Shells - Barquettes, Savory'),
(494, 'fshotboltdp', '0000-00-00', 94, 'Tea - Herbal Orange Spice'),
(495, 'nklostermandq', '0000-00-00', 24, 'Garbage Bags - Black'),
(496, 'gleadbitterdr', '0000-00-00', 78, 'Wine - Ice Wine'),
(497, 'gvernhamds', '0000-00-00', 75, 'Sweet Pea Sprouts'),
(498, 'wgronowedt', '0000-00-00', 40, 'Bread Crumbs - Panko'),
(499, 'dhinchshawdu', '0000-00-00', 23, 'Cup - 8oz Coffee Perforated'),
(500, 'ddybelldv', '0000-00-00', 67, 'Cookie - Oreo 100x2'),
(501, 'bolennanedw', '0000-00-00', 41, 'Fond - Chocolate'),
(502, 'sdanielidx', '0000-00-00', 69, 'Beef - Rib Roast, Capless'),
(503, 'emanlowdy', '0000-00-00', 38, 'Capers - Pickled'),
(504, 'rrolinsondz', '0000-00-00', 99, 'Lettuce - Escarole'),
(505, 'jmalbone0', '0000-00-00', 54, 'Wine - Saint Emilion Calvet'),
(506, 'wmuspratte1', '0000-00-00', 43, 'Mushroom - Chanterelle, Dry'),
(507, 'sipslye2', '0000-00-00', 26, 'Tarragon - Primerba, Paste'),
(508, 'kgionettittie3', '0000-00-00', 63, 'Container - Clear 32 Oz'),
(509, 'tcleughe4', '0000-00-00', 45, 'Beef - Diced'),
(510, 'qcommussoe5', '0000-00-00', 50, 'Longos - Chicken Curried'),
(511, 'dgeevese6', '0000-00-00', 52, 'Versatainer Nc - 888'),
(512, 'eredferne7', '0000-00-00', 22, 'Calypso - Pineapple Passion'),
(513, 'gdreyee8', '0000-00-00', 46, 'Wine - Champagne Brut Veuve'),
(514, 'jgirdlestonee9', '0000-00-00', 94, 'Longos - Grilled Veg Sandwiches'),
(515, 'dgaroghanea', '0000-00-00', 47, 'Tea - Herbal I Love Lemon'),
(516, 'itareeeb', '0000-00-00', 62, 'Beans - French'),
(517, 'mbaszkiewiczec', '0000-00-00', 60, 'Rabbit - Whole'),
(518, 'hservanted', '0000-00-00', 60, 'Schnappes Peppermint - Walker'),
(519, 'dbrambleee', '0000-00-00', 11, 'Pastry - Trippleberry Muffin - Mini'),
(520, 'cgoodieref', '0000-00-00', 16, 'Cucumber - Pickling Ontario'),
(521, 'sdohrmanneg', '0000-00-00', 79, 'Sambuca Cream'),
(522, 'rcolecrougheh', '0000-00-00', 69, 'Sour Puss - Tangerine'),
(523, 'fscritchei', '0000-00-00', 78, 'Beans - Yellow'),
(524, 'bhempshallej', '0000-00-00', 57, 'Chestnuts - Whole,canned'),
(525, 'bmckibbenek', '0000-00-00', 8, 'Wine - Bouchard La Vignee Pinot'),
(526, 'dgockelenel', '0000-00-00', 26, 'Shrimp, Dried, Small / Lb'),
(527, 'nmurkusem', '0000-00-00', 67, 'Pie Pecan'),
(528, 'afowlsen', '0000-00-00', 19, 'Lamb - Leg, Diced'),
(529, 'gschildeo', '0000-00-00', 7, 'Beer - Heinekin'),
(530, 'lhiscocksep', '0000-00-00', 25, 'Sauce - Chili'),
(531, 'hblaneyeq', '0000-00-00', 75, 'Pork - Sausage Casing'),
(532, 'ehurrioner', '0000-00-00', 7, 'Coffee - Espresso'),
(533, 'cdraysones', '0000-00-00', 14, 'Foam Dinner Plate'),
(534, 'bgardeneret', '0000-00-00', 66, 'Beans - French'),
(535, 'mkinfortheu', '0000-00-00', 99, 'Chicken - Livers'),
(536, 'bczajkaev', '0000-00-00', 34, 'Sour Puss - Tangerine'),
(537, 'dtrankew', '0000-00-00', 38, 'Chicken - Base, Ultimate'),
(538, 'hfellowesex', '0000-00-00', 23, 'Cheese - Brick With Pepper'),
(539, 'fgerckensey', '0000-00-00', 45, 'Grenadine'),
(540, 'cobingtonez', '0000-00-00', 24, 'Foie Gras'),
(541, 'blambertif0', '0000-00-00', 33, 'Absolut Citron'),
(542, 'tgreensidef1', '0000-00-00', 41, 'Sauce - Hp'),
(543, 'pawtyf2', '0000-00-00', 34, 'Lettuce - Romaine, Heart'),
(544, 'arollf3', '0000-00-00', 82, 'Water - Evian 355 Ml'),
(545, 'bhummf4', '0000-00-00', 11, 'Container - Clear 32 Oz'),
(546, 'ocurzeyf5', '0000-00-00', 96, 'Island Oasis - Raspberry'),
(547, 'mfranceschellif6', '0000-00-00', 66, 'Muffin Batt - Carrot Spice'),
(548, 'jmackessockf7', '0000-00-00', 46, 'Mix - Cappucino Cocktail'),
(549, 'galexsandrowiczf8', '0000-00-00', 9, 'Curry Paste - Madras'),
(550, 'mrobartf9', '0000-00-00', 78, 'Beef - Rib Roast, Capless'),
(551, 'wgilluleyfa', '0000-00-00', 87, 'Eggroll'),
(552, 'alarmourfb', '0000-00-00', 4, 'Sword Pick Asst'),
(553, 'kpachefc', '0000-00-00', 85, 'Wine - Touraine Azay - Le - Rideau'),
(554, 'codochertyfd', '0000-00-00', 5, 'Sherbet - Raspberry'),
(555, 'rferrerfe', '0000-00-00', 13, 'Beef - Eye Of Round'),
(556, 'mcelleff', '0000-00-00', 64, 'Chicken - Ground'),
(557, 'acarrattfg', '0000-00-00', 3, 'Vinegar - Tarragon'),
(558, 'fwedgwoodfh', '0000-00-00', 8, 'Pastry - Key Limepoppy Seed Tea'),
(559, 'npriddisfi', '0000-00-00', 43, 'Yucca'),
(560, 'hpringellfj', '0000-00-00', 29, 'Veal - Bones'),
(561, 'ybuttingfk', '0000-00-00', 57, 'Cheese - St. Paulin'),
(562, 'aminersfl', '0000-00-00', 58, 'Wooden Mop Handle'),
(563, 'efaulconbridgefm', '0000-00-00', 0, 'Lettuce - Spring Mix'),
(564, 'kyureninfn', '0000-00-00', 18, 'Lotus Rootlets - Canned'),
(565, 'nbussfo', '0000-00-00', 38, 'Wine - Magnotta - Cab Franc'),
(566, 'efrekefp', '0000-00-00', 26, 'Gherkin - Sour'),
(567, 'athomingafq', '0000-00-00', 29, 'Sauce - Fish 25 Ozf Bottle'),
(568, 'tbintonfr', '0000-00-00', 78, 'Rolled Oats'),
(569, 'edigmanfs', '0000-00-00', 51, 'Beer - Fruli'),
(570, 'yfewsterft', '0000-00-00', 22, 'Soup - Campbells Bean Medley'),
(571, 'ssunnersfu', '0000-00-00', 56, 'Miso - Soy Bean Paste'),
(572, 'lcovendonfv', '0000-00-00', 57, 'Tortillas - Flour, 12'),
(573, 'dgummfw', '0000-00-00', 86, 'Cake - Dulce De Leche'),
(574, 'delsyfx', '0000-00-00', 59, 'Sausage - Blood Pudding'),
(575, 'vdelvefy', '0000-00-00', 30, 'Fib N9 - Prague Powder'),
(576, 'acoonfz', '0000-00-00', 43, 'Vinegar - Tarragon'),
(577, 'ntrenbeyg0', '0000-00-00', 4, 'Tart Shells - Barquettes, Savory'),
(578, 'nmetcalfeg1', '0000-00-00', 44, 'Shrimp - Black Tiger 13/15'),
(579, 'ebarnacloughg2', '0000-00-00', 56, 'Egg Patty Fried'),
(580, 'vwainscoatg3', '0000-00-00', 94, 'Roe - Lump Fish, Black'),
(581, 'nharteg4', '0000-00-00', 43, 'Wine - Shiraz Wolf Blass Premium'),
(582, 'acapponerg5', '0000-00-00', 4, 'Wine - White Cab Sauv.on'),
(583, 'isantig6', '0000-00-00', 47, 'Soup - Campbells Chicken'),
(584, 'bgabbetisg7', '0000-00-00', 90, 'Toamtoes 6x7 Select'),
(585, 'ebeckhurstg8', '0000-00-00', 23, 'Sun - Dried Tomatoes'),
(586, 'iheusticeg9', '0000-00-00', 76, 'Ocean Spray - Ruby Red'),
(587, 'rhambidgega', '0000-00-00', 54, 'Jam - Blackberry, 20 Ml Jar'),
(588, 'ngantergb', '0000-00-00', 96, 'Eggroll'),
(589, 'lhancorngc', '0000-00-00', 19, 'Sauce - Hoisin'),
(590, 'hmaryongd', '0000-00-00', 48, 'Sproutsmustard Cress'),
(591, 'dbuxeyge', '0000-00-00', 67, 'Juice - Lime'),
(592, 'rsirrellgf', '0000-00-00', 78, 'Cake - Mini Potato Pancake'),
(593, 'eeymergg', '0000-00-00', 93, 'Wooden Mop Handle'),
(594, 'sshakesbyegh', '0000-00-00', 73, 'Pate - Liver'),
(595, 'jsewellgi', '0000-00-00', 32, 'Berry Brulee'),
(596, 'whaugheygj', '0000-00-00', 10, 'Russian Prince'),
(597, 'epickthorngk', '0000-00-00', 29, 'Onions - Green'),
(598, 'lmatzengl', '0000-00-00', 50, 'Orange - Blood'),
(599, 'kkilsbygm', '0000-00-00', 40, 'Chinese Foods - Chicken'),
(600, 'civanikovgn', '0000-00-00', 49, 'Cattail Hearts'),
(601, 'wspurriergo', '0000-00-00', 45, 'Wine - Cotes Du Rhone Parallele'),
(602, 'aberthelgp', '0000-00-00', 75, 'Melon - Watermelon Yellow'),
(603, 'balejogq', '0000-00-00', 2, 'Potatoes - Parissienne'),
(604, 'hpeascodgr', '0000-00-00', 59, 'Corn - Mini'),
(605, 'kaskellgs', '0000-00-00', 98, 'Veal - Chops, Split, Frenched'),
(606, 'jstiversgt', '0000-00-00', 77, 'Tomatoes - Plum, Canned'),
(607, 'ofumagallgu', '0000-00-00', 96, 'Pasta - Bauletti, Chicken White'),
(608, 'avandalegv', '0000-00-00', 66, 'Sterno - Chafing Dish Fuel'),
(609, 'pcraigmilegw', '0000-00-00', 86, 'Chicken - Diced, Cooked'),
(610, 'cgrundlegx', '0000-00-00', 48, 'Shrimp - Black Tiger 6 - 8'),
(611, 'slagogy', '0000-00-00', 8, 'Pastry - Banana Tea Loaf'),
(612, 'rcalverdgz', '0000-00-00', 25, 'Shichimi Togarashi Peppeers'),
(613, 'bmorteoh0', '0000-00-00', 41, 'Pasta - Shells, Medium, Dry'),
(614, 'djuanesh1', '0000-00-00', 24, 'Spice - Greek 1 Step'),
(615, 'pferrynh2', '0000-00-00', 9, 'Arizona - Plum Green Tea'),
(616, 'fmcqueenh3', '0000-00-00', 17, 'Wine - Alsace Gewurztraminer'),
(617, 'ksprowlesh4', '0000-00-00', 10, 'Duck - Legs'),
(618, 'bmillinsh5', '0000-00-00', 21, 'Muffin Mix - Raisin Bran'),
(619, 'rsavoryh6', '0000-00-00', 85, 'Pastry - Choclate Baked'),
(620, 'ekauffmanh7', '0000-00-00', 31, 'Cheese - Swiss Sliced'),
(621, 'kdanah8', '0000-00-00', 17, 'Wine - Segura Viudas Aria Brut'),
(622, 'dlinkeh9', '0000-00-00', 2, 'Cup - 8oz Coffee Perforated'),
(623, 'bouldha', '0000-00-00', 0, 'Mousse - Passion Fruit'),
(624, 'rfranzenhb', '0000-00-00', 44, 'Ice Cream Bar - Oreo Cone'),
(625, 'gmccriehc', '0000-00-00', 89, 'Fuji Apples'),
(626, 'npretioushd', '0000-00-00', 35, 'Bar Bran Honey Nut'),
(627, 'bwinshiphe', '0000-00-00', 19, 'Poppy Seed'),
(628, 'kjessopehf', '0000-00-00', 20, 'Aromat Spice / Seasoning'),
(629, 'kwalkdenhg', '0000-00-00', 73, 'Gatorade - Lemon Lime'),
(630, 'obynerthh', '0000-00-00', 71, 'Rambutan'),
(631, 'kmcgriffinhi', '0000-00-00', 74, 'Cheese - Wine'),
(632, 'ddomneyhj', '0000-00-00', 76, 'Goulash Seasoning'),
(633, 'esillehk', '0000-00-00', 28, 'Chocolate Bar - Coffee Crisp'),
(634, 'lcollymorehl', '0000-00-00', 31, 'Quinoa'),
(635, 'kswyrehm', '0000-00-00', 68, 'Cranberries - Fresh'),
(636, 'cstruyshn', '0000-00-00', 81, 'Wine - Lamancha Do Crianza'),
(637, 'credsallho', '0000-00-00', 51, 'Quail - Jumbo'),
(638, 'vfeveryearhp', '0000-00-00', 31, 'Juice - Cranberry, 341 Ml'),
(639, 'npiwallhq', '0000-00-00', 6, 'Paste - Black Olive'),
(640, 'hroafhr', '0000-00-00', 16, 'Lamb - Leg, Diced'),
(641, 'lerleyhs', '0000-00-00', 39, 'Beef - Top Butt'),
(642, 'asmallpeiceht', '0000-00-00', 8, 'Cheese - Havarti, Salsa'),
(643, 'rjeffreehu', '0000-00-00', 39, 'Wine - Zinfandel Rosenblum'),
(644, 'aglosterhv', '0000-00-00', 93, 'Brandy - Orange, Mc Guiness'),
(645, 'vgrizardhw', '0000-00-00', 64, 'Nut - Macadamia'),
(646, 'abandierahx', '0000-00-00', 46, 'Mace Ground'),
(647, 'pwhitmellhy', '0000-00-00', 5, 'Sloe Gin - Mcguinness'),
(648, 'sgemellihz', '0000-00-00', 33, 'Pepper - Jalapeno'),
(649, 'neliescoi0', '0000-00-00', 50, 'Cheese - Cheddar, Mild'),
(650, 'ipinkstonei1', '0000-00-00', 44, 'Oil - Olive Bertolli'),
(651, 'darnouldi2', '0000-00-00', 24, 'Wine - Cotes Du Rhone'),
(652, 'gprettymani3', '0000-00-00', 33, 'Longos - Chicken Curried'),
(653, 'mdoumerci4', '0000-00-00', 37, 'Pasta - Angel Hair'),
(654, 'apavlishchevi5', '0000-00-00', 13, 'Veal - Provimi Inside'),
(655, 'drawlini6', '0000-00-00', 58, 'Sage - Rubbed'),
(656, 'msarfassi7', '0000-00-00', 61, 'Longos - Burritos'),
(657, 'rsultani8', '0000-00-00', 69, 'Beer - Camerons Auburn'),
(658, 'ibrothericki9', '0000-00-00', 65, 'Juice Peach Nectar'),
(659, 'awithnallia', '0000-00-00', 23, 'Crab - Claws, 26 - 30'),
(660, 'akennhamib', '0000-00-00', 79, 'Pop Shoppe Cream Soda'),
(661, 'mskinneric', '0000-00-00', 40, 'Mayonnaise - Individual Pkg'),
(662, 'urouseid', '0000-00-00', 77, 'Chicken - Whole Fryers'),
(663, 'dpattersonie', '0000-00-00', 35, 'Bread - Wheat Baguette'),
(664, 'vtraharif', '0000-00-00', 24, 'Pail For Lid 1537'),
(665, 'mbaxendaleig', '0000-00-00', 72, 'Cognac - Courvaisier'),
(666, 'smoyseih', '0000-00-00', 21, 'Red Pepper Paste'),
(667, 'mbrahanii', '0000-00-00', 21, 'Bread - Pullman, Sliced'),
(668, 'mperrottetij', '0000-00-00', 65, 'Vol Au Vents'),
(669, 'dleyntonik', '0000-00-00', 17, 'Pasta - Lasagna Noodle, Frozen'),
(670, 'agouldthorpil', '0000-00-00', 81, 'Boogies'),
(671, 'mlefeaverim', '0000-00-00', 100, 'Sour Cream'),
(672, 'nwynrahamein', '0000-00-00', 56, 'Lemonade - Island Tea, 591 Ml'),
(673, 'hbinnellio', '0000-00-00', 9, 'Pasta - Lasagna, Dry'),
(674, 'ksissonip', '0000-00-00', 28, '7up Diet, 355 Ml'),
(675, 'jgherarducciiq', '0000-00-00', 9, 'Juice - Apple 284ml'),
(676, 'rshellyir', '0000-00-00', 20, 'Wine - Niagara,vqa Reisling'),
(677, 'eloydis', '0000-00-00', 38, 'Chicken - White Meat With Tender'),
(678, 'mbrounsellit', '0000-00-00', 50, 'Salt - Sea'),
(679, 'fszwandtiu', '0000-00-00', 71, 'Bread - Triangle White'),
(680, 'bpaddefieldiv', '0000-00-00', 61, 'Sugar - Brown, Individual'),
(681, 'cclaibourniw', '0000-00-00', 58, 'Carbonated Water - Wildberry'),
(682, 'ddeangeloix', '0000-00-00', 87, 'Sprouts - Baby Pea Tendrils'),
(683, 'kbroekiy', '0000-00-00', 54, 'Flower - Daisies'),
(684, 'mjacombiz', '0000-00-00', 53, 'Bread - English Muffin'),
(685, 'juttingj0', '0000-00-00', 90, 'Bacardi Breezer - Strawberry'),
(686, 'ggullivanj1', '0000-00-00', 71, 'Pork - Back Ribs'),
(687, 'fbottellj2', '0000-00-00', 40, 'Cheese - Cheddar, Mild'),
(688, 'lduffieldj3', '0000-00-00', 14, 'Cheese - Comtomme'),
(689, 'kvigarj4', '0000-00-00', 85, 'Eggplant - Baby'),
(690, 'egarrattj5', '0000-00-00', 42, 'Sardines'),
(691, 'egoldej6', '0000-00-00', 90, 'Wine - Red, Concha Y Toro'),
(692, 'jsartonj7', '0000-00-00', 31, 'Chocolate Bar - Reese Pieces'),
(693, 'wbiaggellij8', '0000-00-00', 51, 'Galliano'),
(694, 'gfenelowj9', '0000-00-00', 72, 'Soup - Campbells - Chicken Noodle'),
(695, 'rcarriganja', '0000-00-00', 25, 'Wine - Sherry Dry Sack, William'),
(696, 'mibotsonjb', '0000-00-00', 54, 'Skewers - Bamboo'),
(697, 'jgoulbournejc', '0000-00-00', 64, 'Flax Seed'),
(698, 'dlorimerjd', '0000-00-00', 55, 'Dish Towel'),
(699, 'jkubczakje', '0000-00-00', 34, 'Ecolab - Orange Frc, Cleaner'),
(700, 'grussijf', '0000-00-00', 96, 'Rabbit - Frozen'),
(701, 'meaddyjg', '0000-00-00', 96, 'Veal - Bones'),
(702, 'mlyddiattjh', '0000-00-00', 55, 'Crab - Meat Combo'),
(703, 'mrollinshawji', '0000-00-00', 70, 'Pie Shells 10'),
(704, 'abareheadjj', '0000-00-00', 17, 'Cheese - Asiago'),
(705, 'wkropachjk', '0000-00-00', 35, 'Lobster - Canned Premium'),
(706, 'gwinsparjl', '0000-00-00', 43, 'Sausage - Chorizo'),
(707, 'rredolfijm', '0000-00-00', 67, 'Wine - Blue Nun Qualitatswein'),
(708, 'ssparrowjn', '0000-00-00', 52, 'Bag Clear 10 Lb'),
(709, 'jstickinsjo', '0000-00-00', 39, 'Beef - Eye Of Round'),
(710, 'amumbesonjp', '0000-00-00', 59, 'Lobster - Tail 6 Oz'),
(711, 'slanglandjq', '0000-00-00', 95, 'Calypso - Strawberry Lemonade'),
(712, 'alaurenzijr', '0000-00-00', 86, 'Cake - Cheese Cake 9 Inch'),
(713, 'vgabbottjs', '0000-00-00', 20, 'Chicken - White Meat With Tender'),
(714, 'lruffelljt', '0000-00-00', 52, 'Bread Base - Toscano'),
(715, 'tbraidonju', '0000-00-00', 81, 'Tomatoes Tear Drop'),
(716, 'johengertyjv', '0000-00-00', 9, 'Wine - Sherry Dry Sack, William'),
(717, 'gbendtsenjw', '0000-00-00', 56, 'Tuna - Salad Premix'),
(718, 'gromainjx', '0000-00-00', 50, 'Beef - Flank Steak'),
(719, 'cjosefsohnjy', '0000-00-00', 19, 'Quail - Jumbo Boneless'),
(720, 'emaiseyjz', '0000-00-00', 23, 'Bread - Bagels, Mini'),
(721, 'fcarpek0', '0000-00-00', 46, 'Lid Tray - 16in Dome'),
(722, 'chackleyk1', '0000-00-00', 32, 'Glass Clear 7 Oz Xl'),
(723, 'acrosierk2', '0000-00-00', 16, 'Sauce - Chili'),
(724, 'edowsettk3', '0000-00-00', 44, 'Bar - Granola Trail Mix Fruit Nut'),
(725, 'alambertonk4', '0000-00-00', 84, 'Rum - Coconut, Malibu'),
(726, 'lmazzeok5', '0000-00-00', 97, 'Buffalo - Short Rib Fresh'),
(727, 'mdentk6', '0000-00-00', 50, 'Pork - Backs - Boneless'),
(728, 'etrevascusk7', '0000-00-00', 44, 'Lychee'),
(729, 'jaronink8', '0000-00-00', 97, 'Truffle Shells - Semi - Sweet'),
(730, 'mrosendallk9', '0000-00-00', 74, 'Pastry - Plain Baked Croissant'),
(731, 'bmayka', '0000-00-00', 16, 'Beef - Shank'),
(732, 'jmizzenkb', '0000-00-00', 84, 'Oil - Olive'),
(733, 'cqueyeirokc', '0000-00-00', 10, 'Garbag Bags - Black'),
(734, 'cfleischmannkd', '0000-00-00', 65, 'Pork - Sausage Casing'),
(735, 'dandrusovke', '0000-00-00', 85, 'Sauce - Balsamic Viniagrette'),
(736, 'vdenkkf', '0000-00-00', 72, 'Pate - Cognac'),
(737, 'vwhimpkg', '0000-00-00', 71, 'Edible Flower - Mixed'),
(738, 'svardeykh', '0000-00-00', 10, 'Extract Vanilla Pure'),
(739, 'scandyki', '0000-00-00', 78, 'Eggroll'),
(740, 'mtwaitskj', '0000-00-00', 94, 'Cheese - Brie Roitelet'),
(741, 'anockallskk', '0000-00-00', 61, 'Bread - Roll, Soft White Round'),
(742, 'emeachkl', '0000-00-00', 18, 'Wine - Chateau Bonnet'),
(743, 'rmuslimkm', '0000-00-00', 49, 'Cheese - Sheep Milk'),
(744, 'mfentykn', '0000-00-00', 86, 'Cinnamon Buns Sticky'),
(745, 'bgeneryko', '0000-00-00', 96, 'Juice - Cranberry, 341 Ml'),
(746, 'gcarlankp', '0000-00-00', 34, 'Flour - All Purpose'),
(747, 'estobbskq', '0000-00-00', 7, 'Bread - Roll, Soft White Round'),
(748, 'skleinberkr', '0000-00-00', 100, 'Ham - Smoked, Bone - In'),
(749, 'lsawtellks', '0000-00-00', 29, 'Vermacelli - Sprinkles, Assorted'),
(750, 'awindouskt', '0000-00-00', 5, 'Compound - Strawberry'),
(751, 'dperfordku', '0000-00-00', 27, 'Beef - Montreal Smoked Brisket'),
(752, 'ppengellykv', '0000-00-00', 59, 'Wine - White, Colubia Cresh'),
(753, 'istarbeckkw', '0000-00-00', 2, 'Tuna - Salad Premix'),
(754, 'pullettkx', '0000-00-00', 6, 'Pastry - Raisin Muffin - Mini'),
(755, 'omcclintockky', '0000-00-00', 14, 'Dill - Primerba, Paste'),
(756, 'fgraftonherbertkz', '0000-00-00', 100, 'Squash - Pattypan, Yellow'),
(757, 'mpulfordl0', '0000-00-00', 15, 'Jam - Raspberry'),
(758, 'kpeviel1', '0000-00-00', 28, 'Uniform Linen Charge'),
(759, 'nhrihorovichl2', '0000-00-00', 31, 'Vodka - Moskovskaya'),
(760, 'bgouninl3', '0000-00-00', 1, 'Tarts Assorted'),
(761, 'kdudderidgel4', '0000-00-00', 80, 'Bacardi Limon'),
(762, 'akimmonsl5', '0000-00-00', 99, 'Sesame Seed'),
(763, 'riggaldenl6', '0000-00-00', 89, 'Ecolab - Hobart Washarm End Cap'),
(764, 'apalfreemanl7', '0000-00-00', 83, 'Guava'),
(765, 'lseamarkl8', '0000-00-00', 65, 'Pate Pans Yellow'),
(766, 'sloveardl9', '0000-00-00', 81, 'Lettuce - Lolla Rosa'),
(767, 'zbuxeyla', '0000-00-00', 75, 'Wine - Red, Harrow Estates, Cab'),
(768, 'wtruggianlb', '0000-00-00', 46, 'Longos - Lasagna Veg'),
(769, 'hhearmonlc', '0000-00-00', 95, 'Cookies - Englishbay Oatmeal'),
(770, 'mlewendonld', '0000-00-00', 40, 'Salmon - Sockeye Raw'),
(771, 'rfolkesle', '0000-00-00', 39, 'Wine - Dubouef Macon - Villages'),
(772, 'rdundinlf', '0000-00-00', 70, 'Pork - Tenderloin, Fresh'),
(773, 'msplainlg', '0000-00-00', 79, 'Blue Curacao - Marie Brizard'),
(774, 'abreedylh', '0000-00-00', 93, 'Pepper - Pablano'),
(775, 'cjosskovizli', '0000-00-00', 76, 'Papayas'),
(776, 'lsoneslj', '0000-00-00', 36, 'Ice Cream - Turtles Stick Bar'),
(777, 'cgonzalolk', '0000-00-00', 61, 'Silicone Paper 16.5x24'),
(778, 'awilmingtonll', '0000-00-00', 76, 'Bag - Regular Kraft 20 Lb'),
(779, 'ddealylm', '0000-00-00', 14, 'Wine - Chablis 2003 Champs'),
(780, 'rtappinln', '0000-00-00', 52, 'Otomegusa Dashi Konbu'),
(781, 'gramsaylo', '0000-00-00', 2, 'Wine - Malbec Trapiche Reserve'),
(782, 'dlacknerlp', '0000-00-00', 74, 'Pork - Back Ribs'),
(783, 'lmayhewlq', '0000-00-00', 72, 'Onions - Spanish'),
(784, 'bgernierlr', '0000-00-00', 22, 'External Supplier'),
(785, 'vsarahls', '0000-00-00', 48, 'Wine - Red, Harrow Estates, Cab'),
(786, 'vdillingstonlt', '0000-00-00', 25, 'Capon - Whole'),
(787, 'dboatelu', '0000-00-00', 68, 'Pepper - Julienne, Frozen'),
(788, 'foxxlv', '0000-00-00', 69, 'Bread - Dark Rye'),
(789, 'hstonnerlw', '0000-00-00', 50, 'Tea - Lemon Green Tea'),
(790, 'spaylx', '0000-00-00', 43, 'Wine - Red, Gamay Noir'),
(791, 'tdyetly', '0000-00-00', 51, 'Soup - Campbells Beef Strogonoff'),
(792, 'lkennylz', '0000-00-00', 58, 'Juice - Pineapple, 48 Oz'),
(793, 'avynardem0', '0000-00-00', 4, 'Apple - Granny Smith'),
(794, 'imoycem1', '0000-00-00', 100, 'Jello - Assorted'),
(795, 'cmaureenm2', '0000-00-00', 27, 'Salmon - Fillets'),
(796, 'sdougherm3', '0000-00-00', 29, 'Cherries - Maraschino,jar'),
(797, 'ccouvesm4', '0000-00-00', 31, 'Amarula Cream'),
(798, 'fkanem5', '0000-00-00', 9, 'Beef - Ox Tail, Frozen'),
(799, 'mschirokm6', '0000-00-00', 66, 'Pastry - Cheese Baked Scones'),
(800, 'cmakiverm7', '0000-00-00', 26, 'Sherbet - Raspberry'),
(801, 'dcusackm8', '0000-00-00', 2, 'Wine - White, Riesling, Semi - Dry'),
(802, 'jmacairtm9', '0000-00-00', 74, 'Wine - Rhine Riesling Wolf Blass'),
(803, 'cclayworthma', '0000-00-00', 25, 'Honey - Liquid'),
(804, 'vkittowmb', '0000-00-00', 33, 'Bread Fig And Almond'),
(805, 'jthodymc', '0000-00-00', 94, 'Stock - Beef, Brown'),
(806, 'ngrollmd', '0000-00-00', 36, 'Milk - Chocolate 500ml'),
(807, 'fthurnhamme', '0000-00-00', 34, 'Turkey - Breast, Bone - In'),
(808, 'ithurnermf', '0000-00-00', 61, 'Juice - Prune'),
(809, 'hdonhardtmg', '0000-00-00', 0, 'Pear - Prickly'),
(810, 'lwernymh', '0000-00-00', 19, 'Bread - Sour Sticks With Onion'),
(811, 'tlevaymi', '0000-00-00', 5, 'Tumeric'),
(812, 'agoldringmj', '0000-00-00', 48, 'Muffin - Carrot Individual Wrap'),
(813, 'zwabemk', '0000-00-00', 76, 'Juice Peach Nectar'),
(814, 'ebooneml', '0000-00-00', 40, 'Monkfish Fresh - Skin Off'),
(815, 'dwaithmm', '0000-00-00', 51, 'Ranchero - Primerba, Paste');
INSERT INTO `promotion` (`promote_id`, `promote_name`, `datecreate`, `discount`, `giveaway`) VALUES
(816, 'mpounsettmn', '0000-00-00', 0, 'Bread - Petit Baguette'),
(817, 'gpetersonmo', '0000-00-00', 56, 'Roe - Lump Fish, Red'),
(818, 'browthornmp', '0000-00-00', 93, 'Cheese - Wine'),
(819, 'lbruyettmq', '0000-00-00', 56, 'Seedlings - Buckwheat, Organic'),
(820, 'cbriamomr', '0000-00-00', 35, 'Breakfast Quesadillas'),
(821, 'ajerkems', '0000-00-00', 78, 'Table Cloth 62x120 White'),
(822, 'wjereattmt', '0000-00-00', 46, 'Lotus Root'),
(823, 'ffullstonemu', '0000-00-00', 91, 'Yogurt - Peach, 175 Gr'),
(824, 'jhassellmv', '0000-00-00', 80, 'Quail - Jumbo'),
(825, 'amathivatmw', '0000-00-00', 98, 'Soup - Knorr, Chicken Noodle'),
(826, 'rcrossfeldmx', '0000-00-00', 2, 'Roe - Lump Fish, Black'),
(827, 'dbrearmy', '0000-00-00', 88, 'Potatoes - Parissienne'),
(828, 'vmcdoualmz', '0000-00-00', 99, 'Greens Mustard'),
(829, 'sokynsillaghen0', '0000-00-00', 10, 'Tandoori Curry Paste'),
(830, 'sgalpenn1', '0000-00-00', 15, 'Oil - Olive, Extra Virgin'),
(831, 'labreyn2', '0000-00-00', 96, 'Beef - Tenderloin - Aa'),
(832, 'dlielln3', '0000-00-00', 96, 'Sambuca Cream'),
(833, 'jdeneven4', '0000-00-00', 63, 'Cookie Dough - Chunky'),
(834, 'ntinniswoodn5', '0000-00-00', 70, 'Pineapple - Golden'),
(835, 'csarsonsn6', '0000-00-00', 14, 'Wine - Zinfandel Rosenblum'),
(836, 'oreamesn7', '0000-00-00', 11, 'Bread - Crumbs, Bulk'),
(837, 'snegaln8', '0000-00-00', 99, 'Tea - Decaf 1 Cup'),
(838, 'blodevickn9', '0000-00-00', 34, 'Icecream Bar - Del Monte'),
(839, 'nwetherickna', '0000-00-00', 85, 'Sauce - Roasted Red Pepper'),
(840, 'dallansnb', '0000-00-00', 77, 'Seedlings - Buckwheat, Organic'),
(841, 'ejenessnc', '0000-00-00', 6, 'Curry Paste - Madras'),
(842, 'hantracknd', '0000-00-00', 17, 'Milk - Homo'),
(843, 'mliggettne', '0000-00-00', 86, 'Crackers - Melba Toast'),
(844, 'eboldeckenf', '0000-00-00', 46, 'Sauce - Oyster'),
(845, 'agonnelng', '0000-00-00', 78, 'Beef - Roasted, Cooked'),
(846, 'ldespensernh', '0000-00-00', 74, 'Bread - Corn Muffaletta'),
(847, 'gcarleyni', '0000-00-00', 81, 'Buttons'),
(848, 'nmacquakernj', '0000-00-00', 56, 'Turkey Leg With Drum And Thigh'),
(849, 'kbundynk', '0000-00-00', 97, 'Papadam'),
(850, 'mgarrigannl', '0000-00-00', 42, 'Onions - Green'),
(851, 'vnicklessnm', '0000-00-00', 69, 'Sambuca Cream'),
(852, 'bbarznn', '0000-00-00', 71, 'Wine - Redchard Merritt'),
(853, 'nfarmeryno', '0000-00-00', 57, 'Aspic - Amber'),
(854, 'pabrahamsnp', '0000-00-00', 85, 'Crab - Meat Combo'),
(855, 'zashpolenq', '0000-00-00', 90, 'Nantucket Orange Juice'),
(856, 'sbatchannr', '0000-00-00', 97, 'Sachet'),
(857, 'ebladesmithns', '0000-00-00', 83, 'Coconut - Shredded, Unsweet'),
(858, 'amennearnt', '0000-00-00', 60, 'Mace Ground'),
(859, 'kbettisnu', '0000-00-00', 93, 'Seedlings - Buckwheat, Organic'),
(860, 'cmaillardnv', '0000-00-00', 40, 'Chocolate - Unsweetened'),
(861, 'mkylenw', '0000-00-00', 10, 'Coffee Decaf Colombian'),
(862, 'sosseltonnx', '0000-00-00', 86, 'Slt - Individual Portions'),
(863, 'gadamikny', '0000-00-00', 26, 'Soup - Knorr, Chicken Gumbo'),
(864, 'jglassborownz', '0000-00-00', 26, 'Beets - Candy Cane, Organic'),
(865, 'bstrango0', '0000-00-00', 34, 'Figs'),
(866, 'fspeakso1', '0000-00-00', 99, 'Beets'),
(867, 'sdixceeo2', '0000-00-00', 100, 'Garlic Powder'),
(868, 'landrzejewskio3', '0000-00-00', 9, 'Sugar - Sweet N Low, Individual'),
(869, 'mjosephio4', '0000-00-00', 40, 'Wine - Segura Viudas Aria Brut'),
(870, 'tfassbindlero5', '0000-00-00', 48, 'Eggs - Extra Large'),
(871, 'apreddyo6', '0000-00-00', 18, 'Tortillas - Flour, 8'),
(872, 'hswetmano7', '0000-00-00', 77, 'Mix Pina Colada'),
(873, 'dgoodricho8', '0000-00-00', 96, 'Wine - Trimbach Pinot Blanc'),
(874, 'rpoundesfordo9', '0000-00-00', 19, 'Lettuce - Boston Bib'),
(875, 'bonolandoa', '0000-00-00', 44, 'Cheese - Ricotta'),
(876, 'hmulcasterob', '0000-00-00', 30, 'Ecolab - Hobart Washarm End Cap'),
(877, 'bmartineoc', '0000-00-00', 100, 'Tart Shells - Barquettes, Savory'),
(878, 'ebolgerod', '0000-00-00', 38, 'Salmon - Whole, 4 - 6 Pounds'),
(879, 'kdoogueoe', '0000-00-00', 85, 'Versatainer Nc - 888'),
(880, 'atomsuof', '0000-00-00', 51, 'Lemonade - Island Tea, 591 Ml'),
(881, 'alammerichog', '0000-00-00', 49, 'Tea - Grapefruit Green Tea'),
(882, 'fcourtenayoh', '0000-00-00', 26, 'Stock - Veal, White'),
(883, 'kgibbonsonoi', '0000-00-00', 36, 'Beef - Cow Feet Split'),
(884, 'dchampkinsoj', '0000-00-00', 81, 'Cheese - Bocconcini'),
(885, 'fmessumok', '0000-00-00', 20, 'Sponge Cake Mix - Vanilla'),
(886, 'tdomotorol', '0000-00-00', 44, 'Lettuce - Green Leaf'),
(887, 'mgrigoliom', '0000-00-00', 53, 'Schnappes Peppermint - Walker'),
(888, 'ginetton', '0000-00-00', 23, 'Silicone Paper 16.5x24'),
(889, 'bwimletoo', '0000-00-00', 7, 'Cheese - St. Andre'),
(890, 'cfoloninop', '0000-00-00', 56, 'Garbag Bags - Black'),
(891, 'balvaradooq', '0000-00-00', 5, 'Cattail Hearts'),
(892, 'sfassetor', '0000-00-00', 67, 'Vodka - Lemon, Absolut'),
(893, 'dhammerstoneos', '0000-00-00', 29, 'Wine - Periguita Fonseca'),
(894, 'lcorrettot', '0000-00-00', 40, 'Brownies - Two Bite, Chocolate'),
(895, 'fvreedeou', '0000-00-00', 39, 'Heavy Duty Dust Pan'),
(896, 'sdendleov', '0000-00-00', 53, 'Coffee - Frthy Coffee Crisp'),
(897, 'dlongforthow', '0000-00-00', 79, 'Rabbit - Legs'),
(898, 'mmcnellisox', '0000-00-00', 81, 'Cookie - Oreo 100x2'),
(899, 'vcooperoy', '0000-00-00', 51, 'Chips - Potato Jalapeno'),
(900, 'lmattheeuwoz', '0000-00-00', 17, 'Nut - Pumpkin Seeds'),
(901, 'awackettp0', '0000-00-00', 23, 'Cups 10oz Trans'),
(902, 'kwalpolep1', '0000-00-00', 67, 'Water - Evian 355 Ml'),
(903, 'pshortlandp2', '0000-00-00', 38, 'Cod - Fillets'),
(904, 'achaikovskip3', '0000-00-00', 27, 'Capon - Breast, Double, Wing On'),
(905, 'gaddingtonp4', '0000-00-00', 30, 'Pop - Club Soda Can'),
(906, 'lpearcehousep5', '0000-00-00', 38, 'Longan'),
(907, 'bkieltyp6', '0000-00-00', 80, 'Bread - Hot Dog Buns'),
(908, 'kdougherp7', '0000-00-00', 20, 'Bread - Flat Bread'),
(909, 'fjacksonp8', '0000-00-00', 74, 'Wine - Cotes Du Rhone Parallele'),
(910, 'gtatershallp9', '0000-00-00', 94, 'External Supplier'),
(911, 'nwalteringpa', '0000-00-00', 91, 'Wine - Saint - Bris 2002, Sauv'),
(912, 'jcrutcherpb', '0000-00-00', 97, 'Coffee Guatemala Dark'),
(913, 'rlouispc', '0000-00-00', 100, 'Pasta - Rotini, Dry'),
(914, 'lgaulpd', '0000-00-00', 0, 'Sauce - Salsa'),
(915, 'llongope', '0000-00-00', 95, 'Bouq All Italian - Primerba'),
(916, 'atravespf', '0000-00-00', 67, 'Onion - Dried'),
(917, 'spahlerpg', '0000-00-00', 62, 'Beef - Top Butt'),
(918, 'epizeyph', '0000-00-00', 58, 'Syrup - Chocolate'),
(919, 'eharwoodpi', '0000-00-00', 14, 'Wine - Rosso Del Veronese Igt'),
(920, 'lgrigoryevpj', '0000-00-00', 11, 'Cornflakes'),
(921, 'hvidlocpk', '0000-00-00', 84, 'Beer - Labatt Blue'),
(922, 'khulkepl', '0000-00-00', 28, 'Chocolate - Compound Coating'),
(923, 'mperetpm', '0000-00-00', 44, 'Muffin - Bran Ind Wrpd'),
(924, 'jcrickettpn', '0000-00-00', 30, 'Potatoes - Mini White 3 Oz'),
(925, 'cstieblerpo', '0000-00-00', 80, 'Sugar - Fine'),
(926, 'fkorbpp', '0000-00-00', 84, 'Cognac - Courvaisier'),
(927, 'rmiallpq', '0000-00-00', 33, 'Yogurt - French Vanilla'),
(928, 'stebbothpr', '0000-00-00', 95, 'Pastry - Trippleberry Muffin - Mini'),
(929, 'lbouldsps', '0000-00-00', 54, 'Bread - Bistro White'),
(930, 'glarozept', '0000-00-00', 69, 'Carbonated Water - Orange'),
(931, 'drupkepu', '0000-00-00', 60, 'Cinnamon - Ground'),
(932, 'rroddanpv', '0000-00-00', 56, 'Towel - Roll White'),
(933, 'cleekpw', '0000-00-00', 3, 'Tomatoes - Hot House'),
(934, 'wattargepx', '0000-00-00', 88, 'Chef Hat 25cm'),
(935, 'ntreadgoldpy', '0000-00-00', 74, 'Tart - Raisin And Pecan'),
(936, 'gbatrampz', '0000-00-00', 20, 'Gatorade - Cool Blue Raspberry'),
(937, 'dfearnq0', '0000-00-00', 31, 'Wine - Red, Mosaic Zweigelt'),
(938, 'rlambrichtq1', '0000-00-00', 91, 'Glaze - Apricot'),
(939, 'ksyrettq2', '0000-00-00', 97, 'Container Clear 8 Oz'),
(940, 'ktwopennyq3', '0000-00-00', 32, 'Coconut - Whole'),
(941, 'mantognoniq4', '0000-00-00', 45, 'Wine - Red, Cabernet Sauvignon'),
(942, 'hbygraveq5', '0000-00-00', 56, 'Muffin Puck Ww Carrot'),
(943, 'fnarisq6', '0000-00-00', 35, 'Petite Baguette'),
(944, 'rvillaretq7', '0000-00-00', 33, 'Nantucket Cranberry Juice'),
(945, 'dgroucockq8', '0000-00-00', 37, 'Bok Choy - Baby'),
(946, 'charbinq9', '0000-00-00', 88, 'Wood Chips - Regular'),
(947, 'hmuinoqa', '0000-00-00', 20, 'Celery Root'),
(948, 'pguyeqb', '0000-00-00', 62, 'Bouq All Italian - Primerba'),
(949, 'mmacmurrayqc', '0000-00-00', 27, 'Venison - Striploin'),
(950, 'echastelainqd', '0000-00-00', 28, 'Veal - Inside, Choice'),
(951, 'moconorqe', '0000-00-00', 64, 'Puree - Strawberry'),
(952, 'gloxstonqf', '0000-00-00', 63, 'Fish - Base, Bouillion'),
(953, 'kraithmillqg', '0000-00-00', 51, 'Cake - Cheese Cake 9 Inch'),
(954, 'kpharoahqh', '0000-00-00', 20, 'Wine - Riesling Alsace Ac 2001'),
(955, 'gbeckwithqi', '0000-00-00', 23, 'Wine - Jackson Triggs Okonagan'),
(956, 'jstollwerkqj', '0000-00-00', 11, 'Gherkin'),
(957, 'csaleqk', '0000-00-00', 12, 'Goat - Whole Cut'),
(958, 'brembrantql', '0000-00-00', 51, 'Cheese - Gorgonzola'),
(959, 'mpeaqm', '0000-00-00', 80, 'Bacardi Limon'),
(960, 'lmulberyqn', '0000-00-00', 76, 'Appetizer - Chicken Satay'),
(961, 'edunckleyqo', '0000-00-00', 32, 'Sauce - Hollandaise'),
(962, 'fbulliventqp', '0000-00-00', 24, 'Vector Energy Bar'),
(963, 'efaveyqq', '0000-00-00', 52, 'Fiddlehead - Frozen'),
(964, 'omuskqr', '0000-00-00', 79, 'Dates'),
(965, 'tskoateqs', '0000-00-00', 42, 'Wine - Cotes Du Rhone Parallele'),
(966, 'jfoskinqt', '0000-00-00', 30, 'Pastry - Apple Large'),
(967, 'efermingerqu', '0000-00-00', 84, 'Muffin Carrot - Individual'),
(968, 'kbarwiseqv', '0000-00-00', 15, 'Towel Dispenser'),
(969, 'lfanceqw', '0000-00-00', 36, 'Squid - U 5'),
(970, 'rlobeqx', '0000-00-00', 23, 'Bread - Crusty Italian Poly'),
(971, 'osantoqy', '0000-00-00', 63, 'Table Cloth 54x54 White'),
(972, 'uclyburnqz', '0000-00-00', 24, 'Dawn Professionl Pot And Pan'),
(973, 'eadamoviczr0', '0000-00-00', 88, 'Wine - Remy Pannier Rose'),
(974, 'agolborner1', '0000-00-00', 3, 'Pork - Back, Short Cut, Boneless'),
(975, 'mbesnardr2', '0000-00-00', 6, 'Sponge Cake Mix - Chocolate'),
(976, 'avousdenr3', '0000-00-00', 53, 'Mop Head - Cotton, 24 Oz'),
(977, 'wbernardosr4', '0000-00-00', 70, 'Muffin - Blueberry Individual'),
(978, 'csevierr5', '0000-00-00', 48, 'Corn Meal'),
(979, 'amackier6', '0000-00-00', 42, 'Soup - Chicken And Wild Rice'),
(980, 'bfarnfieldr7', '0000-00-00', 14, 'Ham - Virginia'),
(981, 'rjohnssonr8', '0000-00-00', 72, 'Soup - Chicken And Wild Rice'),
(982, 'pwandrichr9', '0000-00-00', 27, 'Petit Baguette'),
(983, 'gkalinovichra', '0000-00-00', 68, 'Creme De Menth - White'),
(984, 'mprahmrb', '0000-00-00', 7, 'Zucchini - Mini, Green'),
(985, 'dslinerc', '0000-00-00', 97, 'Beans - Fava, Canned'),
(986, 'candryuninrd', '0000-00-00', 96, 'Napkin Colour'),
(987, 'abonnairere', '0000-00-00', 56, 'Cleaner - Bleach'),
(988, 'sbrudenellrf', '0000-00-00', 23, 'Beef - Outside, Round'),
(989, 'ctomanrg', '0000-00-00', 89, 'Wine - Casillero Deldiablo'),
(990, 'xbillisonrh', '0000-00-00', 74, 'Soup Campbells - Tomato Bisque'),
(991, 'bmainwaringri', '0000-00-00', 25, 'Chips - Potato Jalapeno'),
(992, 'kwilcottrj', '0000-00-00', 25, 'Table Cloth 81x81 White'),
(993, 'hcokerrk', '0000-00-00', 74, 'Wine - Barbera Alba Doc 2001'),
(994, 'hsaffranrl', '0000-00-00', 20, 'Sauce - Demi Glace'),
(995, 'fsheahanrm', '0000-00-00', 62, 'Milk - 1%'),
(996, 'ihekkertrn', '0000-00-00', 98, 'Cookie - Oatmeal'),
(997, 'scornelleauro', '0000-00-00', 9, 'Tomato Paste'),
(998, 'ecoffeerp', '0000-00-00', 30, 'Juice - Clam, 46 Oz'),
(999, 'tnethercottrq', '0000-00-00', 1, 'Filter - Coffee'),
(1000, 'kateggartrr', '0000-00-00', 14, 'Laundry - Bag Cloth');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `email`) VALUES
(1, 'psaipy0', 'wC1@i~WVL%jjx/', 'nlinggard0@behance.net'),
(2, 'ajurasz1', 'dP7=u/FTC', 'mlaroux1@nhs.uk'),
(3, 'ssollime2', 'wP9?2e$+5WOTq8,', 'wchatenet2@wp.com'),
(4, 'hmccreath3', 'pE6&86?%.', 'rrebichon3@berkeley.edu'),
(5, 'tmannin4', 'pS3%1~%G>~9=9', 'kmouth4@infoseek.co.jp'),
(6, 'fgilman5', 'cN4.Z*A)iV.B', 'fmessage5@amazon.de'),
(7, 'nwhartonby6', 'xB2.iQ$H{<6|Qyd', 'mpilpovic6@aol.com'),
(8, 'ctruckett7', 'bY9>Y.SFr#c', 'rhaslock7@fema.gov'),
(9, 'estoate8', 'tY3>2LQPsk', 'acusworth8@deliciousdays.com'),
(10, 'gboulger9', 'xK2<!}3rz*jWl', 'sbissiker9@google.de'),
(11, 'mwandlessa', 'nB1<U%!|$a@l5$hM', 'ginggalla@dion.ne.jp'),
(12, 'sbothamb', 'sG5+y77(p?x', 'rbriggsb@etsy.com'),
(13, 'llillowc', 'nW7(}|&jk', 'dhelmc@admin.ch'),
(14, 'epetrid', 'sM0#V<(Q(6`9', 'hgabbotd@issuu.com'),
(15, 'sfinessye', 'cG8_.xQ,|W0', 'fstrutherse@theglobeandmail.com'),
(16, 'eaverayf', 'cK5/_Wm9\"Dpd5R', 'broself@w3.org'),
(17, 'ycozbyg', 'aV6/mk(l*l', 'mcocklingg@uol.com.br'),
(18, 'cfieldgateh', 'bV4Y#z948t', 'jholtumh@dot.gov'),
(19, 'cbicklei', 'oF4+s_3N/$308', 'asharpusi@surveymonkey.com'),
(20, 'mbolsoverj', 'sO1!n(DI{', 'rhallumj@godaddy.com'),
(21, 'frottek', 'jG5`h$r=@Xy', 'ddearmank@icio.us'),
(22, 'gbilbrookl', 'zL6$It~Xw', 'agiorgil@pcworld.com'),
(23, 'aborem', 'cH6!tuxtJ', 'tpickhaverm@sohu.com'),
(24, 'chavvockn', 'bI0|jW)}cwwI!', 'crembrandtn@cisco.com'),
(25, 'fjenneo', 'dR5{\".d~', 'rswabyo@foxnews.com'),
(26, 'mskoughmanp', 'vK5,`}lTd<EeJ?1a', 'ccomiskeyp@livejournal.com'),
(27, 'pdreamerq', 'iV8(O>La*AgYom$', 'kgristockq@deviantart.com'),
(28, 'gvannucciniir', 'aJ8&A/QW\',p+', 'cbaptister@wordpress.org'),
(29, 'fbuessens', 'zG6*RI.3\"HCjs~', 'slethardys@soup.io'),
(30, 'rbrantt', 'hS9|=*wQ_d', 'bkinvigt@jugem.jp'),
(31, 'nandrosiku', 'rH6*)NUG?', 'bwesthoferu@vistaprint.com'),
(32, 'jwraggsv', 'qJ6~%t=<vdIFXlLl', 'jshevlanev@indiatimes.com'),
(33, 'slepopew', 'yZ7=/Jnw*_', 'pwimmerw@bloglines.com'),
(34, 'amacnockaterx', 'qN4#w,.#ht3#=l.', 'gpalluschekx@123-reg.co.uk'),
(35, 'mclemmitty', 'aN7*ZMnV%*y<U', 'ktouroty@histats.com'),
(36, 'rmarxsenz', 'qU3\00$>y<S', 'lhicklingbottomz@prlog.org'),
(37, 'cstannus10', 'pT2OF}AL*', 'lwillwood10@livejournal.com'),
(38, 'dandreotti11', 'iA5~&7?E(NAzP*)B', 'ftilio11@ft.com'),
(39, 'islingsby12', 'hS9\'MkS3', 'tmurrthum12@answers.com'),
(40, 'frosgen13', 'iH4#fk?gION!hZ0', 'sjiran13@bluehost.com'),
(41, 'nstoppe14', 'qJ8\'mm4/SG(R', 'ssimmonett14@ca.gov'),
(42, 'vmonard15', 'tI4\"Nw}&N?y*', 'igiamelli15@europa.eu'),
(43, 'bbresner16', 'fT1?6AWHOh9S<Bj', 'kleffek16@joomla.org'),
(44, 'dhighman17', 'bP6}hg1}h+', 'gboow17@japanpost.jp'),
(45, 'uvarfolomeev18', 'wG5`$JwH8(\'nF', 'fantusch18@blogtalkradio.com'),
(46, 'gdallicoat19', 'oC0$@w?ng(=J27', 'afraniak19@dailymotion.com'),
(84, 'kkinnon2b', 'iC9?TZf=y@\"ZVzgV', 'hyockley2b@abc.net.au'),
(85, 'rcellone2c', 'cA6!*_uyR=7|sb', 'tstatton2c@mail.ru'),
(86, 'ling2d', 'lK9{RkDy5bj{', 'hchalice2d@shop-pro.jp'),
(87, 'lreynoollds2e', 'zG4{I+8Dk', 'wshortin2e@mozilla.com');

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `web_id` int(50) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_design` varchar(255) NOT NULL,
  `user_id` int(50) NOT NULL,
  `order_id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `promote_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `order_of_customer` (`order_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `employee_handle_payment` (`payment_id`),
  ADD KEY `employee_department` (`department_id`);

--
-- Indexes for table `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_od_prod` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `pay_of_order` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promote_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`web_id`),
  ADD KEY `promote_main` (`promote_id`),
  ADD KEY `user_main` (`user_id`),
  ADD KEY `product_main` (`product_id`),
  ADD KEY `order_main` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oder`
--
ALTER TABLE `oder`
  MODIFY `order_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promote_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `order_of_customer` FOREIGN KEY (`order_id`) REFERENCES `oder` (`order_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `employee_handle_payment` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `oder`
--
ALTER TABLE `oder`
  ADD CONSTRAINT `order_od_prod` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `pay_of_order` FOREIGN KEY (`order_id`) REFERENCES `oder` (`order_id`);

--
-- Constraints for table `website`
--
ALTER TABLE `website`
  ADD CONSTRAINT `order_main` FOREIGN KEY (`order_id`) REFERENCES `oder` (`order_id`),
  ADD CONSTRAINT `product_main` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `promote_main` FOREIGN KEY (`promote_id`) REFERENCES `promotion` (`promote_id`),
  ADD CONSTRAINT `user_main` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
