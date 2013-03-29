-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2012 at 10:56 AM
-- Server version: 5.1.66
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `enginee8_events`
--

-- --------------------------------------------------------

--
-- Table structure for table `baught`
--

DROP TABLE IF EXISTS `baught`;
CREATE TABLE IF NOT EXISTS `baught` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `stock_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `cost` double(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=178 ;

--
-- Dumping data for table `baught`
--

INSERT INTO `baught` (`id`, `user_id`, `stock_id`, `quantity`, `cost`) VALUES
(1, 1, 1, 10, 8000.00),
(2, 1, 2, 10, 500.00),
(4, 1, 3, 5, 1500.00),
(9, 8, 6, 100, 17200.00),
(19, 21, 5, 500, 180858.00),
(20, 21, 10, 200, 64400.00),
(53, 35, 5, 701, 345937.29),
(55, 35, 7, 200, 92742.00),
(56, 35, 10, 100, 40451.00),
(57, 35, 12, 200, 62937.00),
(58, 35, 13, 400, 188725.00),
(65, 35, 6, 200, 28814.00),
(67, 35, 9, 100, 89305.00),
(69, 35, 11, 200, 135691.00),
(87, 8, 5, 1300, 747956.00),
(104, 40, 8, 100, 227747.00),
(112, 40, 11, 1, 735.60),
(177, 17, 5, 8000, 1`0099800.00);

-- --------------------------------------------------------

--
-- Table structure for table `mid`
--

DROP TABLE IF EXISTS `mid`;
CREATE TABLE IF NOT EXISTS `mid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stock_id` int(10) NOT NULL,
  `Description` text NOT NULL,
  `sequence` int(11) NOT NULL,
  `title` text NOT NULL,
  `diff` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `mid`
--

INSERT INTO `mid` (`id`, `stock_id`, `Description`, `sequence`, `title`, `diff`) VALUES
(13, 5, 'will take you to the airport in less than an hour with a new stretch being announced. The new line will start at MK Road and is expected to be completed by April 2013.', 1, ' Mangalore Metro ', 15),
(14, 6, 'announces new passenger sedan. The car, Aurel, comes with a 1.6L engine and is a family car priced at 6-8L is expected to compete with cars such as the Ford Fiesta in the market. It was unveiled this Friday at a launch in Mumbai.\r\n', 1, ' N&H Auto ', -10),
(15, 7, 'ITF to invest 10000 croces in a bit to increase Hotel Business by two-thirds.', 1, 'ITF', 8),
(16, 8, 'Due to OPEC regulations concerning share of oil exported UAE gets a large quota for oil\r\nexport. 20% of the oil exported from the gulf is from UAE. Most of the oil exported by Abu Dhabi Oil Corporation is to South asia.\r\n', 1, 'Abu Dhabi Oil Inc. ', 5),
(17, 9, 'Garuda in talks with gali vahana to buy out the later airlines. This would give the new company, garuda vahana the largest market share in domestic flights in India.', 1, 'Garuda Airlines', 3),
(18, 10, 'Following IPO of the famous indian online retail company market analyst say that the\r\ncompany’s stock is price is much higher that its true asset valuations.\r\n', 1, 'Dipkart', -20),
(19, 11, 'Mclaggen-Cola India claimed to have captured 58.4 per cent share of the carbonated soft drink market and announced appointment of 6 regional directors. ', 1, '1.	Coke India captures 58% marketshare', 13),
(20, 12, 'The promoters of large companies such as Sunsoft and Tata Communications will have to shell out more stake to comply with the public shareholding norms', 1, 'Sunsoft, Tata Comm must sell shares to meet new norms', -8),
(21, 13, 'Consumer durables maker Sintech India today said it expects sales of Rs 1,200 crore during the upcoming festive    season.', 1, 'Sintech India targets Rs 1200cr sales in festive season ', 9),
(22, 5, 'Now, hop off the Metro and take a cycle. Metro commuters can get out of the station, hire a cycle from the cycle parking lot, go around short distances for their work and come back with the cycle to the station.\r\n', 3, 'Mangalore Metro', -8),
(23, 6, 'N&H to manufacture indigeneous transport vehicles for the Indian Army. N&H Chairman Niraj Hundal signed a 500cr. Contract with the MoD which would see N&H producing  150000 LTV’s.', 3, 'N&H Conglomerates', -10),
(24, 7, 'ITF increases prices of its flagship brand of cigarettes Silverflake by 7.2%.\r\n', 3, ' ITF ', -15),
(25, 8, 'Quarterly reports: 23% increase in profits from previous quarter.\r\n', 3, 'Abu Dhabi Oil Inc. ', 23),
(26, 9, 'The fall in rupee value makes air fuel costlier. garuda vahana defaults in paying the oil\r\ncompanies and banks.\r\n', 3, 'Garuda Airlines', -11),
(27, 10, 'Dipkart announces its first quarterly report. market analysts say that the report and the profits\r\nwere better than they expected.\r\n', 3, 'Dipkart', 12),
(28, 11, 'Mclaggen cola India has announced a Rs. 2 discount on Glass bottle which may bring in good profits to the company keeping in mind the rural and semi-urban market.', 3, 'Mclaggen-Cola', 25),
(29, 12, 'Sunsoft to allot 63114 equity shares under Restricted Stock Unit Plan 2005-2007', 3, 'Sunsoft to allot 63114 equity shares under Restricted Stock Unit Plan 2005 2007', -7),
(30, 5, 'Reach 3 of the mangalore metro has been announced the northern line from Swar Road to Yashpur (5.1 km) and Yashpur to Panipette (4.8km) will be the next reach that will be commissioned. This reach is expected to be opened to public mid 2013.\r\n', 5, 'Mangalore Metro', 6),
(31, 6, 'Accounts Manager sacked. Found to have embezeled 50 lacs by falsifying accounts and making excessive re-imbursements.\r\n', 5, 'N&H fraud', -13),
(32, 7, 'ITF to expand its ready-to-eat brand Chefs Of India’s overseas market as it announces partnership with American retail giant WALMART.\r\n', 5, 'ITF', -3),
(33, 8, 'Speculation in change of regulations of oil export by OPEC before the next OPEC meeting.\r\n', 5, 'Abu Dhabi Oil Inc. ', -7),
(34, 9, 'Mounting unrest in europe''s financial stability. Following defaulting 4 th installment one of the 6 banks from the bank conglomerate which financed the merger sues garuda.\r\n', 5, 'Garuda Airlines', -33),
(35, 10, 'Dipkart launches a new online site for holiday bookings called tripkart.\r\n', 5, 'Dipkart', 5),
(36, 11, 'Mclaggen-Cola Co. (KO), the world''s largest soft drink maker, authorized a new plan to buy back 500 million shares, valued at about $18.9 billion', 5, '3.	Mclaggen-Cola Adds 500 Million Shares to Buyback Program ', 16),
(37, 12, 'India''s leading software exporters could see a modest uptick in outsourcing business from the United States and Europe', 5, 'Infy, TCS, Sunsoft may see uptick in outsourcing business', 11),
(38, 13, 'Japanese consumer electronics major Sintech will start exports of home appliances from India as part of plans to make the country a manufacturing hub and the first shipment is likely by 2014-15.', 5, 'Sintech to make India manufacturing hub; to start exports', 9);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stock_id` int(10) NOT NULL,
  `Description` text NOT NULL,
  `sequence` int(11) NOT NULL,
  `title` text NOT NULL,
  `diff` float NOT NULL,
  `date` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `stock_id`, `Description`, `sequence`, `title`, `diff`, `date`) VALUES
(8, 5, 'will take you to the airport in less than an hour with a new stretch being announced. The new line will start at MK Road and is expected to be completed by April 2013.', 1, ' Mangalore Metro ', 0, '20:10'),
(9, 6, 'announces new passenger sedan. The car, Aurel, comes with a 1.6L engine and is a family car priced at 6-8L is expected to compete with cars such as the Ford Fiesta in the market. It was unveiled this Friday at a launch in Mumbai.\r\n', 1, ' N&H Auto ', 0, '20:10'),
(10, 7, 'ITF to invest 10000 croces in a bit to increase Hotel Business by two-thirds.', 1, 'ITF', 0, '20:10'),
(11, 8, 'Due to OPEC regulations concerning share of oil exported UAE gets a large quota for oil\r\nexport. 20% of the oil exported from the gulf is from UAE. Most of the oil exported by Abu Dhabi Oil Corporation is to South asia.\r\n', 1, 'Abu Dhabi Oil Inc. ', 0, '20:10'),
(12, 9, 'Garuda in talks with gali vahana to buy out the later airlines. This would give the new company, garuda vahana the largest market share in domestic flights in India.', 1, 'Garuda Airlines', 0, '20:10'),
(13, 10, 'Following IPO of the famous indian online retail company market analyst say that the\r\ncompany’s stock is price is much higher that its true asset valuations.\r\n', 1, 'Dipkart', 0, '20:10'),
(14, 11, 'Mclaggen-Cola India claimed to have captured 58.4 per cent share of the carbonated soft drink market and announced appointment of 6 regional directors. ', 1, 'Coke India captures 58% marketshare', 0, '20:10'),
(15, 12, 'The promoters of large companies such as Sunsoft and Tata Communications will have to shell out more stake to comply with the public shareholding norms', 1, 'Sunsoft, Tata Comm must sell shares to meet new norms', 0, '20:10'),
(16, 13, 'Consumer durables maker Sintech India today said it expects sales of Rs 1,200 crore during the upcoming festive    season.', 1, 'Sintech India targets Rs 1200cr sales in festive season ', 0, '20:10'),
(17, 5, 'Now, hop off the Metro and take a cycle. Metro commuters can get out of the station, hire a cycle from the cycle parking lot, go around short distances for their work and come back with the cycle to the station.\r\n', 3, 'Mangalore Metro', 0, '20:50'),
(18, 6, 'N&H to manufacture indigeneous transport vehicles for the Indian Army. N&H Chairman Niraj Hundal signed a 500cr. Contract with the MoD which would see N&H producing  150000 LTV’s.', 3, 'N&H Conglomerates', 0, '20:50'),
(19, 7, 'ITF increases prices of its flagship brand of cigarettes Silverflake by 7.2%.\r\n', 3, ' ITF ', 0, '20:50'),
(20, 8, 'Quarterly reports: 23% increase in profits from previous quarter.\r\n', 3, 'Abu Dhabi Oil Inc. ', 0, '20:50'),
(21, 9, 'The fall in rupee value makes air fuel costlier. garuda vahana defaults in paying the oil\r\ncompanies and banks.\r\n', 3, 'Garuda Airlines', 0, '20:50'),
(22, 10, 'Dipkart announces its first quarterly report. market analysts say that the report and the profits\r\nwere better than they expected.\r\n', 3, 'Dipkart', 0, '20:50'),
(23, 11, 'Mclaggen cola India has announced a Rs. 2 discount on Glass bottle which may bring in good profits to the company keeping in mind the rural and semi-urban market.', 3, 'Mclaggen-Cola', 0, '20:50'),
(24, 12, 'Sunsoft to allot 63114 equity shares under Restricted Stock Unit Plan 2005-2007', 3, 'Sunsoft to allot 63114 equity shares under Restricted Stock Unit Plan 2005 2007', 0, '20:50'),
(25, 5, 'Reach 3 of the mangalore metro has been announced the northern line from Swar Road to Yashpur (5.1 km) and Yashpur to Panipette (4.8km) will be the next reach that will be commissioned. This reach is expected to be opened to public mid 2013.\r\n', 5, 'Mangalore Metro', 0, '21:30'),
(26, 6, 'Accounts Manager sacked. Found to have embezeled 50 lacs by falsifying accounts and making excessive re-imbursements.\r\n', 5, 'N&H fraud', 0, '21:30'),
(27, 7, 'ITF to expand its ready-to-eat brand Chefs Of India’s overseas market as it announces partnership with American retail giant WALMART.\r\n', 5, 'ITF', 0, '21:30'),
(28, 8, 'Speculation in change of regulations of oil export by OPEC before the next OPEC meeting.\r\n', 5, 'Abu Dhabi Oil Inc. ', 0, '21:30'),
(29, 9, 'Mounting unrest in europe''s financial stability. Following defaulting 4 th installment one of the 6 banks from the bank conglomerate which financed the merger sues garuda.\r\n', 5, 'Garuda Airlines', 0, '21:30'),
(30, 10, 'Dipkart launches a new online site for holiday bookings called tripkart.\r\n', 5, 'Dipkart', 0, '21:30'),
(31, 11, 'Mclaggen-Cola Co. (KO), the world''s largest soft drink maker, authorized a new plan to buy back 500 million shares, valued at about $18.9 billion', 5, '3.	Mclaggen-Cola Adds 500 Million Shares to Buyback Program ', 0, '21:30'),
(32, 12, 'India''s leading software exporters could see a modest uptick in outsourcing business from the United States and Europe', 5, 'Infy, TCS, Sunsoft may see uptick in outsourcing business', 0, '21:30'),
(33, 13, 'Japanese consumer electronics major Sintech will start exports of home appliances from India as part of plans to make the country a manufacturing hub and the first shipment is likely by 2014-15.', 5, 'Sintech to make India manufacturing hub; to start exports', 0, '21:30');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `value` float(6,2) NOT NULL,
  `Description` text NOT NULL,
  `changes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `Name`, `value`, `Description`, `changes`) VALUES
(5, 'Mangalore Metro', 1848.16, 'A joint venture infrastructure company established by Government of India and Biswas Enterprises.', 'a:75:{i:0;s:6:"310.00";i:1;s:6:"310.00";i:2;s:6:"310.00";i:3;s:6:"310.00";i:4;s:6:"338.57";i:5;s:6:"338.57";i:6;s:6:"338.57";i:7;s:6:"340.00";i:8;s:6:"340.00";i:9;s:6:"410.00";i:10;s:6:"410.00";i:11;s:6:"410.00";i:12;s:6:"496.14";i:13;s:6:"489.00";i:14;s:6:"489.00";i:15;s:6:"489.00";i:16;s:6:"489.00";i:17;s:6:"496.14";i:18;s:6:"510.42";i:19;s:6:"510.42";i:20;s:6:"510.43";i:21;s:6:"510.43";i:22;s:6:"524.72";i:23;s:6:"524.72";i:24;s:6:"524.72";i:25;s:6:"524.72";i:26;s:6:"524.72";i:27;s:6:"524.72";i:28;s:6:"553.29";i:29;s:6:"539.01";i:30;s:6:"539.01";i:31;s:6:"474.72";i:32;s:6:"503.74";i:33;s:6:"503.75";i:34;s:6:"582.33";i:35;s:6:"596.62";i:36;s:6:"596.62";i:37;s:6:"653.77";i:38;s:6:"422.13";i:39;s:6:"615.01";i:40;s:6:"615.01";i:41;s:6:"543.59";i:42;s:6:"615.00";i:43;s:6:"529.28";i:44;s:6:"743.56";i:45;s:6:"686.42";i:46;s:6:"686.42";i:47;s:6:"686.42";i:48;s:6:"686.42";i:49;s:6:"886.41";i:50;s:6:"743.55";i:51;s:6:"905.86";i:52;s:6:"991.56";i:53;s:7:"1148.68";i:54;s:7:"1134.37";i:55;s:7:"1048.64";i:56;s:6:"934.33";i:57;s:6:"734.31";i:58;s:7:"1177.15";i:59;s:7:"1477.12";i:60;s:7:"1419.94";i:61;s:7:"1591.34";i:62;s:6:"734.19";i:63;s:7:"1362.71";i:64;s:7:"1934.10";i:65;s:7:"1034.07";i:66;s:6:"948.35";i:67;s:6:"762.63";i:68;s:6:"705.43";i:69;s:6:"705.42";i:70;s:6:"876.84";i:71;s:6:"705.39";i:72;s:6:"705.39";i:73;s:7:"1248.22";i:74;s:7:"1105.34";}'),
(6, 'N H Conglomerates', 158.86, 'Automobile manufacturing company established in HOSUR', 'a:75:{i:0;s:6:"172.00";i:1;s:6:"172.00";i:2;s:6:"172.00";i:3;s:6:"172.00";i:4;s:6:"172.00";i:5;s:6:"172.00";i:6;s:6:"200.58";i:7;s:6:"200.58";i:8;s:6:"200.58";i:9;s:6:"214.87";i:10;s:6:"214.87";i:11;s:6:"214.87";i:12;s:6:"193.38";i:13;s:6:"193.38";i:14;s:6:"193.38";i:15;s:6:"193.38";i:16;s:6:"193.38";i:17;s:6:"193.38";i:18;s:6:"193.38";i:19;s:6:"193.38";i:20;s:6:"179.10";i:21;s:6:"179.10";i:22;s:6:"179.10";i:23;s:6:"179.10";i:24;s:6:"179.10";i:25;s:6:"179.10";i:26;s:6:"193.39";i:27;s:6:"214.82";i:28;s:6:"214.82";i:29;s:6:"179.11";i:30;s:6:"236.26";i:31;s:6:"171.98";i:32;s:6:"186.93";i:33;s:6:"172.64";i:34;s:6:"272.64";i:35;s:6:"272.64";i:36;s:6:"215.50";i:37;s:6:"244.07";i:38;s:6:"272.64";i:39;s:6:"186.93";i:40;s:6:"244.07";i:41;s:6:"215.50";i:42;s:6:"215.50";i:43;s:6:"215.50";i:44;s:6:"215.50";i:45;s:6:"215.50";i:46;s:6:"229.79";i:47;s:6:"186.93";i:48;s:6:"301.21";i:49;s:6:"215.49";i:50;s:6:"186.92";i:51;s:6:"187.48";i:52;s:6:"216.05";i:53;s:6:"216.05";i:54;s:6:"216.05";i:55;s:6:"216.05";i:56;s:6:"587.45";i:57;s:6:"158.87";i:58;s:6:"216.01";i:59;s:6:"216.01";i:60;s:6:"216.01";i:61;s:6:"216.01";i:62;s:6:"216.01";i:63;s:6:"216.01";i:64;s:6:"216.01";i:65;s:6:"216.01";i:66;s:6:"216.01";i:67;s:6:"173.15";i:68;s:6:"173.15";i:69;s:6:"158.86";i:70;s:6:"158.86";i:71;s:6:"158.86";i:72;s:6:"158.86";i:73;s:6:"158.86";i:74;s:6:"158.86";}'),
(7, 'ITF', 472.42, 'A food and beverage company which recently featured in fortune 500', 'a:75:{i:0;s:6:"500.00";i:1;s:6:"500.00";i:2;s:6:"500.00";i:3;s:6:"500.00";i:4;s:6:"500.00";i:5;s:6:"500.00";i:6;s:6:"500.00";i:7;s:6:"514.29";i:8;s:6:"515.72";i:9;s:6:"515.72";i:10;s:6:"515.72";i:11;s:6:"515.72";i:12;s:6:"556.98";i:13;s:6:"556.98";i:14;s:6:"564.12";i:15;s:6:"564.12";i:16;s:6:"571.26";i:17;s:6:"578.40";i:18;s:6:"585.54";i:19;s:6:"585.54";i:20;s:6:"585.54";i:21;s:6:"545.54";i:22;s:6:"545.54";i:23;s:6:"545.54";i:24;s:6:"545.54";i:25;s:6:"545.54";i:26;s:6:"545.54";i:27;s:6:"545.54";i:28;s:6:"559.83";i:29;s:6:"559.83";i:30;s:6:"559.83";i:31;s:6:"559.83";i:32;s:6:"492.28";i:33;s:6:"492.28";i:34;s:6:"492.28";i:35;s:6:"520.85";i:36;s:6:"520.85";i:37;s:6:"549.42";i:38;s:6:"527.99";i:39;s:6:"527.99";i:40;s:6:"556.56";i:41;s:6:"552.26";i:42;s:6:"495.12";i:43;s:6:"495.12";i:44;s:6:"495.12";i:45;s:6:"495.12";i:46;s:6:"545.10";i:47;s:6:"687.95";i:48;s:6:"502.24";i:49;s:6:"502.24";i:50;s:6:"687.94";i:51;s:6:"501.00";i:52;s:6:"501.00";i:53;s:6:"472.42";i:54;s:6:"472.42";i:55;s:6:"472.42";i:56;s:6:"472.42";i:57;s:6:"472.42";i:58;s:6:"472.42";i:59;s:6:"500.99";i:60;s:6:"500.99";i:61;s:6:"500.99";i:62;s:6:"500.99";i:63;s:6:"500.99";i:64;s:6:"500.99";i:65;s:6:"500.99";i:66;s:6:"500.99";i:67;s:6:"500.99";i:68;s:6:"500.99";i:69;s:6:"472.42";i:70;s:6:"472.42";i:71;s:6:"472.42";i:72;s:6:"472.42";i:73;s:6:"472.42";i:74;s:6:"472.42";}'),
(8, 'Abu Dhabi Oil inc.', 2102.37, 'Major UAE based oil manufacturer founded by Sheikh Eruli', 'a:75:{i:0;s:7:"2100.00";i:1;s:7:"2100.00";i:2;s:7:"2100.00";i:3;s:7:"2100.00";i:4;s:7:"2100.00";i:5;s:7:"2107.14";i:6;s:7:"2110.00";i:7;s:7:"2104.29";i:8;s:7:"2104.29";i:9;s:7:"2101.43";i:10;s:7:"2104.29";i:11;s:7:"2104.29";i:12;s:7:"2209.50";i:13;s:7:"2216.64";i:14;s:7:"2220.93";i:15;s:7:"2219.50";i:16;s:7:"2205.22";i:17;s:7:"2205.22";i:18;s:7:"2205.22";i:19;s:7:"2205.22";i:20;s:7:"2205.22";i:21;s:7:"2205.22";i:22;s:7:"2205.22";i:23;s:7:"2205.22";i:24;s:7:"2205.22";i:25;s:7:"2205.22";i:26;s:7:"2205.22";i:27;s:7:"2205.22";i:28;s:7:"2205.22";i:29;s:7:"2205.22";i:30;s:7:"2205.22";i:31;s:7:"2236.65";i:32;s:7:"2751.08";i:33;s:7:"2733.94";i:34;s:7:"2741.08";i:35;s:7:"2744.65";i:36;s:7:"2737.51";i:37;s:7:"2265.32";i:38;s:7:"2265.32";i:39;s:7:"2265.32";i:40;s:7:"2265.32";i:41;s:7:"2263.18";i:42;s:7:"2263.18";i:43;s:7:"2291.76";i:44;s:7:"2306.05";i:45;s:7:"2306.05";i:46;s:7:"2306.05";i:47;s:7:"2277.48";i:48;s:7:"2420.33";i:49;s:7:"2276.04";i:50;s:7:"2276.04";i:51;s:7:"2116.72";i:52;s:7:"2316.71";i:53;s:7:"2116.71";i:54;s:7:"2116.71";i:55;s:7:"2116.71";i:56;s:7:"2116.71";i:57;s:7:"2430.98";i:58;s:7:"2116.70";i:59;s:7:"2425.26";i:60;s:7:"2110.97";i:61;s:7:"2110.97";i:62;s:7:"2249.53";i:63;s:7:"2106.67";i:64;s:7:"2106.67";i:65;s:7:"2106.67";i:66;s:7:"2106.67";i:67;s:7:"2106.66";i:68;s:7:"2102.37";i:69;s:7:"2102.37";i:70;s:7:"2102.37";i:71;s:7:"2102.37";i:72;s:7:"2102.37";i:73;s:7:"2102.37";i:74;s:7:"2102.37";}'),
(9, 'Garuda Airlines', 272.71, 'An international airlines founded by legendary entrepreneur Dr. Aman Gandhi', 'a:75:{i:0;s:6:"969.00";i:1;s:6:"969.00";i:2;s:6:"969.00";i:3;s:6:"969.00";i:4;s:6:"969.00";i:5;s:6:"969.00";i:6;s:6:"969.00";i:7;s:6:"969.00";i:8;s:6:"969.00";i:9;s:6:"969.00";i:10;s:6:"969.00";i:11;s:6:"980.43";i:12;s:7:"1009.84";i:13;s:7:"1005.55";i:14;s:7:"1005.55";i:15;s:7:"1013.41";i:16;s:7:"1009.12";i:17;s:7:"1009.12";i:18;s:7:"1004.83";i:19;s:7:"1004.83";i:20;s:7:"1004.83";i:21;s:7:"1019.12";i:22;s:7:"1019.12";i:23;s:7:"1019.12";i:24;s:7:"1019.12";i:25;s:7:"1019.12";i:26;s:7:"1019.12";i:27;s:7:"1019.12";i:28;s:7:"1019.12";i:29;s:7:"1044.12";i:30;s:7:"1036.97";i:31;s:7:"1022.68";i:32;s:6:"893.05";i:33;s:6:"893.05";i:34;s:6:"935.91";i:35;s:6:"500.00";i:36;s:6:"478.57";i:37;s:6:"442.86";i:38;s:6:"478.58";i:39;s:6:"421.44";i:40;s:6:"435.73";i:41;s:6:"407.15";i:42;s:6:"407.15";i:43;s:6:"407.15";i:44;s:6:"421.44";i:45;s:6:"507.15";i:46;s:6:"464.29";i:47;s:6:"407.15";i:48;s:6:"421.44";i:49;s:6:"407.14";i:50;s:6:"407.14";i:51;s:6:"272.78";i:52;s:6:"272.78";i:53;s:6:"272.78";i:54;s:6:"272.78";i:55;s:6:"272.78";i:56;s:6:"272.78";i:57;s:6:"272.78";i:58;s:6:"272.78";i:59;s:6:"272.78";i:60;s:6:"272.78";i:61;s:6:"615.63";i:62;s:6:"272.76";i:63;s:6:"272.76";i:64;s:6:"387.04";i:65;s:6:"901.30";i:66;s:6:"329.86";i:67;s:6:"329.86";i:68;s:6:"315.57";i:69;s:6:"272.71";i:70;s:6:"272.71";i:71;s:6:"272.71";i:72;s:6:"272.71";i:73;s:6:"272.71";i:74;s:6:"272.71";}'),
(10, 'Dipkart', 337.64, 'An E-commerce site founded by yound bunch of NITK allumni', 'a:75:{i:0;s:6:"322.00";i:1;s:6:"322.00";i:2;s:6:"322.00";i:3;s:6:"322.00";i:4;s:6:"322.00";i:5;s:6:"322.00";i:6;s:6:"322.00";i:7;s:6:"322.00";i:8;s:6:"322.00";i:9;s:6:"350.57";i:10;s:6:"364.86";i:11;s:6:"368.43";i:12;s:6:"294.74";i:13;s:6:"280.45";i:14;s:6:"280.45";i:15;s:6:"280.45";i:16;s:6:"280.45";i:17;s:6:"284.74";i:18;s:6:"284.74";i:19;s:6:"284.74";i:20;s:6:"284.74";i:21;s:6:"284.74";i:22;s:6:"284.74";i:23;s:6:"284.74";i:24;s:6:"294.74";i:25;s:6:"309.03";i:26;s:6:"300.46";i:27;s:6:"300.46";i:28;s:6:"300.46";i:29;s:6:"304.03";i:30;s:6:"304.03";i:31;s:6:"361.17";i:32;s:6:"404.51";i:33;s:6:"334.51";i:34;s:6:"334.51";i:35;s:6:"377.37";i:36;s:6:"377.37";i:37;s:6:"391.65";i:38;s:6:"391.65";i:39;s:6:"363.08";i:40;s:6:"363.08";i:41;s:6:"363.08";i:42;s:6:"363.08";i:43;s:6:"420.22";i:44;s:6:"448.79";i:45;s:6:"363.07";i:46;s:6:"363.07";i:47;s:6:"334.50";i:48;s:6:"334.50";i:49;s:6:"320.20";i:50;s:6:"348.77";i:51;s:6:"366.21";i:52;s:6:"366.21";i:53;s:6:"366.21";i:54;s:6:"366.21";i:55;s:6:"394.78";i:56;s:6:"423.35";i:57;s:6:"423.35";i:58;s:6:"423.35";i:59;s:6:"423.35";i:60;s:6:"423.35";i:61;s:6:"423.35";i:62;s:6:"423.35";i:63;s:6:"423.35";i:64;s:6:"423.35";i:65;s:6:"423.35";i:66;s:6:"423.35";i:67;s:6:"423.35";i:68;s:6:"423.35";i:69;s:6:"337.64";i:70;s:6:"337.64";i:71;s:6:"337.64";i:72;s:6:"337.64";i:73;s:6:"337.64";i:74;s:6:"337.64";}'),
(11, 'Mclaggen-Cola Co.', 817.70, 'Established in 1912. This company has been raking in huge profits on it''s secret soft drink formula', 'a:75:{i:0;s:6:"450.00";i:1;s:6:"450.00";i:2;s:6:"450.00";i:3;s:6:"450.00";i:4;s:6:"450.00";i:5;s:6:"450.00";i:6;s:6:"450.00";i:7;s:6:"450.00";i:8;s:6:"457.14";i:9;s:6:"457.14";i:10;s:6:"460.71";i:11;s:6:"460.71";i:12;s:6:"520.60";i:13;s:6:"520.60";i:14;s:6:"520.60";i:15;s:6:"524.17";i:16;s:6:"538.46";i:17;s:6:"538.46";i:18;s:6:"538.46";i:19;s:6:"542.03";i:20;s:6:"542.03";i:21;s:6:"538.46";i:22;s:6:"538.46";i:23;s:6:"567.04";i:24;s:6:"567.04";i:25;s:6:"567.04";i:26;s:6:"567.04";i:27;s:6:"567.04";i:28;s:6:"567.04";i:29;s:6:"567.04";i:30;s:6:"595.61";i:31;s:6:"617.04";i:32;s:6:"807.02";i:33;s:6:"671.31";i:34;s:6:"728.46";i:35;s:6:"799.89";i:36;s:6:"814.18";i:37;s:6:"778.47";i:38;s:6:"735.61";i:39;s:6:"764.18";i:40;s:6:"764.18";i:41;s:6:"821.32";i:42;s:6:"735.60";i:43;s:6:"735.60";i:44;s:6:"735.60";i:45;s:6:"735.74";i:46;s:6:"735.74";i:47;s:6:"735.74";i:48;s:6:"735.74";i:49;s:6:"735.74";i:50;s:6:"735.74";i:51;s:6:"853.46";i:52;s:6:"824.88";i:53;s:6:"824.88";i:54;s:7:"1024.87";i:55;s:6:"817.72";i:56;s:6:"817.72";i:57;s:6:"817.72";i:58;s:6:"817.72";i:59;s:6:"817.72";i:60;s:6:"817.72";i:61;s:6:"817.72";i:62;s:6:"817.72";i:63;s:6:"989.14";i:64;s:6:"817.70";i:65;s:6:"817.70";i:66;s:6:"817.70";i:67;s:6:"817.70";i:68;s:6:"817.70";i:69;s:6:"817.70";i:70;s:6:"817.70";i:71;s:6:"817.70";i:72;s:6:"817.70";i:73;s:6:"817.70";i:74;s:6:"817.70";}'),
(12, 'Sunsoft', 309.64, 'Major Software company based in bangalore famous for it''s Cellphone and Server Operating systems. ', 'a:75:{i:0;s:6:"300.00";i:1;s:6:"300.00";i:2;s:6:"300.00";i:3;s:6:"300.00";i:4;s:6:"300.00";i:5;s:6:"328.57";i:6;s:6:"328.57";i:7;s:6:"328.57";i:8;s:6:"330.00";i:9;s:6:"330.00";i:10;s:6:"330.00";i:11;s:6:"330.00";i:12;s:6:"316.75";i:13;s:6:"316.75";i:14;s:6:"316.75";i:15;s:6:"316.75";i:16;s:6:"316.75";i:17;s:6:"316.75";i:18;s:6:"316.75";i:19;s:6:"316.75";i:20;s:6:"316.75";i:21;s:6:"316.75";i:22;s:6:"343.90";i:23;s:6:"343.90";i:24;s:6:"343.90";i:25;s:6:"343.90";i:26;s:6:"343.90";i:27;s:6:"272.47";i:28;s:6:"329.61";i:29;s:6:"272.47";i:30;s:6:"329.61";i:31;s:6:"315.32";i:32;s:6:"293.25";i:33;s:6:"336.12";i:34;s:6:"378.98";i:35;s:6:"343.27";i:36;s:6:"286.12";i:37;s:6:"328.98";i:38;s:6:"343.26";i:39;s:6:"371.83";i:40;s:6:"343.26";i:41;s:6:"343.26";i:42;s:6:"343.26";i:43;s:6:"343.26";i:44;s:6:"343.26";i:45;s:6:"286.12";i:46;s:6:"286.12";i:47;s:6:"286.12";i:48;s:6:"286.12";i:49;s:6:"386.12";i:50;s:6:"286.12";i:51;s:6:"309.66";i:52;s:6:"309.66";i:53;s:6:"338.23";i:54;s:6:"309.65";i:55;s:6:"338.22";i:56;s:6:"338.22";i:57;s:6:"338.22";i:58;s:6:"338.22";i:59;s:6:"338.22";i:60;s:6:"323.93";i:61;s:6:"323.93";i:62;s:6:"323.93";i:63;s:6:"323.93";i:64;s:6:"323.93";i:65;s:6:"323.93";i:66;s:6:"323.93";i:67;s:6:"323.93";i:68;s:6:"323.93";i:69;s:6:"309.64";i:70;s:6:"309.64";i:71;s:6:"309.64";i:72;s:6:"309.64";i:73;s:6:"309.64";i:74;s:6:"309.64";}'),
(13, 'Sintech. India', 479.24, 'A major cement manufacturing company with over 300 factories in India and all around the world', 'a:75:{i:0;s:6:"350.00";i:1;s:6:"350.00";i:2;s:6:"350.00";i:3;s:6:"350.00";i:4;s:6:"350.00";i:5;s:6:"350.00";i:6;s:6:"350.00";i:7;s:6:"357.14";i:8;s:6:"357.14";i:9;s:6:"364.28";i:10;s:6:"361.42";i:11;s:6:"361.42";i:12;s:6:"393.95";i:13;s:6:"393.95";i:14;s:6:"393.95";i:15;s:6:"401.09";i:16;s:6:"401.09";i:17;s:6:"401.09";i:18;s:6:"411.81";i:19;s:6:"411.81";i:20;s:6:"411.81";i:21;s:6:"403.95";i:22;s:6:"418.24";i:23;s:6:"418.24";i:24;s:6:"446.81";i:25;s:6:"446.81";i:26;s:6:"446.81";i:27;s:6:"446.81";i:28;s:6:"446.81";i:29;s:6:"446.81";i:30;s:6:"446.81";i:31;s:6:"446.81";i:32;s:6:"446.81";i:33;s:6:"503.96";i:34;s:6:"518.25";i:35;s:6:"446.82";i:36;s:6:"475.40";i:37;s:6:"461.12";i:38;s:6:"461.12";i:39;s:6:"518.26";i:40;s:6:"518.26";i:41;s:6:"489.69";i:42;s:6:"461.12";i:43;s:6:"461.12";i:44;s:6:"461.12";i:45;s:6:"489.69";i:46;s:6:"489.69";i:47;s:6:"511.11";i:48;s:6:"439.68";i:49;s:6:"439.68";i:50;s:6:"439.68";i:51;s:6:"479.25";i:52;s:6:"479.25";i:53;s:6:"479.25";i:54;s:6:"479.25";i:55;s:6:"764.95";i:56;s:6:"507.81";i:57;s:6:"507.81";i:58;s:6:"507.81";i:59;s:6:"507.81";i:60;s:6:"507.81";i:61;s:6:"507.81";i:62;s:6:"507.81";i:63;s:6:"507.81";i:64;s:6:"507.81";i:65;s:6:"507.81";i:66;s:6:"507.81";i:67;s:6:"507.81";i:68;s:6:"479.24";i:69;s:6:"479.24";i:70;s:6:"479.24";i:71;s:6:"479.24";i:72;s:6:"479.24";i:73;s:6:"479.24";i:74;s:6:"479.24";}');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL,
  `cash` double(10,2) NOT NULL,
  `worth` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `cash`, `worth`) VALUES
(8, 'adit999', '21e81be3212d10cb89c940977044607b603977ad', 'aditbiswas1@gmail.co', 1445012.00, 935254),
(13, 'rmz2612', '05b276db74edeed99dba762425dc16d7286bfff5', 'rameez2612@gmail.com', 1000000.00, 1e+06),
(14, 'neetesh', '870653ce5d50ef6930985e23bb908c42e5a2832e', 'neeteshhegde93@gmail', 1000000.00, 1e+06),
(15, 'zero', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'gondlekar.vishnu@gma', 1000000.00, 1e+06),
(17, 'zero-0', '15f6b3f4956b1a18375c88962431ac1c04c5d73f', 'gaurish1992@gmail.co', 13260437.60, 1e+06),
(18, 'aayushagra', 'abdf933375ec9351a3291e2c827182eebe93847c', 'aayushxagrawal@gmail', 1000000.00, 1e+06),
(19, 'aayusha', 'abdf933375ec9351a3291e2c827182eebe93847c', 'aayushxagrawal@gmail', 2251806.38, 1e+06),
(20, 'lemon ', '365ec17a675f3273bc16c74761ad83f2cf07c59a', 'gaurish2192@gmail.co', 1000000.00, 1e+06),
(21, 'aman', '8ad73f92d9f9d8ffbb8fcc019cab870008ac555c', 'aman@gmail.com', 754742.00, 1e+06),
(22, 'akhileshpa', '9ef8a0d68a62783b03388c1278030ef404cda2b7', 'akkhilesh.5pandita@g', 1000000.00, 1e+06),
(23, 'akkhilesh.', '43c83c9e499e679ae09680200782d62b11c5a68f', 'akkhilesh.5pandita@g', 1000000.00, 1e+06),
(24, 'lionheartd', '3908a4d319e5c29fc86278834afdad699059b334', 'diwakark_1989@hotmai', 1000000.00, 1e+06),
(25, 'akhileshpa', '43c83c9e499e679ae09680200782d62b11c5a68f', 'akhileshvinayak@gmai', 1000000.00, 1e+06),
(26, 'lionheartd', '3908a4d319e5c29fc86278834afdad699059b334', 'diwakark_1989@hotmai', 1000000.00, 1e+06),
(27, 'pramod man', 'bfe54caa6d483cc3887dce9d1b8eb91408f1ea7a', 'manturpramod@gmail.c', 1000000.00, 1e+06),
(28, 'viveksharm', 'df313643664040a695f4b83ff5ce42ba8e5a9057', 'viveksharma.crj@gmai', 1000000.00, 1e+06),
(29, 'Manoj_Yada', 'c15819a1fceb23bc083876dd4a6d68a34af448b1', 'manojky.yadav@gmail.', 1000000.00, 1e+06),
(30, 'Manoj_Yada', 'c15819a1fceb23bc083876dd4a6d68a34af448b1', 'manojky.yadav@gmail.', 1000000.00, 1e+06),
(31, 'akkhilesh.', '43c83c9e499e679ae09680200782d62b11c5a68f', 'akkhilesh.5pandita@g', 1000000.00, 1e+06),
(32, 'rakeshhiru', '461a537a2b550b37c4214e2e90a4609356eb062d', 'rakeshhirur69@gmail.', 1000000.00, 1e+06),
(33, 'arjun392', '208b396f31976b979f214d5e6fe2bb31d61084be', 'arjun392@gmail.com', 12786301.20, 1e+06),
(34, 'rohitkulka', '54778dc482cafdc1a2eb2ed7376756e49bbc1a21', 'rohitkulkarni.720@gm', 1000000.00, 1e+06),
(35, 'qwerty', '76cf924852179d7380efd5b10bb53fea0bbabb30', 'akshaymall@hotmail.c', 15397.71, 1e+06),
(36, 'akhileshpa', '43c83c9e499e679ae09680200782d62b11c5a68f', 'akkhilesh.5pandita@g', 1000000.00, 1e+06),
(37, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', 1000000.00, 1e+06),
(38, 'gaurang', 'e974fe42232e9700bee864b40af4b12b84ef8956', 'saxena_gaurangi@yaho', 1000000.00, 1e+06),
(39, 'sagarbarba', 'df0b6c410fc70ceeb16c10880a3d0a573ca26631', 'barbate.sagar@gmail.', 1000000.00, 1e+06),
(40, 'gaurangi', 'e974fe42232e9700bee864b40af4b12b84ef8956', 'saxena_gaurangi@yaho', 771517.40, 1e+06),
(41, 'sgb', '452b592d1f18fca4c08a73a85013dd665eff8c3d', 'barbate.sagar@gmail.', 1000000.00, 1e+06),
(42, 'srinivasve', '54d218618c1bd9d826806376b9f70e490487dee8', 'srinivas1867@gmail.c', 1000000.00, 1e+06);
