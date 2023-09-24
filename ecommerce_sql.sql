-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 06:46 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `aname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `email`, `password`, `date`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123', '2021-11-01 22:56:10'),
(2, 'sama saiyed', 'samasaiyed7305@gmail.com', 'sama', '2021-11-02 12:34:00'),
(3, 'admin11', 'ad123@icloud.com', 'ad123', '2021-11-02 12:37:07'),
(7, 'Sama', 'riya123@gmail.com', '12345', '2021-12-01 11:15:06'),
(8, 'Sama s', 'sama@gmail.com', '123456', '2022-02-11 11:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `bid` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`bid`, `brand`) VALUES
(1, 'KAY BEAUTY'),
(2, 'SUGAR'),
(3, 'THE BALM'),
(4, 'M.A.C'),
(5, 'HUDA BEAUTY'),
(6, 'CHARLOTTE TILBURY'),
(7, 'FARSALI'),
(8, 'E.L.F'),
(9, 'FLOWER BEAUTY'),
(10, 'FOREVER 52'),
(11, 'LAKME'),
(12, 'LIME CRIME'),
(13, 'LOREAL'),
(14, 'MAYBELLINE'),
(15, 'MURAD'),
(16, 'PIXI'),
(17, 'PLAM'),
(18, 'MAKEUP REVOLUTION'),
(19, 'SIGMA'),
(20, 'TONYMOLY'),
(21, 'WISHFUL'),
(22, 'ESTEE LAUDER'),
(23, 'DIOR'),
(24, 'CHOPARD'),
(25, 'CAROLINA HERRERA'),
(26, 'VERSACE'),
(27, 'PACO RABANNE');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(10) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `category`) VALUES
(1, 'Makeup'),
(2, 'Skin'),
(3, 'Hair'),
(4, 'Fragrence'),
(5, 'Tools & Appliences');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `order_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`order_id`, `pid`, `pname`, `qty`, `price`, `total_price`, `paid_amount`, `date`, `status`) VALUES
(3, 15, 'Huda Beauty Fauxfilter Skin Finish Buildable Coverage Foundation Stick', 1, 3200, 3200, '', '2021-11-17 15:10:13', 'confirm'),
(1, 23, 'SUGAR Goddess Of Flawless SPF30+ BB Cream', 1, 699, 699, '', '2021-11-17 15:17:05', 'pending'),
(1, 61, 'Lakme Eyeconic Curling Mascara - Black', 1, 450, 450, '', '2021-11-17 15:17:05', 'confirm'),
(2, 69, 'PIXI Glitter-y Eye Quad - RoseBronze', 4, 2050, 8200, '', '2021-11-17 15:24:18', ''),
(2, 2, 'SUGAR All Set To Go Banana Powder', 2, 599, 1198, '', '2021-11-17 15:24:18', ''),
(2, 38, 'Huda Beauty Rose Gold Palette - Remastered', 5, 5350, 26750, '', '2021-11-17 15:24:18', 'confirm'),
(2, 71, 'Lakme Absolute Matte Melt Liquid Lip Color - Firestarter Red (6ml)', 1, 700, 700, '', '2021-11-17 15:24:18', ''),
(5, 59, 'Kay Beauty Ultra Black Volume & Length Mascara - Midnight', 1, 639, 639, '', '2021-11-17 15:56:22', 'confirm'),
(6, 49, 'Farsáli Liquid Powder Oil Balancing Pink Clay', 1, 2880, 2880, '', '2021-11-17 21:07:00', 'confirm'),
(7, 10, 'e.l.f. Cosmetics Bite Size Eyeshadow - Cream & Sugar', 1, 280, 280, '', '2021-11-17 22:16:00', 'confirm'),
(7, 24, 'SUGAR Face Fwd Blush Stick - 03 Mauve Marvel', 1, 799, 799, '', '2021-11-17 22:16:00', 'confirm'),
(7, 46, 'Huda Beauty Power Bullet Cream Glow Lipstick', 1, 1950, 1950, '', '2021-11-17 22:16:00', 'confirm'),
(7, 65, 'SUGAR Magic Wand Waterproof Concealer - 40 Breve (Medium Beige, Warm Undertone)', 1, 799, 799, '', '2021-11-17 22:16:01', 'confirm'),
(7, 75, 'Lakme Insta Eye Liner - Black', 1, 110, 110, '', '2021-11-17 22:16:01', 'confirm'),
(8, 15, 'Huda Beauty Fauxfilter Skin Finish Buildable Coverage Foundation Stick', 1, 3200, 3200, '', '2021-11-18 11:38:50', 'confirm'),
(8, 11, 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 3, 599, 1797, '', '2021-11-18 11:38:50', 'pending'),
(12, 52, 'Murad Retinol Youth Renewal Night Cream', 1, 6800, 0, '', '2021-11-18 14:49:50', 'pending'),
(13, 11, 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 2, 599, 0, '', '2021-11-30 23:11:39', 'pending'),
(14, 26, 'Maybelline New York Super Stay Matte Ink Liquid Lipstick', 1, 320, 0, '', '2021-12-01 11:22:37', 'confirm'),
(15, 49, 'Farsáli Liquid Powder Oil Balancing Pink Clay', 1, 2880, 0, '', '2022-01-08 13:20:41', ''),
(16, 47, 'Maybelline New York The Colossal Mascara Waterproof - 001 Waterproof Black', 2, 339, 0, '', '2022-02-09 19:06:34', ''),
(16, 64, 'SUGAR Swipe Right Cleansing Water', 1, 399, 0, '', '2022-02-09 19:06:34', ''),
(19, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 1, 2200, 0, '', '2022-02-10 22:28:21', 'confirm'),
(20, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 2, 2200, 0, '', '2022-02-10 22:35:43', 'confirm'),
(20, 7, 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', 1, 3500, 0, '', '2022-02-10 22:35:43', 'confirm'),
(22, 56, 'Kay Beauty Smudgeproof Jet Black Gel Kajal', 2, 383, 0, '', '2022-02-10 22:48:58', 'confirm'),
(23, 3, 'Huda Beauty  Matte Liquid Foundation', 2, 3300, 0, '', '2022-02-10 23:01:44', 'confirm'),
(2, 11, 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 3, 599, 1797, '', '2022-02-10 23:14:46', 'pending'),
(2, 59, 'Kay Beauty Ultra Black Volume & Length Mascara - Midnight', 1, 639, 639, '', '2022-02-10 23:14:46', 'confirm'),
(3, 48, 'Kay Beauty Quick Dry Liquid Eyeliner - Black Canvas', 2, 499, 998, '', '2022-02-10 23:21:17', 'confirm'),
(3, 11, 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 1, 599, 599, '', '2022-02-10 23:21:17', 'pending'),
(4, 39, 'Charlotte Tilbury Hot Lips 2.0 - Viva La Vergara', 1, 3450, 3450, '', '2022-02-11 11:29:14', 'confirm'),
(4, 33, 'Charlotte Tilbury Cheek To Chic - Ecstasy', 2, 3800, 7600, '', '2022-02-11 11:29:14', 'confirm'),
(4, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 1, 2200, 2200, '', '2022-02-11 11:29:14', 'confirm'),
(5, 3, 'Huda Beauty  Matte Liquid Foundation', 2, 3300, 6600, '', '2022-02-11 11:42:46', 'confirm'),
(6, 3, 'Huda Beauty  Matte Liquid Foundation', 3, 3300, 9900, '', '2022-02-11 11:44:27', 'confirm'),
(7, 3, 'Huda Beauty  Matte Liquid Foundation', 3, 3300, 9900, '', '2022-02-11 11:51:15', 'confirm'),
(8, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 2, 2200, 4400, '', '2022-02-11 12:55:13', 'confirm'),
(8, 2, 'SUGAR All Set To Go Banana Powder', 3, 599, 1797, '', '2022-02-11 12:55:13', 'pending'),
(9, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 2, 2200, 4400, '', '2022-02-11 12:57:39', 'confirm'),
(9, 5, 'M.A.C Retro Matte Liquid Lipcolour - Topped With Brandy', 2, 2200, 4400, '', '2022-02-11 12:57:39', 'confirm'),
(10, 15, 'Huda Beauty Fauxfilter Skin Finish Buildable Coverage Foundation Stick', 1, 3200, 3200, '', '2022-02-11 19:52:51', 'pending'),
(11, 34, 'Huda Beauty Easy Bake Loose Powder-Coffe Cake', 2, 2950, 5900, '', '2022-02-11 23:21:41', 'confirm'),
(12, 69, 'PIXI Glitter-y Eye Quad - RoseBronze', 1, 2050, 2050, '', '2022-02-21 22:03:29', 'pending'),
(13, 46, 'Huda Beauty Power Bullet Cream Glow Lipstick', 1, 1950, 1950, '', '2022-02-21 22:04:29', 'confirm'),
(14, 55, 'M.A.C Pro Longwear Nourishing Waterproof Foundation - NC25', 1, 3600, 3600, '', '2022-02-21 22:09:25', 'confirm'),
(14, 77, 'M.A.C Studio Fix Powder Plus Foundation - NC50', 1, 2900, 2900, '', '2022-02-21 22:09:25', 'pending'),
(15, 98, 'Charlotte Tilbury Wonderglow', 1, 4584, 4584, '', '2022-02-21 22:18:28', 'confirm'),
(16, 52, 'Murad Retinol Youth Renewal Night Cream', 1, 6800, 6800, '', '2022-02-21 22:20:09', 'pending'),
(17, 61, 'Lakme Eyeconic Curling Mascara - Black', 2, 450, 900, '900', '2022-02-22 21:09:49', 'confirm'),
(18, 15, 'Huda Beauty Fauxfilter Skin Finish Buildable Coverage Foundation Stick', 1, 3200, 3200, '3200', '2022-03-15 21:33:38', 'pending'),
(18, 38, 'Huda Beauty Rose Gold Palette - Remastered', 1, 5350, 5350, '5350', '2022-03-15 21:33:38', 'confirm'),
(19, 11, 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 1, 599, 599, '599', '2022-03-15 21:46:50', 'pending'),
(20, 11, 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 1, 599, 599, '599', '2022-03-15 21:48:28', 'pending'),
(20, 59, 'Kay Beauty Ultra Black Volume & Length Mascara - Midnight', 2, 639, 1278, '1278', '2022-03-15 21:48:28', 'pending'),
(20, 56, 'Kay Beauty Smudgeproof Jet Black Gel Kajal', 1, 383, 383, '383', '2022-03-15 21:48:28', 'pending'),
(21, 7, 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', 2, 3500, 7000, '7000', '2022-03-15 22:07:40', 'confirm'),
(22, 2, 'SUGAR All Set To Go Banana Powder', 2, 550, 1100, '0', '2022-03-15 23:10:59', 'pending'),
(23, 103, 'DIOR Sauvage Eau De Parfum (60ml)', 1, 7400, 7400, '7400', '2022-03-15 23:39:26', 'confirm'),
(24, 5, 'M.A.C Retro Matte Liquid Lipcolour - Topped With Brandy', 1, 2200, 2200, '0', '2022-03-15 23:42:22', 'confirm'),
(25, 1, 'Murad Vita-C Eyes Dark Circle Corrector', 1, 5000, 5000, '0', '2022-03-16 11:07:14', 'confirm'),
(26, 26, 'Maybelline New York Super Stay Matte Ink Liquid Lipstick', 1, 320, 320, '320', '2022-03-16 11:09:33', 'confirm'),
(26, 62, 'Maybelline New York Sensational Liquid Matte Lipstick', 2, 299, 598, '598', '2022-03-16 11:09:34', 'confirm');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `category` varchar(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `mrp` decimal(10,0) NOT NULL,
  `selling_price` decimal(10,0) NOT NULL,
  `qty` int(10) NOT NULL,
  `images` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `ingredients` longtext NOT NULL,
  `howto` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `category`, `product_name`, `brand`, `mrp`, `selling_price`, `qty`, `images`, `title`, `description`, `ingredients`, `howto`, `status`, `date`) VALUES
(1, 'Skin', 'Murad Vita-C Eyes Dark Circle Corrector', 'MURAD', '5250', '5000', 49, 'dark-circle-corrector.jpg', 'Murad Vita-C Eyes Dark Circle Corrector', 'Explore the entire range of Dark Circles & Wrinkles available on Nykaa. Shop more Murad products here.You can browse through the complete world of Murad Dark Circles & Wrinkles .<br />\r\n<br />\r\nExpiry Date: 15 March 2024<br />\r\n<br />\r\nCountry of Origin: United States of America (the)<br />\r\n<br />\r\nName of Mfg / Importer / Brand: PakLab<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 2121 Park Place, El Segundo, CA 90245', '', '', '1', '2022-01-24'),
(2, 'Makeup', 'SUGAR All Set To Go Banana Powder', 'SUGAR', '599', '550', 95, 'banana-powder.jpg', 'SUGAR All Set To Go Banana Powder', 'SUGAR All Set To Go Banana Powder<br /><br /><br />\r\n', 'Talc, Nylon-12, Boron Nitride, Bismuth Oxychloride, Pentaerythrityl Tetraisostearate, Diisostearyl Malate, Silicone, Tocopheryl Acetate, Phenoxyethanol, Iron Oxide Yellow (CI 77492), Titanium Dioxide(CI 77891)', 'Dab the product under eyes or over your face using a puff or a powder brush. To bake makeup, dab SUGAR All Set To Go Banana Powder and let it set for 5 minutes. This lets your base set properly without any creases. Dust the powder properly to avoid patches.', '1', '2022-01-24'),
(3, 'Makeup', 'Huda Beauty  Matte Liquid Foundation', 'HUDA BEAUTY', '3300', '3300', 0, 'huda_foundation.jpg', 'Huda Beauty  Matte Liquid Foundation', 'What it is: Your favorite filter in a bottle is back, and it\'s better than ever! With the same full coverage and long-lasting properties, you know and love from the OG formula, but with 24-hour flexible wear, a luminous matte finish andâ€¦ it\'s fragrance-free!<br /><br />\r\nThe true filter effect gives instant coverage so seamless that it immediately unifies skin tone and texture as it blurs skin to give a radiant finish. The non-cakey formula is life proof (waterproof, super long wear (24hr), transfer proof, fade proof, sweat proof, humidity proof), so essentially this foundation is your new BFF. No matter what the weather, occasion or situation, #FauxFilter Luminous Matte will never let you down. This new and improved formula is Huda\'s ultimate full coverage foundation that she can\'t live without!<br /><br /><br /><br /><br />\r\n\r\nFormula: Liquid<br />\r\nCoverage: Full<br />\r\nFinish: Matte, luminous<br />\r\nFeatures:<br />\r\n- Fragrance free<br />\r\n- Vegan<br />\r\n- Non-comedogenic<br />\r\n- Water-proof<br />\r\n- 24-hour-wear<br />\r\n- Mask/transfer-proof<br />\r\nConsumer Claims:<br />\r\n- 100% agreed this product gave a full coverage look *<br />\r\n- 92% agreed their skin looked flawless when wearing this product *<br />\r\n- 94% agreed their skin tone appeared more even when wearing this product *<br />\r\n- 96% agreed their skin appeared smoother when wearing this product *<br />\r\n- 86% agreed this product doesn\'t look cakey on their skin *<br />\r\n- 82% agreed this product doesn\'t sit in their lines *<br />- 94% agreed this product was comfortable to wear *<br />\r\n- 90% agreed it was easy to conceal their imperfections with this product *<br />\r\n- 90% agreed the texture of their skin appeared better when wearing this product*<br />\r\n- 100% agreed this product concealed their acne / acne scarring *<br />\r\n- 82% agreed that the product was easy to apply *<br />\r\n- 82% agreed their skin had a filtered finish when wearing this product *<br />\r\n*based on an independent consumer testing panel on 50 women and men using the product once per day for 14 days.<br />\r\nAbout the Brand: Huda Kattan is one of the most well known internationally recognised makeup gurus and content-creators. She is an award-winning makeup artist, blogger and vlogger. Guided by her expertise and eye-for-detail, Huda Kattan founded her record-breaking global brand Huda Beauty in 2013. Since then, Huda Beauty has become the No.1 Beauty Instagram account with over 20 million followers. Kattan is constantly creating ground-breaking products as she continues to build and reinvent the beauty empire.<br />\r\n\r\nExplore the entire range of Foundation available on Nykaa. Shop more Huda Beauty products here.You can browse through the complete world of Huda Beauty Foundation .<br />\r\nAlternatively, you can also find many more products from the Huda Beauty Fauxfilter Luminous Matte Full Coverage Liquid Foundation range.<br />\r\n\r\nExpiry Date: 15 March 2024<br />\r\nCountry of Origin: Italy<br />\r\nName of Mfg / Importer / Brand: Huda Beauty<br />\r\nAddress of Mfg / Importer / Brand: Huda Beauty Fz Llc, Pbu-E70 & E71, Production City, Dubai Uae, Po Box 503485<br /><br />\r\n', 'Milkshake, Angel Food, Vanilla, Panna Cotta, Cashew, Crème Brulee, Shortbread, Chai, Custard, Macaroon, Toasted Coconut, Peaches N\' Cream, Cheesecake, Latte, Apple Pie, Amaretti, Shortcake, Tres Leches, Butter Pecan, Beignet, Baklava, Dulce De Leche, Biscotti, Macchiato, Brown Sugar, Churro, Toffee, Gingerbread, Cinnamon, Chocolate Mousse, Peanut Butter Cup, Mocha, Cocoa, Nutmeg, Coffee Bean, Chocolate Truffle, Hot Fudge: Water/Aqua/Eau, Isododecane, Methyl Trimethicone, Cetyl Peg/Ppg-10/1 Dimethicone, Hdi/Trimethylol Hexyllactone Crosspolymer, Ethylene/Acrylic Acid Copolymer, Trimethylsiloxyphenyl Dimethicone, Dimethicone, Bis-Hydroxyethoxypropyl Dimethicone/Ipdi Copolymer Ethylcarbamate, Butylene Glycol Dicaprylate/Dicaprate, Glycerin, Cetyl Dimethicone, Disteardimonium Hectorite, Phenyl Trimethicone, Sorbitan Sesquioleate, Rubus Idaeus (Raspberry) Leaf Extract, Bambusa Arundinacea Stem Powder, Tocopherol, Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate, Caprylic/Capric Triglyceride, Di-C12-13 Alkyl Tartrate, Caprylyl Methicone, Dimethicone/Vinyl Dimethicone Crosspolymer, Dimethicone Crosspolymer, Silica, Dextrin Palmitate, Tetrasodium Edta, Sodium Chloride, Triethoxycaprylylsilane, Laureth-4, Poloxamer 338, Propylene Carbonate, Potassium Sorbate, Phenoxyethanol, Alcohol. May Contain (+/-) Mica, Titanium Dioxide (Ci 77891), Bismuth Oxychloride (Ci 77163), Iron Oxides (Ci 77492), Iron Oxides (Ci 77491), Iron Oxides (Ci 77499).', 'For the True Filter Effect:<br />\r\n- Using 1-2 pumps, apply foundation evenly all over your face with a dense brush or beauty sponge.<br />\r\n- For best results, apply with the dual ended Face | Build & Buff Foundation Brush.<br />\r\nHuda\'s Hack:<br />\r\n- For a major glow: Layer on top of Huda Beautyâ€™s N.Y.M.P.H. Liquid Highlighter by applying your chosen shade of N.Y.M.P.H. all over your face, followed by #FauxFilter Luminous Matte.<br />\r\n- For flawlessly hydrated skin: Skin needs prep but don\'t have the time? Huda Beauty Water Jelly Primer will simultaneously hydrate and smooth your skin to ensure flawless wear that feels amazing all day long.<br />\r\n- For no-makeup vibes: Next time you\'re in a rush, finish your foundation with a quick mist of Huda Beauty Glow Coco Hydrating Mist so you can set it and forget it for the rest of the day and go about your glow.', '1', '2022-01-24'),
(5, 'Makeup', 'M.A.C Retro Matte Liquid Lipcolour - Topped With Brandy', 'M.A.C', '2350', '2200', 197, 'lipcolour.jpg', 'M.A.C Retro Matte Liquid Lipcolour - Topped With Brandy', '<br />\r\nCountry of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Liquid Lipstick available on Nykaa. Shop more M.A.C products here.You can browse through the complete world of M.A.C Liquid Lipstick .<br />\r\nAlternatively, you can also find many more products from the M.A.C Retro Matte Liquid Lipcolour range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 July 2024<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Estee lauder Companies<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: the Estee Lauder Companies INC,767,fifth Avenue,NY,10153,United States of America', '', '', '1', '2022-01-24'),
(6, 'Makeup', 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 'M.A.C', '2200', '2200', 148, 'powder_kiss_lip.jpg', 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 'Believe it when you feel it. Powder Kiss now includes a Liquid Lipcolour to give you that blurred, high-impact matte look. Experience a weightless kiss of colour delivering ten hours of moisture. It\'s whipped, mousse-like texture softly and evenly kisses lips with just the right amount of non-settling, non-flaking, comfortable colour. The special blend of vitamin E, powders and emollient properties provide excellent cushion, flexibility, wear and moisture that will leave lips looking and feeling soft and smooth all day. Features an hourglass-shaped applicator that perfectly hugs lips to fill in lines and enhance lips with a smoothing and blurring effect.<br />\r\n<br />\r\nBenefits:<br />\r\n<br />\r\n- Immediate and 10-hour moisture<br />\r\n- Long-wearing, 10 hours<br />\r\n- Blurs lines and smooths lips<br />\r\n- Soft-focus, blurred-colour effect<br />\r\n- Smooth, stay-true colour, 10 hours<br />\r\n- Non-settling, non-creasing, non-flaking, non-drying<br />\r\n<br />\r\nResearch Results:<br />\r\n<br />\r\nConsumer testing on 116 women after one week:<br />\r\n<br />\r\n- 95% said it applied smoothly onto lips<br />\r\n- 94% said it left lips feeling soft and smooth upon application<br />\r\n- 92% said it was colour-true throughout wear<br />\r\n- 91% said it left lips feeling moisturized upon application<br />\r\n<br />\r\nCountry of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Liquid Lipstick available on Nykaa. Shop more M.A.C products here.You can browse through the complete world of M.A.C Liquid Lipstick .<br />\r\nAlternatively, you can also find many more products from the M.A.C Powder Kiss Liquid Lipcolour range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 March 2023', 'Dimethicone, Dimethicone Crosspolymer, Isononyl Isononanoate, Polyglyceryl-2 Triisostearate, Diisostearyl Malate, Tribehenin, Tocopheryl Acetate, Lecithin, Ethylhexyl Palmitate, Isopropyl Myristate, Polyglyceryl-3 Polyricinoleate, Polyglyceryl-2 Diisostearate, Sorbitan Isostearate, Dehydroacetic Acid, Isostearic Acid, Polyhydroxystearic Acid, Vanillin, [+/- Mica, Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491), Iron Oxides (Ci 77492), Iron Oxides (Ci 77499), Blue 1 Lake (Ci 42090), Red 6 (Ci 15850), Red 7 (Ci 15850), Red 22 Lake (Ci 45380), Red 28 Lake (Ci 45410), Red 33 Lake (Ci 17200), Yellow 5 Lake (Ci 19140), Yellow 6 Lake (Ci 15985)]<br />\r\n<br />\r\nPlease be aware that ingredient lists may change or vary from time to time. Please refer to the ingredient list on the product package you receive for the most up to date list of ingredients.', 'Apply directly to lips as desired with the hourglass-shaped applicator that perfectly hugs lips to fill in lines and enhance lips with a smoothing and blurring effect.', '1', '2022-01-24'),
(7, 'Skin', 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', 'MURAD', '3500', '3500', 98, 'oil-pore-control-mattifier-broad-spectrum-spf-45.jpg', 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++<br />\r\n', '', '', '1', '2022-01-24'),
(8, 'Skin', 'TONYMOLY Aloe 99% Chok Chok Soothing Gel', 'TONYMOLY', '400', '400', 50, 'soothing-gel.jpg', 'TONYMOLY Aloe 99% Chok Chok Soothing Gel', 'TonyMoly Aloe 99% Chok Chok Soothing Gel has been created as an instant soothing rescue for the skin, leaving it feeling calmer, cool and hydrated. This non-sticky formula is made with 99% aloe vera, great for sensitive skin. it can be used on both face and body as it instantly calms and replenishes tired skin with moisture!<br />\r\n<br />\r\n<br />\r\nKey Ingredients and Benefits:<br />\r\n<br />\r\n<br />\r\nAloe Extract: Contains antioxidants, enzymes, vitamins A and C, and it is highly anti-inflammatory.<br />\r\n<br />\r\nAbout the Brand: Born in 2006 in Seoul, TonyMoly is South Korea\'s popular beauty and skin care brand known for its high quality, innovative skin care products, trendy makeup, and irresistibly cute items that actually work. Made in Korea, these products are all natural and organic with no animal testing. Enjoy better skin with TonyMoly!<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Face Moisturizer & Day Cream available on Nykaa. Shop more TONYMOLY products here.You can browse through the complete world of TONYMOLY Face Moisturizer & Day Cream .<br />\r\n<br />\r\nExpiry Date: 15 July 2024<br />\r\n<br />\r\nCountry of Origin: South Korea<br />\r\n<br />\r\nName of Mfg / Importer / Brand: MEGACOS<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: TONYMOLY B/D 2557, Nambusunhwan-ro, Seocho-gu, Seoul, Korea', 'Camellia Sinensis Leaf Extract, Aniba Rosaeodora (Rosewood) Wood Oil, Citrus Limon (Lemon) Seed Oil, Carbomer, Alcohol, 3-O-Ethyl Ascorbic Acid, Propanediol, PEG-60 Hydrogenated Castor Oil, Ethylhexylglycerin, Disodium EDTA, Potassium Hydroxide, Phenoxyethanol', 'Apply anywhere on face and/or body that needs calming or hydration.', '1', '2022-01-24'),
(9, 'Makeup', 'Charlotte Tilbury Airbrush Flawless Finish', 'CHARLOTTE TILBURY', '4300', '4000', 70, 'airbrush_flawless_finish.jpg', 'Charlotte Tilbury Airbrush Flawless Finish', 'A super-finely milled powder that feels like cashmere on your skin, blurring the look of lines and imperfections for a soft focus-finish. Sweet almond oil and rose wax help to promote smoothness and moisture of the skin. Airbrush Flawless Finish Powder features nourishing ingredients to prevent excess shine and brighten the look of your complexion. It gives your skin a long-lasting, soft-focus airbrushed looking finish. You can use the powder on its own to mattify oily areas or on top of your concealer and foundation to set and perfect.<br />\r\n<br />\r\nSupercharged Ingredients:<br />\r\n<br />\r\n- Rose Wax (Rosa multiflora flower wax): Extracted from the flowers of the Multiflora Rose, the wax helps to nourish and moisturise the skin.<br />\r\n- Almond Oil (Prunus Amygdalus dulcis (sweet almond) oil: A vegetable oil containing oleic acid, with softening and moisturising properties.<br />\r\n- Light-reflecting Pearls: Pearlescent pigments diffuse light at it hits your face in such a way that it helps to luminate the complexion.<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Compact available on Nykaa. Shop more Charlotte Tilbury products here.You can browse through the complete world of Charlotte Tilbury Compact .<br />\r\nAlternatively, you can also find many more products from the Charlotte Tilbury Airbrush Flawless Finish range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 May 2023<br />\r\n<br />\r\nCountry of Origin: Italy<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Charlotte Tilbury<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 8 Surrey Street, London, WC2R 2ND, United Kingdom.', 'Talc, Mica, Polymethyl Methacrylate, Dimethicone, Silica, Pentaerythrityl Tetraisostearate, Cetearyl Ethylhexanoate, Zinc Stearate, Zea Mays (Corn) Starch, Chlorphenesin, Potassium Sorbate, Tocopheryl Acetate, Pei-10, Propylene Glycol, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Rosa Multiflora Flower Wax, Tetrasodium Edta, Water, Dimethiconol, Tilia Cordata Flower Extract (Tilia Cordata Extract), Methylparaben, Ethylparaben, Propylparaben, Butylparaben, [May Contain/Peut Contenir (+/-): Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491, Ci 77492, Ci 77499)].', '- Using the Powder & Sculpt Brush, apply Airbrush Flawless Finish Setting Powder around the nose, T-zone and any other oily areas that need to be mattified.<br />\r\n- This can be used on top of Magic Away Concealer or any Foundations to set them.', '1', '2022-01-24'),
(10, 'Makeup', 'e.l.f. Cosmetics Bite Size Eyeshadow - Cream & Sugar', 'E.L.F', '280', '280', 130, 'bite_size_eyeshadow.jpg', 'e.l.f. Cosmetics Bite Size Eyeshadow - Cream & Sugar', 'e.l.f. Bite Size Eyeshadow Palette delivers mini eye magic in a perfect size. The luxe formula is creamy, blendable, and ultra-pigmented. Each palette includes four beautiful, complimenting shades perfect to create any desired eyelook. Get professional-quality eye looks with these versatile palettes.<br />\r\n<br />\r\nFeatures:<br />\r\n<br />\r\n4-pan eyeshadow palette with ultra-pigmented shades<br />\r\nFeatures a mix of matte and shimmer shades<br />\r\nThe smooth formula is blendable and weightless<br />\r\nPerfect size for your purse and travel<br />\r\nFree from parabens, phthalates and harmful chemicals<br />\r\nThis product is vegan and cruelty-free<br />\r\nAbout the Brand: Celebrating the beauty of every eye, lip and face is fundamental to e.l.f. It’s in the brand\'s name and inspires the company. e.l.f believes in a world where everyone can own their beauty, without compromise. All formulas are 100% vegan, no animal testing and made without the nasty bad-for-you stuff. Totally guilt-free. All e.l.f. products are free from phthalates, parabens, nonylphenol ethoxylates, triclosan, triclocarban, and hydroquinone. All skincare products are also free from sulfates.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Eye Shadow available on Nykaa. Shop more e.l.f. Cosmetics products here.You can browse through the complete world of e.l.f. Cosmetics Eye Shadow .<br />\r\nAlternatively, you can also find many more products from the e.l.f. Cosmetics Bite Size Eyeshadow range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 September 2023<br />\r\n<br />\r\nCountry of Origin: China<br />\r\n<br />\r\nName of Mfg / Importer / Brand: e.l.f. Cosmetics<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: e.l.f. Beauty, Inc. 570 10th Street, Oakland, CA 94607', 'Cream & Sugar - Mica, Talc, Caprylic/Capric Triglyceride, Synthetic Fluorphlogopite, Magnesium Myristate, Nylon-12, Tridecyl Trimellitate, Silica, Magnesium Stearate, Magnesium Palmitate, Dimethicone, Bismuth Oxychloride, Bis-Diglyceryl Polyacyladipate-1, Dimethicone/Vinyl Dimethicone Crosspolymer, Aluminum Starch Octenylsuccinate, Phenyl Trimethicone, Polyisobutene, Phenoxyethanol, Caprylyl Glycol, Tin Oxide May Contain: Titanium Dioxide (CI 77891), Iron Oxides (CI 77491), Iron Oxides (CI 77499), Iron Oxides (CI 77492)<br />\r\n<br />\r\n<br />\r\n<br />\r\nBerry Bad - Mica, Talc, Caprylic/Capric Triglyceride, Magnesium Myristate, Nylon-12, Silica, Magnesium Palmitate, Magnesium Stearate, Dimethicone, Tridecyl Trimellitate, Calcium Aluminum Borosilicate, Boron Nitride, Aluminum Starch Octenylsuccinate, Bis-Diglyceryl Polyacyladipate-1, Phenyl Trimethicone, Phenoxyethanol, Polyisobutene, Dimethicone/Vinyl Dimethicone Crosspolymer, Caprylyl Glycol, Triethoxycaprylylsilane, Tin Oxide May Contain: Iron Oxides (CI 77491), Ultramarines (CI 77007), Lake of Allura Red (CI 16035:1), Titanium Dioxide (CI 77891), Iron Oxides (CI 77499), Iron Oxides (CI 77492)<br />\r\n<br />\r\n<br />\r\n<br />\r\nTruffles - Talc, Mica, Caprylic/Capric Triglyceride, Synthetic Fluorphlogopite, Nylon-12, Dimethicone, Silica, Magnesium Stearate, Magnesium Palmitate, Tridecyl Trimellitate, Phenoxyethanol, Aluminum Starch Octenylsuccinate, Bis-Diglyceryl Polyacyladipate-1, Phenyl Trimethicone, Dimethicone/Vinyl Dimethicone Crosspolymer, Caprylyl Glycol, Polyisobutene, Tin Oxide. May Contain: Titanium Dioxide (CI 77891), Iron Oxides (CI 77491), Iron Oxides (CI 77492), Iron Oxides (CI 77499), Ultramarines (CI 77007), Black 2 (CI 77266), Manganese Violet (CI 77742), Lake of Allura Red (CI 16035:1)<br />\r\n<br />\r\n<br />\r\n<br />\r\nRose Water - Mica, Talc, Synthetic Fluorphlogopite, Caprylic/Capric Triglyceride, Boron Nitride, Silica, Magnesium Stearate, Magnesium Palmitate, Tridecyl Trimellitate, Nylon-12, Magnesium Myristate, Dimethicone, Bis-Diglyceryl Polyacyladipate-1, Phenyl Trimethicone, Polyisobutene, Phenoxyethanol, Caprylyl Glycol, Triethoxycaprylylsilane, Tin Oxide May Contain: Iron Oxides (CI 77499), Iron Oxides (CI 77491), Titanium Dioxide (CI 77891), Manganese Violet (CI 77742), Iron Oxides (CI 77492)<br />\r\n<br />\r\n<br />\r\n<br />\r\nCarnival Candy - Mica, Talc, Caprylic/Capric Triglyceride, Nylon-12, Magnesium Myristate, Silica, Dimethicone, Synthetic Fluorphlogopite, Dimethicone/Vinyl Dimethicone Crosspolymer, Magnesium Stearate, Magnesium Palmitate, Bismuth Oxychloride, Tridecyl Trimellitate, Phenoxyethanol, Bis-Diglyceryl Polyacyladipate-1, Phenyl Trimethicone, Aluminum Starch Octenylsuccinate, Caprylyl Glycol, Polyisobutene, Tin Dioxide May Contain: Titanium Dioxide (CI 77891), Iron Oxides (CI 77491), Iron Oxides (CI 77492), Ferric Ferrocyanide (CI 77510), Black 2 (CI 77266 ), Lake of Allura Red (CI 16035:1)<br />\r\n<br />\r\n<br />\r\n<br />\r\nPumpkin Pie - Mica, Talc, Caprylic/Capric Triglyceride, Magnesium Myristate, Nylon-12, Silica, Tridecyl Trimellitate, Magnesium Stearate, Magnesium Palmitate, Dimethicone, Boron Nitride, Bis-Diglyceryl Polyacyladipate-1, Aluminum Starch Octenylsuccinate, Phenyl Trimethicone, Phenoxyethanol, Polyisobutene, Dimethicone/Vinyl Dimethicone Crosspolymer, Caprylyl Glycol, Triethoxycaprylylsilane May Contain: Iron Oxides (CI 77491), Iron Oxides (CI 77499), Iron Oxides (CI 77492), Titanium Dioxide (CI 77891), Lake of Allura Red (CI 16035:1), Ultramarines (CI 77007), Ferric Ferrocyanide (CI 77510)', 'Apply a light shade all over the eyelid with an eyeshadow brush.<br />\r\nApply a medium complementary shade in the crease of the eye, and blend out to contour.<br />\r\nThen apply the darkest shade along the lash line in outer corners of the eyes for added depth and a smokey effect.<br />\r\nFor a metallic effect, apply shimmer eyeshadows with a damp brush.', '1', '2022-01-24'),
(11, 'Makeup', 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 'KAY BEAUTY', '599', '599', 248, 'crayon_lipstick.jpg', 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 'Kay Beauty Matteinee lip crayon combines unrivalled 18 hour long stay and extreme matte finish with ultra comfort. This smudge proof lip crayon delivers a high colour payoff while feeling weightless on the lips making your lips feel feathery soft and light. The overachieving lip crayon is 100% waterproof & sweatproof so your lip hue stays intact when the sun goes up. Enriched with the miraculous Marula & good for you Chamomile oil, the lip crayon ensure to keep your lips well hydrated and nourished while you are looking glam. Housed in Kay’s classic monogram, it comes in 24 attractive shades from barely there nudes to high drama hues, specially curated for all Indian beauties.<br />\r\n<br />\r\nWhy make it yours?<br />\r\nMade In Europe<br />\r\nExtreme Rich Matte Finish<br />\r\n18 Hour Long Stay<br />\r\nWeightless Formula<br />\r\n100% Waterproof & Sweatproof<br />\r\nChamomile & Marula Oil For Intense Hydration<br />\r\nThese 24 shades are specially curated by Katrina to suit all Indian skin tones. So,say hello to these pretty chic, high performance shades of Kay Lip Crayon that will look perfect on your cupid’s bow or outline your lip line with these super flattering shades.<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Lipstick available on Nykaa. Shop more Kay Beauty products here.You can browse through the complete world of Kay Beauty Lipstick .<br />\r\nAlternatively, you can also find many more products from the Kay Beauty Matteinee Matte Lip Crayon Lipstick range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 February 2024<br />\r\n<br />\r\nCountry of Origin: Germany<br />\r\n<br />\r\nName of Mfg / Importer / Brand: NYKAA-KK BEAUTY PRIVATE LTD<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 104 Vasan Udyog Bhavan Sun Mill Compound Senapati Bapat Marg, Lower Parel, Mumbai City Maharashtra - 400013', '', '', '1', '2022-01-24'),
(12, 'Makeup', 'Lakme Absolute Skin Natural Mousse - Golden Light 04', 'LAKME', '495', '490', 200, 'mousse-foundation.jpg', 'Lakme Absolute Skin Natural Mousse - Golden Light 04', 'Explore the entire range of Foundation available on Nykaa. Shop more Lakme products here.You can browse through the complete world of Lakme Foundation .<br />\r\nAlternatively, you can also find many more products from the Lakme Absolute Skin Natural Mousse Mattreal Foundation range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 September 2023<br />\r\n<br />\r\nCountry of Origin: India<br />\r\n<br />\r\n', '', 'Prepare skin with Undercover Gel Primer.<br />\r\nTake your index finger and dip it into the mousse foundation.<br />\r\nDab the product lightly on your face. Blend in the product using your fingers or a foundation brush.<br />\r\nApply concealer and compact to finish the look.', '1', '2022-01-24'),
(13, 'Skin', 'PIXI Botanical Collagen & Retinol Serum', 'PIXI', '2550', '2500', 100, 'collagen-retinol-serum.jpg', 'PIXI Botanical Collagen & Retinol Serum', 'Pixi Collagen and Retinol Serum is a unique concentrated formula consisting of collagen, retinol and vitamins to help restore the skin\'s natural plumpness and elasticity. This lightweight serum helps improve the appearance of fine lines and helps restore the skin\'s radiance.<br />\r\n<br />\r\n<br />\r\nProduct Details:<br />\r\n<br />\r\n- Helps to soften fine lines and revive skin\'s natural radiance.<br />\r\n- Acacia collagen plumps and boosts elasticity<br />\r\n- Retinol smoothes and refines the appearance of the skin<br />\r\n- Chamomile delivers a calming effect<br />\r\n- Suitable for all skin types<br />\r\n- Paraben free<br />\r\n- Not tested on animals<br />\r\n<br />\r\nAbout the Brand: Get a gorgeous radiant complexion with Pixi\'s range of glow-giving skincare solutions. Pixi has a loyal worldwide following thanks to its pure, awakening & skin-loving products that create a naturally radiant \"just had a good night\'s sleep\" look.<br />\r\n<br />\r\nDesigned by Petra Strand, who boasts over 20 years experience as a makeup artist and product developer, Pixi was first launched in its flagship boutique in the heart of Soho, London. Passionate about skincare, Petra creates innovative formulas that are infused with botanicals and beneficial ingredients to give skin a healthy, youthful-looking glow. The brand says its mission is the same now as it was on the first day the Pixi store opened, which is to simply bring out the natural beauty in all women and to ensure they look like themselves, only better!<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Serums & Essence available on Nykaa. Shop more PIXI products here.You can browse through the complete world of PIXI Serums & Essence .<br />\r\n<br />\r\nExpiry Date: 15 March 2026<br />\r\n<br />\r\nCountry of Origin: United States of America (the)<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Pixi PTE Ltd<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Scotts Road, Singapore\r\n<br/>', 'Key Ingredients:<br />\r\n<br />\r\n- Acacia Collagen plumps and boosts elasticity<br />\r\n- Retinol smoothes and refines<br />\r\n- Chamomile calms and soothes<br />\r\n<br />\r\nFull Ingredient List: Aqua/Water/Eau, Glycerin, Acacia Seyal Gum Extract, Retinol, Methyl Methacrylate/Glycol Dimethacrylate Crosspolymer, Acetyl Heptapeptide-4, Niacinamide, Rosmarinus Officinalis (Rosemary) Extract, Anthemis Nobilis (Chamomile) Extract, Ascorbic Acid, Tocopheryl Acetate, Citric Acid, Carbomer, Potassium Sorbate, Hydroxyethyl Cellulose, Caprylyl Glycol, Disodium EDTA, Propyl Gallate, BHT.\r\n<br/>', '- Use daily.<br />\r\n- Massage 2-3 drops onto cleansed, toned skin before moisturizer.\r\n<br/>', '1', '2022-01-24'),
(14, 'Makeup', 'M.A.C Prep + Prime Fix+ - Original', 'M.A.C', '1900', '1900', 250, 'fixer.jpg', 'M.A.C Prep + Prime Fix+ - Original', 'Country of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\nAlternatively, you can also find many more products from the M.A.C Prep + Prime Fix+ range.<br />\r\n<br />\r\nExpiry Date: 15 December 2023<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Estee lauder Companies<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: the Estee Lauder Companies INC,767,fifth Avenue,NY,10153,United States of America', '', '', '1', '2022-01-24'),
(15, 'Makeup', 'Huda Beauty Fauxfilter Skin Finish Buildable Coverage Foundation Stick', 'HUDA BEAUTY', '3250', '3200', 98, 'foundation_stick.jpg', 'Huda Beauty Fauxfilter Skin Finish Buildable Coverage Foundation Stick', 'What it is: Your new go-to foundation for flawless, natural-looking skin in 30 stunning shades! The luxuriously creamy stick formula melts into the skin for a natural filtered finish that lasts up to 10 hours. Whether you prefer full coverage or barely any at all, this versatile formula will let you be the master of your complexion. Swipe it on and build it up, the stick formula is ideal if you\'re on-the-go or in a hurry, and thanks to its long-wearing, waterproof, humidity and sweat resistant formula, you can set it and forget it for the rest of the day.<br />\r\n<br />\r\nFormula: Stick (cream)<br />\r\n<br />\r\nCoverage: Customizable (light/buildable)<br />\r\n<br />\r\nFinish: Natural<br />\r\n<br />\r\nFeatures:<br />\r\n<br />\r\n- Fragrance free<br />\r\n<br />\r\n- Vegan<br />\r\n<br />\r\n- Non-comedogenic<br />\r\n<br />\r\n- Waterproof<br />\r\n<br />\r\n- 10 hour wear<br />\r\n<br />\r\nAbout the Brand: Huda Kattan is one of the most well known internationally recognised makeup gurus and content-creators. She is an award-winning makeup artist, blogger and vlogger. Guided by her expertise and eye-for-detail, Huda Kattan founded her record-breaking global brand Huda Beauty in 2013. Since then, Huda Beauty has become the No.1 Beauty Instagram account with over 20 million followers. Kattan is constantly creating ground-breaking products as she continues to build and reinvent the beauty empire.<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Foundation available on Nykaa. Shop more Huda Beauty products here.You can browse through the complete world of Huda Beauty Foundation .<br />\r\nAlternatively, you can also find many more products from the Huda Beauty Fauxfilter Skin Finish Buildable Coverage Foundation Stick range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 January 2023<br />\r\n<br />\r\nCountry of Origin: South Korea<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Huda Beauty<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Huda Beauty Fz Llc, Pbu-E70 & E71, Production City, Dubai Uae, Po Box 503485', 'Cetyl Ethylhexanoate, Octyldodecanol, Silica, Synthetic Beeswax, Mica, Hydrogenated Coconut Oil, Caprylyl Methicone, Cyclopentasiloxane, Synthetic Wax, Diphenyl Dimethicone, Ethylene/Propylene Copolymer, Silica Dimethyl Silylate, Tocopheryl Acetate, Glyceryl Caprylate, Caprylyl Glycol, Ethylhexylglycerin, Aluminum Hydroxide, Ethylhexyl Methoxycinnamate, 1,2- Hexanediol, Triethoxycaprylylsilane, May Contain (+/-) Iron Oxides (Ci 77491, Ci 77492, Ci 77499), Titanium Dioxide (Ci 77891), Ultramarines (Ci 77007).', 'For Light-Medium Coverage:<br />\r\n<br />\r\n- Apply directly onto face and buff out with your favorite sponge or brush.<br />\r\n<br />\r\n- Repeat to build coverage, or further blend to achieve a super light coverage look.<br />\r\n<br />\r\nFor Full Coverage:<br />\r\n<br />\r\n- Swipe foundation directly on a dense, flat brush and apply to face.<br />\r\n<br />\r\n- Blend foundation outward and repeat until desired coverage.<br />\r\n<br />\r\nNote: For best results, pair with the Water Jelly Hydrating Primer and apply with Huda Beauty dual ended Build & Buff Foundation Brush.', '1', '2022-01-24'),
(16, 'Makeup', 'Huda Beauty Life Liner Duo Pencil & Liquid Eyeliner', 'HUDA BEAUTY', '2050', '2050', 200, 'liquid_eye_liner.jpg', 'Huda Beauty Life Liner Duo Pencil & Liquid Eyeliner', 'Explore the entire range of Eyeliner available on Nykaa. Shop more Huda Beauty products here.You can browse through the complete world of Huda Beauty Eyeliner .<br />\r\n<br />\r\nExpiry Date: 15 January 2023<br />\r\n<br />\r\nCountry of Origin: Italy<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Huda Beauty<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Huda Beauty FZ LLC, PBU-E70 & E71, Production City, Dubai UAE, PO Box 503488', '- Shade Name: Very Vanta (Liquid): Isododecane, Trimethylsiloxysilicate, Dimethicone, Disteardimonium Hectorite, Sorbitan Tristearate, Propylene Carbonate, Caprylyl Glycol, Phenoxyethanol, Ascorbyl Palmitate, Hexylene Glycol, Bht, Iron Oxides (Ci 77499), Black 2 (Ci 77266)(Nano).<br />\r\n<br />\r\n- Shade Name: Very Vanta (Pencil): Dimethicone, Trimethylsiloxysilicate, Synthetic Wax, Phenylpropyldimethylsiloxysilicate, Polyethylene, Polyhydroxystearic Acid, Disiloxane, Caprylyl Trimethicone, Disteardimonium Hectorite, Propylene Carbonate, Lecithin, Tocopherol, Ascorbyl Palmitate, Citric Acid, Iron Oxides (Ci 77499), Ferric Ammonium Ferrocyanide (Ci 77510), Black 2 (Ci 77266)(Nano)', 'Liquid liner:<br />\r\n<br />\r\n- Open the liquid side of the liner and wipe off any excess formula from the brush<br />\r\n<br />\r\n- Start from the outer corner of your eye begin to create your wing, working inwards towards the center of your lid<br />\r\n<br />\r\n- Complete the line starting from the inner corner of your eye, connecting the two lines at the center of the lid filling in any negative space<br />\r\n<br />\r\n- Allow to dry for approximately 60 seconds, depending on how thick your line is. The thicker your liner is, the longer it will take to dry<br />\r\n<br />\r\n<br />\r\nPencil liner:<br />\r\n<br />\r\n- Complete your look or apply along your lash and/or waterline for extra drama<br />\r\n<br />\r\n- We gave it some playtime so you can experiment with your look before the formula sets<br />\r\n<br />\r\n<br />\r\nHow to remove Life Liner Using Huda Beauty Makeup Remover Balm:<br />\r\n<br />\r\n- Apply a dime-sized amount to eyelids and gently massage to dissolve our Life Liner formula<br />\r\n<br />\r\n- Rinse with warm water and wipe away any excess formula<br />\r\n<br />\r\nTip: You can also remove with a waterproof or strong performing oil-based eye makeup remover. Soaking a cotton pad in makeup remover, apply on the eyes massaging gently to break up the formula', '1', '2022-01-24'),
(17, 'Skin', 'Murad Vita-C Glycolic Brightening Serum(5ml)', 'MURAD', '1150', '1050', 100, 'vit-c_bright-serum.jpg', 'Murad Vita-C Glycolic Brightening Serum(5ml)', 'Explore the entire range of Serums & Essence available on Nykaa. Shop more Murad products here.You can browse through the complete world of Murad Serums & Essence .<br />\r\nAlternatively, you can also find many more products from the Murad Vita-C Glycolic Brightening Serum range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 June 2024<br />\r\n<br />\r\nCountry of Origin: United States of America (the)<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Thibiant International Inc.<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 2121 Park Place, El Segundo, Ca 90245', '', '', '1', '2022-01-24'),
(18, 'Skin', 'Farsáli Skintune Blur Serum(10ml)', 'FARSALI', '1350', '1300', 100, 'skintune-blur.jpg', 'Farsáli Skintune Blur Serum(10ml)', '\r\n\r\nCountry of Origin: United States of America (the)<br />\r\n<br />\r\nName of Mfg / Importer / Brand: M/s. Farsali Corp<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: \'Horizon Gunsite Road, Brittons Hill, St. Michael, Barbados 8814027 - (United States)', 'Vitamin E<br />\r\nNaturally rich in Vitamin C, brightens and evens out the skin.<br />\r\n<br />\r\nCucumber Extract<br />\r\nConditions the skin.<br />\r\n<br />\r\nWater / Aqua / Eau, Methyl Methacrylate Crosspolymer, Dimethicone, Propanediol, Glycerin, Dimethicone / Vinyl Dimethicone Crosspolymer, Coco-Caprylate / Caprate, Squalane, Ethyl Macadamiate, Cetearyl Isononanoate, Phenoxyethanol, Ceteareth-20, Cetearyl Alcohol, Hydroxyethyl Acrylate / Sodium, Acryloyldimethyl Taurate Copolymer, Glyceryl Stearate, Ascorbic Acid, Ethylhexylglycerin, Tocopherol, Polysorbate 60, Sorbitan Isostearate, Sodium PCA, Chamomilla Recutita Flower Extract, Terminalia Ferdinandiana Fruit Extract, Caprylic / Capric Triglyceride, Sodium Citrate, Phragmites Kharka Extract, Poria Cocos Extract, Citric Acid, Benzoic Acid, Ceteareth-12, Cetyl Palmitate, Sodium Benzoate, Malic Acid, Cucumis Sativus Fruit Extract', '- Soft focus finishing serum: Apply a few drops on the center of your face, and massage outwards, as the last step of your skincare. Skintune Blur can also be layered as a spot treatment for heavily textured areas on the skin. This will leave your skin with a brightened, blurred, and soft powder-like finish.<br />\r\n<br />\r\n- Hydra-blurring primer: Apply a few drops on the center of your face, and massage outwards, before applying your makeup/foundation. It can be used as an effective primer. Layer on t-zone or heavily textured areas to blur. This will leave your skin hydrated, while creating a soft blurred canvas.<br />\r\n<br />\r\n- Foundation blur enhancer: Mix with foundation in a 1:1 ratio, to transform your foundation.This enhances coverage, brightens, and adds a blur filter to any foundation!<br />\r\n<br />\r\n- Magic blur: Mix or use with Unicorn Essence. This gives the skin a magically illuminated blur, with a satin finish!<br />\r\n<br />\r\nCaution: Discontinue use if redness or irritation occurs. Keep out of eyes. For external use only.', '1', '2022-01-24'),
(19, 'Makeup', 'M.A.C Matte Powder Blush - Melba', 'M.A.C', '2500', '2500', 150, 'blush.jpg', 'M.A.C Matte Powder Blush - Melba', 'Designed by and for professionals, formulated to provide fantastic colour with ease and consistency. Applies evenly, adheres lightly to skin to achieve a natural-looking application of colour that stays put all day.<br />\r\n<br />\r\nBENEFITS<br />\r\n<br />\r\n- Dermatologist tested.<br />\r\n<br />\r\n- Non-acnegenic.<br />\r\n<br />\r\n<br />\r\nCountry of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Blush available on Nykaa. Shop more M.A.C products here.You can browse through the complete world of M.A.C Blush .<br />\r\nAlternatively, you can also find many more products from the M.A.C Matte Powder Blush range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 June 2024<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Estee lauder Companies<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: the Estee Lauder Companies INC,767,fifth Avenue,NY,10153,United States of America', '', '- Choose appropriate brush and glide brush over the blush.<br />\r\n- Tap off excess powder and apply blush to skin using sweeping strokes and blend well.', '1', '2022-01-24'),
(20, 'Makeup', 'M.A.C Studio Fix Fluid SPF 15 - C4.5', 'M.A.C', '2900', '2900', 100, 'mac_foundation.jpg', 'M.A.C Studio Fix Fluid SPF 15 - C4.5', 'M.A.C Studio Fix Fluid SPF 15 was put to the ultimate test of seeing how long it wears and, not surprisingly, the formula lasts for a full 24 hours! Applies, builds and blends easily and evenly while controlling shine. This modern foundation combines a matte finish and medium-to-full buildable coverage with broad spectrum SPF 15 protection.<br />\r\n<br />\r\nBenefits :<br />\r\n<br />\r\n- Oil control up to 6 hours<br />\r\n- Immediate and 8 hour moisture (All Day)<br />\r\n- Sweat and humidity resistant<br />\r\n<br />\r\n- 24 hours of wear<br />\r\n- Color true 24 hours<br />\r\n- Non-fading 24 hours<br />\r\n- Non-creasing / non-settling 24 hours<br />\r\n- Non-streaking 24 hours<br />\r\n- Non-caking 24 hours<br />\r\n- Non-poring<br />\r\n- Immediately smooths skin\'s appearance<br />\r\n- Broad Spectrum UVA/UVB, SPF15, PA ++<br />\r\n- Smooths skin\'s appearance<br />\r\n- Protects skin from dehydration<br />\r\n- Comfortable all day<br />\r\n- Appropriate for all skin types<br />\r\n- Non-acnegenic<br />\r\n- Dermatologist tested<br />\r\n- Oil free<br />\r\n<br />\r\n<br />\r\nCountry of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Foundation available on Nykaa. Shop more M.A.C products here.You can browse through the complete world of M.A.C Foundation .<br />\r\nAlternatively, you can also find many more products from the M.A.C Studio Fix Fluid SPF 15 range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 February 2024<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Estee lauder Companies<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: the Estee Lauder Companies INC,767,fifth Avenue,NY,10153,United States of America', 'Water\\\\Aqua\\\\Eau, Cyclopentasiloxane, Peg-10 Dimethicone, Butylene Glycol, Trimethylsiloxysilicate, Ethylhexyl Methoxycinnamate, Dimethicone, Magnesium Sulfate, Titanium Dioxide, Laminaria Saccharina Extract, Algae Extract, Tocopheryl Acetate, Sodium Hyaluronate, Tocopherol, Lecithin, Hydrogenated Lecithin, Xanthan Gum, Sorbitan Sesquioleate, Methoxy Amodimethicone/Silsesquioxane Copolymer, Laureth-7, Dipropylene Glycol, Dimethicone/Peg-10/15 Crosspolymer, Dimethicone/Peg-10 Crosspolymer, Peg/Ppg-18/18 Dimethicone, Disteardimonium Hectorite, Silica, Dimethicone Crosspolymer, Triethoxycaprylylsilane, Propylene Carbonate, Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate, Sorbic Acid, Chloroxylenol, Phenoxyethanol, [+/- Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491), Iron Oxides (Ci 77492), Iron Oxides (Ci 77499), Chromium Oxide Greens (Ci 77288)]<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\nPlease be aware that ingredient lists may change or vary from time to time. Please refer to the ingredient list on the product package you receive for the most up to date list of ingredients.', 'Always apply to a well moisturized and prepped skin with the 132 Duo Fibre Foundation Brush for a studio ready flawless face! Apply product to the center of the face first (or where you want more coverage) then use the brush to blend to the outer regions of your face.<br />\r\n<br />\r\n<br />\r\nTip: Try mixing Studio Fix Fluid with your favourite moisturizer or oils to create a more sheer luminous finish.', '1', '2022-01-24'),
(21, 'Makeup', 'M.A.C Strobe Cream - Pinklite', 'M.A.C', '3200', '3200', 100, 'strobe.jpg', 'M.A.C Strobe Cream - Pinklite', 'Country of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Highlighters available on Nykaa. Shop more M.A.C products here.You can browse through the complete world of M.A.C Highlighters .<br />\r\nAlternatively, you can also find many more products from the M.A.C Strobe Cream range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 August 2024<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Estee lauder Companies<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: the Estee Lauder Companies INC,767,fifth Avenue,NY,10153,United States of America<br />\r\n<br />\r\n', '', '', '1', '2022-01-24'),
(22, 'Makeup', 'M.A.C Studio Fix Fluid SPF 15 Mini - NC35', 'M.A.C', '1750', '1700', 160, 'mini_foundation.jpg', 'M.A.C Studio Fix Fluid SPF 15 Mini - NC35', 'M.A.C Studio Fix Fluid SPF 15 Mini - NC35', '', '', '1', '2022-01-24'),
(23, 'Makeup', 'SUGAR Goddess Of Flawless SPF30+ BB Cream', 'SUGAR', '699', '699', 170, 'sugar-bb-cream.jpg', 'SUGAR Goddess Of Flawless SPF30+ BB Cream', 'For all the times you\'ve struggled to perfect the “no-makeup” makeup look, there is now an answer! Reintroducing the SUGAR Goddess Of Flawless SPF30+ BB Cream whose ultra-lightweight aerated mousse-textured formula sinks into the skin with the ease of a moisturizer while shielding it against the sun with its in-built SPF30+ protection. With a luxurious matte finish that guarantees an entire day with a sweat-free face, you now have front-row access to beautiful glowing skin! So go ahead - bin your primer, foundation, moisturizer and sunscreen - because, this little beauty does it all and delivers a flawless finish in one simple step.', 'Cyclopentasiloxane, Isododecane, Titanium Dioxide (Nano), Ethylhexyl Methoxycinnamate, Dimethicone/Vinyl Dimethicone Crosspolymer, Polymethylsilsesquioxane, Synthetic Fluorphlogopite, Disteardimonium Hectorite, Polyglyceryl-2, Triisostearate, Cetyl Peg/Ppg-10/1 Dimethicone, Polyglyceryl-4 Isostearate, Alcohol , Hexyl Laurate, Triethoxycaprylylsilane, Aluminum Hydroxide, Water (Aqua). May Contain: CI 77891, CI 77492, CI 77491, CI 77499: Isododecane, Cyclopentasiloxane, Polysilicone 11, Mica, Polymethylsilsesquioxane, Cyclohexasiloxane, Polyglyceryl-3 Diisostearate, Hexyl Laurate, PEG/PPG-20/15 Dimethicone, Triethoxycaprylylsilane, Dimethicone, May Contain: CI 77891, CI 77947, CI 77492, CI 77491, CI 77499.', 'Start with a pea sized amount. Using your fingertips, dab it onto any problem areas, particularly underneath your eyes. Then slowly begin blending in a circular motion. Once you\'ve finished covering up your trouble spots, grab a foundation brush to apply the rest of your product. Evenly distribute the BB cream across your face, making sure to blend well.', '1', '2022-01-24'),
(24, 'Makeup', 'SUGAR Face Fwd Blush Stick - 03 Mauve Marvel', 'SUGAR', '799', '799', 120, 'sugar-blush-stick.jpg', 'SUGAR Face Fwd Blush Stick - 03 Mauve Marvel', 'Presenting, the SUGAR Face FWD Blush Stick range in 3 gorgeous shades to give your face just the right pop of color when you need it! Just a few dabs go a long way, and the colors are buildable to get the desired intensity with a flawless matte finish.<br />\r\n<br />\r\n<br />\r\nKey Features:<br />\r\n<br />\r\nBuildable formula<br />\r\nGives a matte finish<br />\r\nSuper pigmented<br />\r\nTravel-friendly<br />\r\nThis product is vegan<br />\r\n<br />\r\nShade Description:<br />\r\n<br />\r\n01 Coral Climax: Bright Coral<br />\r\n02 Pink Prime: Peachy rose<br />\r\n03 Mauve Marvel: Plum<br />\r\n<br />\r\nAdditional details: SUGAR Face FWD Range comprises of 5 stunning products - Face FWD Primer Stick, Face FWD Corrector Stick (in 3 shades), Face FWD Contour Stick (in 2 shades), Face FWD Blush Stick (in 3 shades), and Face FWD Highlighter Stick (in 3 shades).<br />\r\n<br />\r\nMade in Korea.<br />\r\n<br />\r\n<br />\r\nAbout the Brand: Bring your sassy self everywhere you go with SUGAR cosmetics. This brand offers some statement-making and high-performance makeup products that ensure that your style game is always on point! Offering products that aim to make you look your best, when you\'re on the move, SUGAR has already created a vast consumer base for itself.<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Blush available on Nykaa. Shop more SUGAR products here.You can browse through the complete world of SUGAR Blush .<br />\r\nAlternatively, you can also find many more products from the SUGAR Face Fwd Blush Stick range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 May 2024<br />\r\n<br />\r\nCountry of Origin: South Korea<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Vellvette Lifestyle Pvt. Ltd<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Building no 13/14 gala no 3 & 4,Mumbai 421302', 'Isotridecyl Isononanoate, Silica, Polyglyceryl-2 Triisostearate, Polyethylene, Polymethylsilsesquioxane, Triethylhexanoin, Caprylic/Capric Triglyceride, Dimethicone, Ethylhexyl Methoxycinnamate, Diisostearyl Malate, Mica(CI 77019), Microcrystalline Wax, Yellow 6 (CI 15985), Titanium Dioxide (CI 77891), Red 28 (CI 45410), Polyglyceryl-4 Isostearate, PEG-10 Dimethicone, Dimethicone Crosspolymer, Silica Dimethyl Silylate, Fragrance, Iron Oxide Black (CI 77499), Aluminum Hydroxide, Methicone.', 'Dab on gently and spread over the apples of your cheeks with your fingers or a sponge. Be careful! The color is super pigmented. Build up slowly.', '1', '2022-01-24');
INSERT INTO `product` (`pid`, `category`, `product_name`, `brand`, `mrp`, `selling_price`, `qty`, `images`, `title`, `description`, `ingredients`, `howto`, `status`, `date`) VALUES
(25, 'Makeup', 'SUGAR Arch Arrival Brow Definer - 01 Jerry Brown (Medium Brown)', 'SUGAR', '799', '799', 200, 'sugar-brow-definer.jpg', 'SUGAR Arch Arrival Brow Definer - 01 Jerry Brown (Medium Brown)', 'Whether you like them naturally groomed or strikingly bold, perfecting your brow game is a fine art. With SUGAR Arch Arrival Brow Definer, you can now discover the artist in you and score your brow goals in no time. This retractable pencil boasts of a specially-designed triangular slant that gives you both-precise shaping with a pointed tip and generous filling with a flat edge. With a premium spoolie attached to the other end, no matter how soft or dramatic your arches look, they\'ll always be blended and natural. Your search for your brow weapon of choice ends here-give it a spin today!<br />\r\n<br />\r\n<br />\r\nKey Features:<br />\r\n<br />\r\nBold, bushy, sharp and thin, there\'s no brow that SUGAR Arch Arrival Brow Definer cannot work its magic on<br />\r\nThe sweat/humidity-resistant, waterproof formula ensures the colour doesn\'t slide around through the course of the day and lasts for 12 hours straight making it your go-to product for keeping your brows on point<br />\r\n<br />\r\nAdditional Details:<br />\r\n<br />\r\nSUGAR Arch Arrival Brow Definer is available in 4 shades viz., 01 Jerry Brown (Medium Brown), 02 Taupe Tom (Grey Brown), 03 Woody Scooby (Deep Brown), 04 Felix Onyx (Dark Blackish Brown). It is free of mineral oil, preservatives, paraffin & parabens. Does not require an additional sharpener.<br />\r\n<br />\r\n<br />\r\nMade in Korea.<br />\r\n<br />\r\n<br />\r\nAbout the Brand: Bring your sassy self everywhere you go with SUGAR cosmetics. This brand offers some statement-making and high performance makeup products that ensure that your style game is always on point! Offering products that aim to make you look your best, when you\'re on the move, SUGAR has already created a vast consumer base for itself.<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Eye Brow Enhancers available on Nykaa. Shop more SUGAR products here.You can browse through the complete world of SUGAR Eye Brow Enhancers .<br />\r\nAlternatively, you can also find many more products from the SUGAR Arch Arrival Brow Definer range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 August 2023<br />\r\n<br />\r\nCountry of Origin: South Korea<br />\r\n<br />\r\nName of Mfg / Importer / Brand: VLPL<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: VLPL', 'Iron Oxide Black(CI.77499), Stearic Acid Stearic Acid, Hydrogenated Coco-Glycerides Hydrogenated Coco-Glycerides, Iron Oxide Red(CI 77491), Iron Oxide Red(CI 77491), Mica(CI.77019), Mica(CI.77019), Hydrogenated Palm Kernel Oil, Hydrogenated Cottonseed Oil, Rhus Succedanea Fruit Wax Rhus Succedanea Fruit Wax, Zinc Stearate Zinc Stearate, Microcrystalline Wax Microcrystalline Wax, Polyethylene Polyethylene, Hydrogenated Coconut Oil Hydrogenated Coconut Oil, Titanium Dioxide(CI.77891), Titanium Dioxide(CI.77891), Iron Oxide Yellow(CI.77492).', 'Twist the pencil to reveal just a small amount of product and apply colour with light pressure. Use the flat side of the pencil to shape the beginning of the brow and the pointed tip to define the edges of the brow. Trace the pencil along the bottom edge of brows and then blend colour upwards. Trace the pencil along the top edge of brows and then blend down. For a bold, super-defined look, use the pointed tip to define the length of the brow. Finish your look by combing brow hairs into place using the attached brush and voila, you\'re done!', '1', '2022-01-24'),
(26, 'Makeup', 'Maybelline New York Super Stay Matte Ink Liquid Lipstick', 'MAYBELLINE', '325', '320', 249, 'm_lipstick.jpeg', 'Maybelline New York Super Stay Matte Ink Liquid Lipstick', '<br />\r\nExplore the entire range of Liquid Lipstick available on Nykaa. Shop more Maybelline New York products here.You can browse through the complete world of Maybelline New York Liquid Lipstick .<br />\r\nAlternatively, you can also find many more products from the Maybelline New York Super Stay Matte Ink Liquid Lipstick range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 August 2024<br />\r\n<br />\r\nCountry of Origin: China<br />\r\n<br />\r\nName of Mfg / Importer / Brand: L\'Oreal India Pvt Ltd.<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Yichang Tianmi International Cosmetics Co.,44300, No.18 Xihu Road, Xiling Economic Developing Zone, China', '', '', '1', '2022-01-24'),
(27, 'Makeup', 'Maybelline New York Instant Age Rewind Eraser Multi-Use Concealer', 'MAYBELLINE', '620', '430', 200, 'age_rewind_concealer.jpg', 'Maybelline New York Instant Age Rewind Eraser Multi-Use Concealer', 'WHY YOU?LL LOVE IT<br />\r\nA super-concentrated treatment concealer<br />\r\nthat features a micro-corrector applicator<br />\r\nto help instantly erase dark circles and fine<br />\r\nlines. Infused with goji berry and Haloxyl to<br />\r\nhelp reduce fine lines and instantly create a<br />\r\nradiant, refreshed looking eye area.<br />\r\n<br />\r\nExplore the entire range of Concealer available on Nykaa. Shop more Maybelline New York products here.You can browse through the complete world of Maybelline New York Concealer .<br />\r\nAlternatively, you can also find many more products from the Maybelline New York Instant Age Rewind Eraser Dark Circles Treatment Concealer range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 May 2024<br />\r\n<br />\r\nCountry of Origin: China', '', '', '1', '2022-01-24'),
(28, 'Makeup', 'Maybelline New York Fit Me Matte+Poreless Liquid Foundation Tube', 'MAYBELLINE', '299', '299', 230, 'fitme_porless_foundation.jpg', 'Maybelline New York Fit Me Matte+Poreless Liquid Foundation', '<br />\r\nExplore the entire range of Foundation available on Nykaa. Shop more Maybelline New York products here.You can browse through the complete world of Maybelline New York Foundation .<br />\r\nAlternatively, you can also find many more products from the Maybelline New York Fit Me Matte+Poreless Liquid Foundation Tube range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 July 2024<br />\r\n<br />\r\nCountry of Origin: China<br />\r\n<br />\r\n', 'Aqua/Water/Eau, Cyclohexasiloxane, Nylon-12, Isododecane, Alcohol Denat., Cyclopentasiloxane, Peg-10 Dimethicone, Cetyl Peg/Ppg-10/1 Dimethicone, Peg-20, Polyglyceryl-4 Isostearate, Disteardimonium Hectorite, Phenoxyethanol, Magnesium Sulfate, Disodium Stearoyl Glutamate, HDI/Trimethylol Hexyllactone Crosspolymer, Titanium Dioxide, Methylparaben, Acrylates Copolymer, Tocopherol, Butylparaben, Aluminum Hydroxide, Alumina, Silica, Glycerin, [+/- May Contain/Peut Contenir, CI 77891/Titanium Dioxide, CI 77491, CI 77492, CI 77499/Iron Oxides, ] D166390/3.', 'Apply foundation onto skin and blend with fingertips or an applicator.', '1', '2022-01-24'),
(29, 'Makeup', 'Lakme Limited Edition Lip Color - Firestarter Red', 'LAKME', '399', '399', 200, 'lakme-limited-edition-lipcolor.jpg', 'Lakme Limited Edition Lip Color - Firestarter Red', '<br />\r\nExplore the entire range of Lipstick available on Nykaa. Shop more Lakme products here.You can browse through the complete world of Lakme Lipstick .<br />\r\nAlternatively, you can also find many more products from the Lakme Limited Edition Lip Color range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 June 2023<br />\r\n<br />\r\nCountry of Origin: India<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Weckerle Cosmetics India Pvt. Ltd<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Weckerle Cosmetics India Pvt. Ltd, Plot No. 36, Sector 8A, Iie, Sidcul, Haridwar 249 403 Uttarakhand M.L No.: 21/C/Ua/2019<br />\r\n<br />\r\n', '', '', '1', '2022-01-24'),
(30, 'Makeup', 'Lakme 9 to 5 Complexion Care Cream SPF 30 PA++ - Beige (9gm)', 'LAKME', '99', '99', 250, 'lakme_cc-creame.jpg', 'Lakme 9 to 5 Complexion Care Cream SPF 30 PA++ - Beige (9gm)', '<br />\r\nExplore the entire range of BB & CC Cream available on Nykaa. Shop more Lakme products here.You can browse through the complete world of Lakme BB & CC Cream .<br />\r\nAlternatively, you can also find many more products from the Lakme Complexion Care Face CC Cream range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 June 2023<br />\r\n<br />\r\nCountry of Origin: India<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Hindustan Unilever Ltd<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Hindustan Unilever Ltd, Unilver House, B D Sawant Marg, Chakala Andheri East - 400099', '', '', '1', '2022-01-24'),
(31, 'Makeup', 'Lakme Absolute Skin Natural Mousse - Golden Light 04', 'LAKME', '495', '485', 150, 'lakme-mousse-foundation.jpg', 'Lakme Absolute Skin Natural Mousse - Golden Light 04', '<br />\r\nExplore the entire range of Foundation available on Nykaa. Shop more Lakme products here.You can browse through the complete world of Lakme Foundation .<br />\r\nAlternatively, you can also find many more products from the Lakme Absolute Skin Natural Mousse Mattreal Foundation range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 September 2023<br />\r\n<br />\r\nCountry of Origin: India', '', 'Prepare skin with Undercover Gel Primer.<br />\r\nTake your index finger and dip it into the mousse foundation.<br />\r\nDab the product lightly on your face. Blend in the product using your fingers or a foundation brush.<br />\r\nApply concealer and compact to finish the look.', '1', '2022-01-24'),
(32, 'Makeup', 'theBalm Blush - Big Date', 'THE BALM', '1400', '1400', 100, 'balm_blush.jpg', 'theBalm Blush - Big Date', 'These pigmented blushes offer a big dose of color with healthy skin ingredients including organic jojoba oil and organic grapeseed oil. With three gorgeous shades to choose from, you can create a natural flush or a big pop of color.<br />\r\n<br />\r\nBenefits:<br />\r\n<br />\r\n<br />\r\n<br />\r\n-Pigmented formula<br />\r\n<br />\r\n-Contains organic jojoba oil and grapeseed oil<br />\r\n<br />\r\n-Makeup bag staple<br />\r\n<br />\r\n-Clutch certified<br />\r\n<br />\r\n-Free from parabens and talc<br />\r\n<br />\r\n-This product is cruelty-free<br />\r\nAbout the Brand: theBalm Cosmetics is a sassy, classy, San Francisco based company with a line of high-quality makeup for the fun, flirty & fierce! With cheeky product names and a cute vintage twist, the Balm specialises in fresh and fabulous makeup. Cruelty free, talc free and paraben free, the Balm products are just made perfect for your makeup kit!<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Blush available on Nykaa. Shop more theBalm products here.You can browse through the complete world of theBalm Blush .<br />\r\nAlternatively, you can also find many more products from the theBalm Blush range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 February 2024<br />\r\n<br />\r\nCountry of Origin: United States of America (the)<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Jova Beauty<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 2511 Estand Way Pleasant Hill, CA 94523, USA', '', 'Sweep blush onto the apples of the cheeks from the cheekbones to temples.', '1', '2022-01-24'),
(33, 'Makeup', 'Charlotte Tilbury Cheek To Chic - Ecstasy', 'CHARLOTTE TILBURY', '3850', '3800', 70, 'cheek-to-chic.jpg', 'Charlotte Tilbury Cheek To Chic - Ecstasy', 'Cheek to Chic blusher is a creamy, colour-rich texture to create an ultra-flattering look.<br />\r\n<br />\r\nWhat makes Cheek To Chic magic?<br />\r\n<br />\r\n- Light Flex Technology captures and reflects light for a glowing complexion<br />\r\n- Colour-rich pigments are rolled into finely crushed pearls that buff and smooth your skin for excellent blendability and flawless colour uniformity<br />\r\n- The formula is buildable for the healthy, perfect, even glow<br />\r\n- A collection of ‘Swish & Pop’ shades representing the 6 shades of love, from ‘First Love’ to ‘Ecstasy’ to ‘Sex on Fire’<br />\r\n- This product is gluten-free, paraben-free, sulfate-free, and not tested on animals<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Blush available on Nykaa. Shop more Charlotte Tilbury products here.You can browse through the complete world of Charlotte Tilbury Blush .<br />\r\nAlternatively, you can also find many more products from the Charlotte Tilbury Cheek To Chic range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 February 2024<br />\r\n<br />\r\nCountry of Origin: Italy<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Charlotte Tilbury<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 8 Surrey Street, London, WC2R 2ND, United Kingdom.', 'Talc, Mica, Isononyl Isononanoate, Oryza Sativa (Rice) Starch, Dimethicone, Zea Mays (Corn) Starch, Zinc Stearate, Caprylyl Glycol, Phenoxyethanol, Dimethiconol, Hexylene Glycol, Octyldodecyl Stearoyl Stearate, Polymethylsilsesquioxane, Silica, Trimethylsiloxysilicate, Red 7 Lake (Ci 15850), Tin Oxide (Ci 77861), [May Contain: Titanium Dioxide (CI 77891), Iron Oxides (CI 77491, CI 77491, CI 77499), Carmine (CI 75470), Manganese Violet (CI 77742), Red 6 (CI 15850), Yellow 5 Lake (19140)]', '- Swish your brush around the outer shade and tap off any excess. Run the brush flat, up the cheekbone starting fromthe apple of the cheek, structuring your face.<br />\r\n- Pop the shade by taking the pointy end of the brush, dip it in the centre colour and tap off the excess. Apply to the apples of your cheeks to make them pop and glow, then blend seamlessly together.<br />\r\nCharlotte\'s Tip: Always apply your blusher at the end of a makeup look so you can see how much colour is needed. Use Wonderglow Face Primer throughout the day to revitalise your complexion by dotting it on your cheekbones.', '1', '2022-01-24'),
(34, 'Makeup', 'Huda Beauty Easy Bake Loose Powder-Coffe Cake', 'HUDA BEAUTY', '2955', '2950', 128, 'huda_loose_powder.jpg', 'Huda Beauty Easy Bake Loose Powder-Coffe Cake', 'Huda Beauty Easy Bake Loose Powder-Coffe Cake', '', '', '1', '2022-01-24'),
(35, 'Makeup', 'e.l.f. Cosmetics 16HR Camo Concealer - Light Ivory', 'E.L.F', '699', '510', 200, 'camo_concealer.jpg', 'e.l.f. Cosmetics 16HR Camo Concealer - Light Ivory', 'e.l.f. Cosmetics 16HR Camo Concealer - Light Ivory', '', '', '1', '2022-01-24'),
(36, 'Makeup', 'Huda Beauty LEGIT Lashes Double-Ended Mascara', 'HUDA BEAUTY', '2250', '2250', 160, 'huda_mascara.jpg', 'Huda Beauty LEGIT Lashes Double-Ended Mascara', 'Huda Beauty LEGIT Lashes Double-Ended Mascara', '', '', '1', '2022-01-24'),
(37, 'Makeup', 'Flower Beauty Shimmer & Strobe Highlighting Palette - Sunkissed Shimmer', 'FLOWER BEAUTY', '1350', '1080', 90, 'flower-highlighter-palette.jpeg', 'Flower Beauty Shimmer & Strobe Highlighting Palette - Sunkissed Shimmer', 'Flower Beauty Shimmer & Strobe Highlighting Palette - Sunkissed Shimmer', '', '', '1', '2022-01-24'),
(38, 'Makeup', 'Huda Beauty Rose Gold Palette - Remastered', 'HUDA BEAUTY', '5375', '5350', 149, 'rose_gold_palette.jpg', 'Huda Beauty Rose Gold Palette - Remastered', 'Huda Beauty Rose Gold Palette - Remastered', '', '', '1', '2022-01-24'),
(39, 'Makeup', 'Charlotte Tilbury Hot Lips 2.0 - Viva La Vergara', 'CHARLOTTE TILBURY', '3450', '3450', 120, 'hot-lips.jpg', 'Charlotte Tilbury Hot Lips 2.0 - Viva La Vergara', 'Charlotte Tilbury Hot Lips 2.0 - Viva La Vergara', '', '', '1', '2022-01-24'),
(40, 'Makeup', 'e.l.f. Cosmetics Liquid Matte Lipstick - Berry Sorbet', 'E.L.F', '800', '800', 170, 'elf_matte-lipstick.jpg', 'e.l.f. Cosmetics Liquid Matte Lipstick - Berry Sorbet', 'e.l.f. Cosmetics Liquid Matte Lipstick - Berry Sorbet', '', '', '1', '2022-01-24'),
(41, 'Makeup', ' theBalm Meet Matt(e) Hughes Long Lasting Liquid Lipstick - Sentimental', 'THE BALM', '1600', '1600', 100, 'balm_liquid-lipstick.jpg', ' theBalm Meet Matt(e) Hughes Long Lasting Liquid Lipstick - Sentimental', '\r\ntheBalm Meet Matt(e) Hughes Long Lasting Liquid Lipstick - Sentimental', '', '', '1', '2022-01-24'),
(42, 'Makeup', 'Huda Beauty Resting Boss Face Setting Spray', 'HUDA BEAUTY', '2700', '2700', 180, 'huda_setting_spray.jpg', 'Huda Beauty Resting Boss Face Setting Spray', 'Huda Beauty Resting Boss Face Setting Spray', '', '', '1', '2022-01-24'),
(43, 'Makeup', 'Charlotte Tilbury Luxury Palette - Bella Sofia', 'CHARLOTTE TILBURY', '4900', '4900', 120, 'luxury-palette.jpg', 'Charlotte Tilbury Luxury Palette - Bella Sofia', 'Charlotte Tilbury Luxury Palette - Bella Sofia', '', '', '1', '2022-01-24'),
(44, 'Makeup', 'Maybelline New York Super Stay Full Coverage Foundation - Warm Sun 334', 'MAYBELLINE', '750', '750', 200, 'super_stay_full_coverage_foundation.jpg', 'Maybelline New York Super Stay Full Coverage Foundation - Warm Sun ', 'Maybelline New York Super Stay Full Coverage Foundation - Warm Sun 334', '', '', '1', '2022-01-24'),
(45, 'Makeup', 'e.l.f. Cosmetics SRSLY Satin Lipstick - Taffy', 'E.L.F', '320', '299', 190, 'elf-satin-lipstick.jpg', 'e.l.f. Cosmetics SRSLY Satin Lipstick - Taffy', 'e.l.f. Cosmetics SRSLY Satin Lipstick - Taffy', '', '', '1', '2022-01-24'),
(46, 'Makeup', 'Huda Beauty Power Bullet Cream Glow Lipstick', 'HUDA BEAUTY', '1950', '1950', 169, 'power_bullet_lipstick.jpg', 'Huda Beauty Power Bullet Cream Glow Lipstick', 'Huda Beauty Power Bullet Cream Glow Lipstick', '', '', '1', '2022-01-24'),
(47, 'Makeup', 'Maybelline New York The Colossal Mascara Waterproof - 001 Waterproof Black', 'MAYBELLINE', '399', '339', 200, 'colossal_mascara.jpg', 'Maybelline New York The Colossal Mascara Waterproof ', 'Maybelline New York The Colossal Mascara Waterproof - 001 Waterproof Black', '', '', '1', '2022-01-24'),
(48, 'Makeup', 'Kay Beauty Quick Dry Liquid Eyeliner - Black Canvas', 'KAY BEAUTY', '499', '499', 140, 'kay_eyeliner.jpg', 'Kay Beauty Quick Dry Liquid Eyeliner - Black Canvas', 'Kay Beauty Quick Dry Liquid Eyeliner - Black Canvas', '', '', '1', '2022-01-24'),
(49, 'Skin', 'Farsáli Liquid Powder Oil Balancing Pink Clay', 'FARSALI', '2880', '2880', 145, 'oil-balancing-pink-clay.jpg', 'Farsáli Liquid Powder Oil Balancing Pink Clay', 'Farsáli Liquid Powder Oil Balancing Pink Clay', '', '', '1', '2022-01-24'),
(50, 'Skin', 'Murad Retinol Youth Renewal Serum(5ml)', 'MURAD', '1275', '1275', 100, 'murad-youth-renewal-serum.jpg', 'Murad Retinol Youth Renewal Serum(5ml)', 'Murad Retinol Youth Renewal Serum(5ml)', '', '', '1', '2022-01-24'),
(51, 'Skin', 'Murad Nutrient-charged Water Gel(7.5ml)', 'MURAD', '900', '900', 80, 'murad-nutrient-water-gel.jpg', 'Murad Nutrient-charged Water Gel(7.5ml)', 'Murad Nutrient-charged Water Gel(7.5ml)', '', '', '1', '2022-01-24'),
(52, 'Skin', 'Murad Retinol Youth Renewal Night Cream', 'MURAD', '6800', '6800', 119, 'murad-youth-renewal-night-cream.jpg', 'Murad Retinol Youth Renewal Night Cream', 'Murad Retinol Youth Renewal Night Cream', '', '', '1', '2022-01-24'),
(53, 'Makeup', 'M.A.C Studio Conceal and Correct Palette - Dark', 'M.A.C', '4450', '4400', 165, 'mac_correct_palatte.jpg', 'M.A.C Studio Conceal and Correct Palette - Dark', 'M.A.C Studio Conceal and Correct Palette - Dark', '', '', '1', '2022-01-24'),
(54, 'Makeup', 'M.A.C Lipstick / Mini - Ruby Woo', 'M.A.C', '1050', '1050', 250, 'mini_lipstick.jpg', 'M.A.C Lipstick / Mini - Ruby Woo', 'M.A.C Lipstick / Mini - Ruby Woo', '', '', '1', '2022-01-24'),
(55, 'Makeup', 'M.A.C Pro Longwear Nourishing Waterproof Foundation - NC25', 'M.A.C', '3600', '3600', 159, 'nourishing_foundation.jpg', 'M.A.C Pro Longwear Nourishing Waterproof Foundation - NC25', 'M.A.C Pro Longwear Nourishing Waterproof Foundation - NC25', '', '', '1', '2022-01-24'),
(56, 'Makeup', 'Kay Beauty Smudgeproof Jet Black Gel Kajal', 'KAY BEAUTY', '450', '383', 155, 'kay_jet_black_gel_kajal.jpg', 'Kay Beauty Smudgeproof Jet Black Gel Kajal', 'Kay Beauty Smudgeproof Jet Black Gel Kajal', '', '', '1', '2022-01-24'),
(57, 'Makeup', 'Kay Beauty Metallic Lip Highlighter - Cover Girl', 'KAY BEAUTY', '699', '525', 170, 'kay_lip_highlighter.jpg', 'Kay Beauty Metallic Lip Highlighter - Cover Girl', 'Kay Beauty Metallic Lip Highlighter - Cover Girl', '', '', '1', '2022-01-24'),
(58, 'Makeup', 'Kay Beauty Matte Action Lip Liner - Hype', 'KAY BEAUTY', '550', '415', 100, 'kay_lip_liner.jpg', 'Kay Beauty Matte Action Lip Liner - Hype', 'Kay Beauty Matte Action Lip Liner - Hype', '', '', '1', '2022-01-24'),
(59, 'Makeup', 'Kay Beauty Ultra Black Volume & Length Mascara - Midnight', 'KAY BEAUTY', '799', '639', 188, 'kay_mascara.jpg', 'Kay Beauty Ultra Black Volume & Length Mascara - Midnight', 'Kay Beauty Ultra Black Volume & Length Mascara - Midnight', '', '', '1', '2022-01-24'),
(60, 'Makeup', 'Lakme Absolute Blur Perfect Makeup Primer', 'LAKME', '503', '503', 185, 'lakme_blur-perfect-primer.jpg', 'Lakme Absolute Blur Perfect Makeup Primer', 'Lakme Absolute Blur Perfect Makeup Primer', '', '', '1', '2022-01-24'),
(61, 'Makeup', 'Lakme Eyeconic Curling Mascara - Black', 'LAKME', '450', '450', 208, 'lakme-mascara.jpg', 'Lakme Eyeconic Curling Mascara - Black', 'Lakme Eyeconic Curling Mascara - Black', '', '', '1', '2022-01-24'),
(62, 'Makeup', 'Maybelline New York Sensational Liquid Matte Lipstick', 'MAYBELLINE', '349', '299', 174, 's_l_matte_lipstick.jpg', 'Maybelline New York Sensational Liquid Matte Lipstick', 'Maybelline New York Sensational Liquid Matte Lipstick', '', '', '1', '2022-01-24'),
(63, 'Makeup', 'Maybelline New York Fit Me Concealer - 25 Medium', 'MAYBELLINE', '475', '404', 220, 'm_concealer.jpg', 'Maybelline New York Fit Me Concealer - 25 Medium', 'Maybelline New York Fit Me Concealer - 25 Medium', '', '', '1', '2022-01-24'),
(64, 'Makeup', 'SUGAR Swipe Right Cleansing Water', 'SUGAR', '399', '399', 180, 'sugar-cleansing-water.jpg', 'SUGAR Swipe Right Cleansing Water', 'SUGAR Swipe Right Cleansing Water', '', '', '1', '2022-01-24'),
(65, 'Makeup', 'SUGAR Magic Wand Waterproof Concealer - 40 Breve (Medium Beige, Warm Undertone)', 'SUGAR', '799', '799', 100, 'sugar-concealer.jpg', 'SUGAR Magic Wand Waterproof Concealer - 40 Breve ', 'SUGAR Magic Wand Waterproof Concealer - 40 Breve (Medium Beige, Warm Undertone)', '', '', '1', '2022-01-24'),
(66, 'Makeup', 'SUGAR Contour De Force Face Palette - 01 Subtle Summit', 'SUGAR', '799', '799', 170, 'sugar-contour-de-force-face-palette.jpg', 'SUGAR Contour De Force Face Palette - 01 Subtle Summit', 'SUGAR Contour De Force Face Palette - 01 Subtle Summit', '', '', '1', '2022-01-24'),
(67, 'Makeup', 'SUGAR Face Fwd Contour Stick - 02 Espresso Edge (Coffee Brown)', 'SUGAR', '799', '799', 120, 'sugar-contour-stick.jpg', 'SUGAR Face Fwd Contour Stick - 02 Espresso Edge (Coffee Brown)', 'SUGAR Face Fwd Contour Stick - 02 Espresso Edge (Coffee Brown)', '', '', '1', '2022-01-24'),
(68, 'Skin', 'PIXI Glow Tonic Cleansing Gel', 'PIXI', '1950', '1950', 120, 'pixi-cleansing-gel.jpg', 'PIXI Glow Tonic Cleansing - Gel (Face Wash)', 'PIXI Glow Tonic Cleansing Gel', '', '', '1', '2022-01-24'),
(69, 'Makeup', 'PIXI Glitter-y Eye Quad - RoseBronze', 'PIXI', '2050', '2050', 169, 'pixi-eye-glitter.jpg', 'PIXI Glitter-y Eye Quad - RoseBronze', 'PIXI Glitter-y Eye Quad - RoseBronze', '', '', '1', '2022-01-24'),
(70, 'Makeup', 'PIXI Dream Shadow Palette - Eye Enchanter', 'PIXI', '2990', '2990', 170, 'pixi-eye-palette.jpg', 'PIXI Dream Shadow Palette - Eye Enchanter', 'PIXI Dream Shadow Palette - Eye Enchanter', '', '', '1', '2022-01-24'),
(71, 'Makeup', 'Lakme Absolute Matte Melt Liquid Lip Color - Firestarter Red (6ml)', 'LAKME', '700', '700', 250, 'lakme-melt-liquid-lipcolor.jpg', 'Lakme Absolute Matte Melt Liquid Lip Color - Firestarter Red (6ml)', 'Lakme Absolute Matte Melt Liquid Lip Color - Firestarter Red (6ml)', '', '', '1', '2022-01-24'),
(72, 'Makeup', 'Lakme Sun Expert SPF 50 PA+++ Ultra Matte Lotion Sunscreen (50ml)', 'LAKME', '239', '239', 120, 'lakme-sunscreen.jpg', 'Lakme Sun Expert SPF 50 PA+++ Ultra Matte Lotion Sunscreen (50ml)', 'Lakme Sun Expert SPF 50 PA+++ Ultra Matte Lotion Sunscreen (50ml)', '', '', '1', '2022-01-24'),
(73, 'Makeup', 'Lakme Insta Eye Liner - Blue', 'LAKME', '130', '110', 250, 'lakme-insta-liner.jpg', 'Lakme Insta Eye Liner - Blue', 'Lakme Insta Eye Liner - Blue', '', '', '1', '2022-01-24'),
(74, 'Makeup', 'Lakme Color Crush Nail Art - G9', 'LAKME', '155', '150', 150, 'lakme_crush-nail-art.jpg', 'Lakme Color Crush Nail Art - G9', 'Lakme Color Crush Nail Art - G9', '', '', '1', '2022-01-24'),
(75, 'Makeup', 'Lakme Insta Eye Liner - Black', 'LAKME', '130', '110', 250, 'lakme-insta-liner-black.jpg', 'Lakme Insta Eye Liner - Black', 'Lakme Insta Eye Liner - Black', '', '', '1', '2022-01-24'),
(76, 'Makeup', 'Lakme Eyeconic Kajal - Deep Black', 'LAKME', '185', '180', 200, 'lakme-kajal.jpg', 'Lakme Eyeconic Kajal - Deep Black', 'Lakme Eyeconic Kajal - Deep Black', '', '', '1', '2022-01-24'),
(77, 'Makeup', 'M.A.C Studio Fix Powder Plus Foundation - NC50', 'M.A.C', '2900', '2900', 119, 'powder_foundation.jpg', 'M.A.C Studio Fix Powder Plus Foundation - NC50', 'M.A.C Studio Fix Powder Plus Foundation - NC50', '', '', '1', '2022-01-24'),
(78, 'Makeup', 'M.A.C Pro Longwear Fluidline Eyeliner Gel - Blacktrack (3g)', 'M.A.C', '1850', '1800', 120, 'mac_brow-gel.jpg', 'M.A.C Pro Longwear Fluidline Eyeliner Gel - Blacktrack (3g)', 'M.A.C Pro Longwear Fluidline Eyeliner Gel - Blacktrack (3g)', '', '', '1', '2022-01-24'),
(79, 'Makeup', 'M.A.C Eye Shadow X 9 - Amber Times Nine', 'M.A.C', '3700', '3700', 100, 'mac_eyeshadow.jpg', 'M.A.C Eye Shadow X 9 - Amber Times Nine', 'M.A.C Eye Shadow X 9 - Amber Times Nine', '', '', '1', '2022-01-24'),
(80, 'Makeup', 'M.A.C Retro Matte Lipstick - Ruby Woo', 'M.A.C', '1700', '1700', 250, 'retro_matte_lipstick.jpg', 'M.A.C Retro Matte Lipstick - Ruby Woo', 'M.A.C Retro Matte Lipstick - Ruby Woo', '', '', '1', '2022-01-24'),
(81, 'Makeup', 'M.A.C In Extreme Dimension Waterproof Mascara Lash', 'M.A.C', '2400', '2400', 200, 'mascara.jpg', 'M.A.C In Extreme Dimension Waterproof Mascara Lash', 'M.A.C In Extreme Dimension Waterproof Mascara Lash - Dimensional Black', '', '', '1', '2022-01-24'),
(82, 'Makeup', 'M.A.C Crayon Kajal Eye Liner - Flourish Me Beautiful (Deep Purple)', 'M.A.C', '2500', '2500', 150, 'mac_kajal-liner.jpg', 'M.A.C Crayon Kajal Eye Liner - Flourish Me Beautiful (Deep Purple)', 'M.A.C Crayon Kajal Eye Liner - Flourish Me Beautiful (Deep Purple)', '', '', '1', '2022-01-24'),
(83, 'Makeup', 'e.l.f. Cosmetics Monochromatic Multi Stick', 'E.L.F', '490', '320', 210, 'elf_multistick.jpg', 'e.l.f. Cosmetics Monochromatic Multi Stick - Glistening Peach', 'e.l.f. Cosmetics Monochromatic Multi Stick - Glistening Peach\r\n', '', '', '1', '2022-01-24'),
(84, 'Makeup', 'e.l.f. Cosmetics Metallic Flare Highlighter - 24K Gold', 'E.L.F', '699', '545', 180, 'elf_highlighter.jpg', 'e.l.f. Cosmetics Metallic Flare Highlighter - 24K Gold', 'e.l.f. Cosmetics Metallic Flare Highlighter - 24K Gold', '', '', '1', '2022-01-24'),
(85, 'Makeup', 'e.l.f. Cosmetics Liquid Glitter Eyeshadow - 24K Gold', 'E.L.F', '590', '460', 175, 'elf_liquid_eyeshadow.jpg', 'e.l.f. Cosmetics Liquid Glitter Eyeshadow - 24K Gold', 'e.l.f. Cosmetics Liquid Glitter Eyeshadow - 24K Gold', '', '', '1', '2022-01-24'),
(86, 'Makeup', 'e.l.f. Cosmetics Matte Magic Mist & Set Setting Spray', 'E.L.F', '590', '460', 120, 'elf-seting-spray.jpg', 'e.l.f. Cosmetics Matte Magic Mist & Set Setting Spray', 'e.l.f. Cosmetics Matte Magic Mist & Set Setting Spray', '', '', '1', '2022-01-24'),
(87, 'Makeup', 'Sigma Beauty Flat Kabuki Brush - F80', 'SIGMA', '2200', '1958', 50, 'flat-kabuki-brush.jpg', 'Sigma Beauty Flat Kabuki Brush - F80', 'Sigma Beauty Flat Kabuki Brush - F80', '', '', '1', '2022-01-24'),
(88, 'Skin', 'TONYMOLY Pureness 100 Collagen Mask Sheet (21ml)', 'TONYMOLY', '100', '100', 200, 'tonymoly-collagen-mask-sheet.jpg', 'TONYMOLY Pureness 100 Collagen Mask Sheet (21ml)', 'TONYMOLY Pureness 100 Collagen Mask Sheet\r\n(21ml)', '', '', '1', '2022-01-24'),
(89, 'Skin', 'TONYMOLY Pureness 100 Hyaluronic Acid Mask Sheet (21ml)', 'TONYMOLY', '100', '100', 200, 'tonymoly-acid-mask-sheet.jpg', 'TONYMOLY Pureness 100 Hyaluronic Acid Mask Sheet (21ml)', 'TONYMOLY Pureness 100 Hyaluronic Acid Mask Sheet\r\n(21ml)', '', '', '1', '2022-01-24'),
(90, 'Skin', 'TONYMOLY Master Lab Ceramide Mask Sheet (19gm)', 'TONYMOLY', '150', '150', 200, 'tonymoly-lab_mask_sheet.jpg', 'TONYMOLY Master Lab Ceramide Mask Sheet (19gm)', 'TONYMOLY Master Lab Ceramide Mask Sheet\r\n(19gm)', '', '', '1', '2022-01-24'),
(91, 'Makeup', 'Flower Beauty Lash Warrior Mascara - Fiercest Black', 'FLOWER BEAUTY', '825', '825', 150, 'flower-mascara.jpg', 'Flower Beauty Lash Warrior Mascara - Fiercest Black', 'Flower Beauty Lash Warrior Mascara - Fiercest Black', '', '', '1', '2022-01-24'),
(92, 'Makeup', 'Flower Beauty Flower Pots Powder Blush - Sweet Pea', 'FLOWER BEAUTY', '750', '750', 100, 'flower_blush.jpg', 'Flower Beauty Flower Pots Powder Blush - Sweet Pea', 'Flower Beauty Flower Pots Powder Blush - Sweet Pea', '', '', '1', '2022-01-24'),
(93, 'Makeup', 'Flower Beauty Blush Bomb Color Drops - Pinched', 'FLOWER BEAUTY', '800', '800', 100, 'flower-blush-bomb-color-drop.jpg', 'Flower Beauty Blush Bomb Color Drops - Pinched', 'Flower Beauty Blush Bomb Color Drops - Pinched', '', '', '1', '2022-01-24'),
(94, 'Makeup', 'Flower Beauty Light Illusion Liquid Foundation - Cocoa', 'FLOWER BEAUTY', '990', '590', 100, 'flower-liquid-foundation.jpg', 'Flower Beauty Light Illusion Liquid Foundation - Cocoa', 'Flower Beauty Light Illusion Liquid Foundation - Cocoa', '', '', '1', '2022-01-24'),
(95, 'Makeup', 'Flower Beauty Seal The Deal Hydrating Setting Spray', 'FLOWER BEAUTY', '600', '600', 100, 'flower-hydrating-setting-spray.jpg', 'Flower Beauty Seal The Deal Hydrating Setting Spray', 'Flower Beauty Seal The Deal Hydrating Setting Spray', '', '', '1', '2022-01-24'),
(96, 'Makeup', 'Flower Beauty Miracle Matte Liquid Lip - Nude Blush', 'FLOWER BEAUTY', '825', '644', 100, 'flower-liquid-lip.jpg', 'Flower Beauty Miracle Matte Liquid Lip - Nude Blush', 'Flower Beauty Miracle Matte Liquid Lip - Nude Blush', '', '', '1', '2022-01-24'),
(97, 'Makeup', 'Charlotte Tilbury Eye Colour Magic Liner Duo - Copper Charge', 'CHARLOTTE TILBURY', '2900', '2550', 120, 'eye-color-magic-liner.jpg', 'Charlotte Tilbury Eye Colour Magic Liner Duo - Copper Charge', 'Charlotte Tilbury Eye Colour Magic Liner Duo - Copper Charge', '', '', '1', '2022-01-24'),
(98, 'Makeup', 'Charlotte Tilbury Wonderglow', 'CHARLOTTE TILBURY', '5150', '4584', 99, 'light-wonder.jpg', 'Charlotte Tilbury Wonderglow', 'Charlotte Tilbury Wonderglow', '', '', '1', '2022-01-24'),
(99, 'Makeup', 'e.l.f. Cosmetics SuperHydrate A Moisturizer', 'E.L.F', '1400', '1090', 180, 'elf_moisturiser.jpg', 'e.l.f. Cosmetics SuperHydrate A Moisturizer', 'e.l.f. Cosmetics SuperHydrate A Moisturizer', '', '', '1', '2022-01-24'),
(100, 'Makeup', 'e.l.f. Cosmetics Tone Adjusting Face Primer - Brightening Lavender', 'E.L.F', '700', '550', 180, 'tone-adjusting-primer.jpg', 'e.l.f. Cosmetics Tone Adjusting Face Primer - Brightening Lavender', 'e.l.f. Cosmetics Tone Adjusting Face Primer - Brightening Lavender', '', '', '1', '2022-01-24'),
(101, 'Makeup', 'e.l.f. Cosmetics Day to Night Lipstick Duo - Need It Nudes', 'E.L.F', '650', '505', 200, 'elf_lipstick-duo.jpg', 'e.l.f. Cosmetics Day to Night Lipstick Duo - Need It Nudes', 'e.l.f. Cosmetics Day to Night Lipstick Duo - Need It Nudes', '', '', '1', '2022-01-24'),
(102, 'Fragrence', 'Versace Bright Crystal Eau De Toilette(30ml)', 'VERSACE', '3400', '3400', 100, 'versaca_bright_crystal.jpg', 'Versace Bright Crystal Eau De Toilette(30ml)', 'Versace Bright Crystal Eau De Toilette\r\n(30ml)', '', '', '1', '2022-01-24'),
(103, 'Fragrence', 'DIOR Sauvage Eau De Parfum (60ml)', 'DIOR', '7400', '7400', 49, 'dior.jpg', 'DIOR Sauvage Eau De Parfum (60ml)', 'DIOR Sauvage Eau De Parfum\r\n(60ml)', '', '', '1', '2022-01-24'),
(104, 'Fragrence', 'Chopard Oud Malaki Eau De Parfum(80ml)', 'CHOPARD', '8800', '6600', 60, 'chopard_oud_malaki_eau_de_parfume.jpg', 'Chopard Oud Malaki Eau De Parfum(80ml)', 'Chopard Oud Malaki Eau De Parfum(80ml)', '', '', '1', '2022-01-24'),
(105, 'Fragrence', 'Carolina Herrera Good Girl Eau De Parfum Supreme Natural Spray (30ml)', 'CAROLINA HERRERA', '4350', '3698', 70, 'carolina-herrera-good-girl-eau-de-parfum.jpg', 'Carolina Herrera Good Girl Eau De Parfum (30ml)', 'Carolina Herrera Good Girl Eau De Parfum Supreme Natural Spray\r\n(30ml)', '', '', '1', '2022-01-24'),
(106, 'Fragrence', 'Paco Rabanne Olympea Eau De Parfum (50ml)', 'PACO RABANNE', '5100', '4590', 90, 'paco_rabanne_olympea_eau_de_parfum.jpg', 'Paco Rabanne Olympea Eau De Parfum (50ml)', 'Paco Rabanne Olympea Eau De Parfum\r\n(50ml)', '', '', '1', '2022-01-24'),
(107, 'Makeup', 'Makeup Revolution Reloaded Combo - II', 'MAKEUP REVOLUTION', '2100', '1750', 160, 'eyeshadow.jpg', 'Makeup Revolution Reloaded Combo - II', 'Makeup Revolution Reloaded Combo - II', '', '', '1', '2022-01-24'),
(108, 'Makeup', 'e.l.f. Cosmetics Expert Liquid Eyeliner - Midnight', 'E.L.F', '400', '320', 150, 'elf_liquid_eyeliner.jpg', 'e.l.f. Cosmetics Expert Liquid Eyeliner - Midnight', 'No more tugging or pulling on your eyelids with this easy glide e.l.f Expert Liquid Liner. The smudge-proof liner is rich in color, creating a long lasting defined look. The fine tip brush creates easy and precise definition for natural or dramatic eye effects.<br />\r\n<br />\r\nFeatures:<br />\r\n<br />\r\nEasy-to-apply liquid eyeliner that enhances and defines the eyes<br />\r\nRich, pigmented packed formula delivers bold as well as precise lines<br />\r\nFeatures a smudge-proof and long lasting formula<br />\r\nIts fine tip applicator is designed to provide ultra precise application<br />\r\nFree from parabens, phthalates and harmful chemicals<br />\r\nThis product is vegan and cruelty-free<br />\r\nExpiry Date: 15 December 2022<br />\r\n<br />\r\nCountry of Origin: China<br />\r\n<br />\r\nName of Mfg / Importer / Brand: e.l.f. Cosmetics<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: e.l.f. Beauty, Inc. 570 10th Street, Oakland, CA 94607', 'Charcoal: Water (Aqua), Styrene/Acrylates/Ammonium Methacrylate Copolymer, Ethylhexyl Palmitate, Isododecane, PEG-40 Hydrogenated Castor Oil, Polysorbate 20, Phenoxyethanol, Caprylyl Glycol, PVM/MA Decadiene Crosspolymer, Triethanolamine, Acrylates Copolymer, Xanthan Gum, Ethylhexylglycerin, Aluminum Hydroxide, PEG-8 Dimethicone, Silica, Hydroxyethylcellulose May Contain: DC Black 2 (CI 77266), Mica (CI 77019), Titanium Dioxide (CI 77891)<br />\r\n<br />\r\n<br />\r\nJet Black: Water (Aqua), Styrene/Acrylates/Ammonium Methacrylate Copolymer, Ethylhexyl Palmitate, Isododecane, Polysorbate 20, PEG-40 Hydrogenated Castor Oil, Phenoxyethanol, Caprylyl Glycol, Acrylates Copolymer, PVM/MA Decadiene Crosspolymer, Triethanolamine, Xanthan Gum, Ethylhexylglycerin, Hydroxyethylcellulose May Contain:D C Black 2 (CI 77266)<br />\r\n<br />\r\n<br />\r\nMidnight: Water (Aqua), Styrene/Acrylates/Ammonium Methacrylate Copolymer, Ethylhexyl Palmitate, Isododecane, Polysorbate 20, PEG-40 Hydrogenated Castor Oil, Phenoxyethanol, Triethanolamine, PVM/MA Decadiene Crosspolymer, Xanthan Gum, Ethylhexylglycerin, Caprylyl Glycol, Acrylates Copolymer, Hydroxyethylcellulose May Contain: DC Black 2 (CI 77266), Manganese Violet (CI 77742), Ultramarines (CI 77007), Red 40 (CI 16035), Blue 1 (CI 42090)', 'Begin at the inner corner of the eye along the lash line and work outwards.<br />\r\nPosition brush tip close to the lash roots and in a gentle, fluid movement apply color along the natural curve of your lash line.', '1', '2022-01-30'),
(109, 'Makeup', 'Wishful Clean Genie Cleansing Butter', 'WISHFUL', '3050', '3050', 30, 'wishful-cleansing-butter.jpg', 'Wishful Clean Genie Cleansing Butter', 'A transforming cleansing balm that effortlessly removes long-wear makeup. This gentle but powerful balm makes the perfect first step of your double cleansing routine.<br />\r\n<br />\r\nWISHFUL Clean Genie Cleansing Butter melts away tough makeup leaving you with perfectly soft, soothed, and clean skin. Infused with green tea and malachite, the formula dissolves makeup and impurities while leaving your skin feeling hydrated. Once fully massaged into the skin, add water and watch as the formula transforms into milk that easily washes away, leaving you with fresh, clean, comfortable skin - no greasy film or dry after-feel!<br />\r\n<br />\r\nFormulated without a list of over 50 ingredients, including sulfates (SLS and SLES), parabens, phthalates, and more.<br />\r\n<br />\r\n<br />\r\nKey Highlights:<br />\r\n<br />\r\n- Suits all skin types<br />\r\n- Suitable for makeup removal and cleansing<br />\r\n- Balm to oil to milk like texture<br />\r\n<br />\r\n<br />\r\nResearch results:<br />\r\n<br />\r\nBased on an independent consumer testing panel of 30 people.<br />\r\n<br />\r\n- 90% agreed the product easily removed all of their make up<br />\r\n- 96% agreed the product left no residue on the skin after use<br />\r\n- 96% agreed the product felt gentle on their skin<br />\r\n- 96% agreed the product removed dirt, grime and excess oil from their face<br />\r\n- 86% agreed the product easily removed stubborn makeup<br />\r\n- 83% agreed their skin felt hydrated after use<br />\r\n- 93% agreed their skin felt clean after use<br />\r\n- 86% agreed their skin felt refreshed after use<br />\r\n- 93% agreed the product is easy to use<br />\r\n<br />\r\nAbout the Brand: For more than a decade, Huda Kattan has had access to some of the world’s most knowledgeable experts, innovative technologies and industry leaders in the world of skincare. Her mission to find the most effective, accessible, and simple solutions to achieve happy, healthy skin and share them with the world has led her to launch her debut skincare brand, WISHFUL. Inspired by the overwhelming demand for skincare products from readers of the Huda Beauty blog and social media followers, the brand addresses the skincare battles that Huda has faced throughout her life. Each WISHFUL product has been made with Huda’s no-nonsense and honest approach to beauty, and has been tried, tested, and approved by the beauty maven herself.<br />\r\n<br />\r\nThe WISHFUL Promise: Cruelty-free, sulfate-free, paraben-free, phthalate-free and clean.<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Cleanser available on Nykaa. Shop more Wishful products here.You can browse through the complete world of Wishful Cleanser .<br />\r\n<br />\r\nExpiry Date: 15 February 2023<br />\r\n<br />\r\nCountry of Origin: Japan<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Huda Beauty<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Jo Cosmetics Co., Ltd, 3- 11-14 Omori-Nishi, Ota- ku, Tokyo-Japan', 'Highlighted Ingredients:<br />\r\n<br />\r\n- Green Tea Extract: Known to help maintain skin moisture and soothe, while its clarifying properties help pull impurities out of the skin<br />\r\n- Cherry Blossom Extract: Known to condition the skin, leaving it soft and supple.<br />\r\n- Malachite Stone: Known to have antioxidant properties, it helps fight against the effects of pollution including clogged pores and dull complexion.<br />\r\n<br />\r\nFull Ingredients List: Caprylic/Capric Triglyceride, Ethylhexyl Palmitate, Peg-20 Glyceryl Triisostearate, Peg-5 Glyceryl Triisostearate, Polyethylene, Camellia Sinensis Leaf Extract, Malachite Extract, Prunus Yedoensis Leaf Extract, Prunus Lannesiana Flower Extract, Prunus Serrulata Flower Extract, Ascorbic Acid, Malic Acid, Tocopherol, Triethoxycaprylylsilane, Aluminum Hydroxide, Water / Aqua / Eau, Butylene Glycol, Phenoxyethanol, Fragrance / Parfum, Benzyl Benzoate, Citronellol, Hydroxycitronellal, Limonene, Titanium Dioxide / Ci 77891, Blue 1 Lake / Ci 42090, Yellow 5 Lake / Ci 19140.', '- Always start with dry skin.<br />\r\n- Scoop a dime-sized amount and use fingertips to apply to face.<br />\r\n- Massage into your skin for 60 seconds to gently dissolve makeup, dirt and excess oils.<br />\r\n- Rinse with warm water or wet cloth.<br />\r\n- Follow with a foaming cleanser for the ultimate double cleanse.', '1', '2022-01-30'),
(110, 'Makeup', 'Wishful Honey Balm Jelly Moisturiser', 'WISHFUL', '4250', '4250', 20, 'wishful-honey-balm-jelly-moisturiser.jpg', 'Wishful Honey Balm Jelly Moisturiser', 'WISHFUL Honey Balm Jelly Moisturiser is a luxuriously textured crème balm moisturizer infused with ingredients to minimize pores and even skin tone, leaving you with a radiant and smooth complexion. Your skin will look next level fresh and dewy, not to mention flawless AF.<br />\r\n<br />\r\nKey Highlights:<br />\r\n<br />\r\n- Moisturized skin<br />\r\n- Visibly smaller pores<br />\r\n- Luminosity<br />\r\n- Calm and soothed skin', 'Key Ingredients: Lavender, Niacinamide, Honey, Turmeric, Lavender.', '- Starting with a clean, dry face.<br />\r\n- Apply a small amount to clean skin, add more as needed.<br />\r\n- Gently rub until fully absorbed.<br />\r\n- Use daily, morning and evening.', '1', '2022-01-30'),
(111, 'Skin', 'Wishful Yo Glow Enzyme Scrub - Mini', 'WISHFUL', '1850', '1850', 40, 'wishful-enzyme-scrub-mini.jpg', 'Wishful Yo Glow Enzyme Scrub - Mini', 'What it is: Yo Glow Enzyme Scrub is a gentle, yet powerful exfoliating scrub infused with a combination of pineapple and papaya enzymes, BHAs and AHAs that leave the skin with a healthy glow.<br />\r\n<br />\r\nTried and tested by Huda herself, this three-in-one revolutionary scrub reveals smooth, radiant and glowing skin in seconds. Thanks to its unique combination of fruit extracts, acids, and soft exfoliants, this scrub promises long-lasting results in just 10 days. The lightweight, milky texture gently buffs away dead skin cells and impurities for immediate results that also makes the perfect canvas for seamless makeup application.<br />\r\n<br />\r\nWISHFUL Yo Glow Scrub is a clean, cruelty-free formula, and is sulfates-free (SLS AND SLES), parabens-free, and phthalates free.<br />\r\n<br />\r\nSkin type: All skin types<br />\r\n<br />\r\nSkincare concerns: Tired, dull and uneven texture.<br />\r\n<br />\r\nFormulation: Liquid<br />\r\n<br />\r\nResearch results:<br />\r\n<br />\r\nTested on a panel of 60 people on all skin types, tones and sexes all under dermatological control Immediate results after 1 use:<br />\r\n<br />\r\n- 99% agreed that their skin felt softer.<br />\r\n- 98% agreed that their skin appeared to have less impurities.<br />\r\n- 93% agreed their skin felt retexturized and refined.<br />\r\n- 93% agreed their skin appeared brighter.<br />\r\n<br />\r\nResults after 10 days:<br />\r\n<br />\r\n- 99% agreed their skin felt refreshed.<br />\r\n- 95% of people agreed their skin felt smoother and softer.<br />\r\n- 87% agreed their skin tone appeared more even.<br />\r\n- 82% agreed their dry patches had visibly reduced.<br />\r\n<br />\r\nResults after 28 days:<br />\r\n<br />\r\n- 100% agreed that the product was gentle to their skin.<br />\r\n- 97% agreed their skin had a healthy glow.<br />\r\n- 95% agreed their skin appeared brighter.<br />\r\n- 83% agreed the appearance of sun damage or dark spots had improved.<br />\r\n- 97% would recommend this product to a friend.<br />\r\n<br />\r\nAbout the Brand: For more than a decade, Huda Kattan has had access to some of the world’s most knowledgeable experts, innovative technologies and industry leaders in the world of skincare. Her mission to find the most effective, accessible, and simple solutions to achieve happy, healthy skin and share them with the world has led her to launch her debut skincare brand, WISHFUL. Inspired by the overwhelming demand for skincare products from readers of the Huda Beauty blog and social media followers, the brand addresses the skincare battles that Huda has faced throughout her life. Each WISHFUL product has been made with Huda’s no-nonsense and honest approach to beauty, and has been tried, tested, and approved by the beauty maven herself.<br />\r\n<br />\r\nThe WISHFUL Promise: Cruelty-free, sulfate-free, paraben-free, phthalate-free and clean.<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Scrubs & Exfoliators available on Nykaa. Shop more Wishful products here.You can browse through the complete world of Wishful Scrubs & Exfoliators .<br />\r\nAlternatively, you can also find many more products from the Wishful Yo Glow Enzyme Scrub range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 June 2023<br />\r\n<br />\r\nCountry of Origin: South Korea<br />\r\n<br />\r\nName of Mfg / Importer / Brand: BACCAROSE Perfumes & Beauty Products Ltd<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: M/s. Eyesome Co., Ltd ,309, Gieopanji-ro, Wongok-myeon., Anseong-si, Gyeonggi-do, South Korea', 'Key Ingredients:<br />\r\n<br />\r\n- Papaya Fruit Extract: Known to smooth and increase skin clarity leaving a radiant glow.<br />\r\n- Pineapple Fruit Extract: Helps to gently exfoliate, reduce dark spots and soothe skin.<br />\r\n- BHA and AHAs: Alpha hydroxy acids and beta hydroxy acids that help to exfoliate dead skin cells, reduce dark spots and even skin texture and complexion.<br />\r\n- Cellulose: A soft, gentle exfoliant that evens skin texture and complexion<br />\r\n<br />\r\nFull Ingredients List: Water/Aqua/Eau, Cellulose, Butylene Glycol, Propylene Glycol, Alcohol, 1,2-Hexanediol, Bromelain, Ananas Sativus (Pineapple) Fruit Extract, Papain, Carica Papaya (Papaya) Fruit Extract, Citric Acid, Lactic Acid, Malic Acid,, Salicylic Acid, Tartaric Acid, Glycolic Acid, Zingiber Officinale (Ginger) Root Extract, Glycerin, Rosa Centifolia (Rose) Flower Extract, Cocos Nucifera (Coconut) Fruit Extract, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Salix, Alba (Willow) Bark Extract, Saccharum Officinarum (Sugarcane) ,Extract/Saccharum Officinarum/Extrait De Canne À Sucre, Acer Saccharum, (Sugar Maple) Extract, Camellia Japonica (Camellia) Leaf Extract, Citrus Paradisi, (Grapefruit) Seed Extract, Phellodendron Amurense (Cork Tree) Bark Extract, Mannitol, Psidium Guajava (Guava) Leaf Extract, Camellia Sinensis (Tea Plant), Leaf Extract, Mangifera Indica (Mango) Fruit Extract, Musa Sapientum (Banana), Fruit Extract, Passiflora Edulis (Passionfruit) Fruit Extract, Citrus Aurantium, Dulcis (Orange) Fruit Extract, Citrus Limon (Lemon) Fruit Extract, Vaccinium, Myrtillus (Blueberry) Fruit Extract, Magnolia Officinalis (Magnolia) Bark, Extract, Sodium Hyaluronate, Ethylhexylglycerin, Gluconolactone, Polysorbate 20, Carbomer, Tromethamine, Propanediol, Disodium Edta, Phenoxyethanol, Benzyl Alcohol, Fragrance/Parfum.', '- 1-2 times a week, use a generous amount on clean, dry skin.<br />\r\n- Gently massage the scrub in circular motions across the face and neck, rolling and sweeping away dead skin cells and impurities.<br />\r\n- Rinse well with warm water and gently pat the skin dry', '1', '2022-01-30');
INSERT INTO `product` (`pid`, `category`, `product_name`, `brand`, `mrp`, `selling_price`, `qty`, `images`, `title`, `description`, `ingredients`, `howto`, `status`, `date`) VALUES
(118, 'Makeup', 'Wishful Thirst Trap Juice HA3 & Peptide Serum', 'WISHFUL', '1650', '1650', 30, 'wishful-peptide-serum.jpg', 'Wishful Thirst Trap Juice HA3 & Peptide Serum', 'This serum will deeply hydrate your skin leaving it plump, bouncy and overall, healthier over time. Non-comedogenic, non-acnegenic, cruelty-free, clean-beauty.<br />\r\n<br />\r\nSkin type: All skin types<br />\r\n<br />\r\nSkincare concerns: Dry, dull skin<br />\r\n<br />\r\nFormulation: Liquid / serum<br />\r\n<br />\r\nResearch results: Consumer claims:<br />\r\n<br />\r\n- 100% agreed their skin had an instant glow*<br />\r\n- 97% agreed their skin felt instantly hydrated*<br />\r\n- 97% agreed their skin felt bouncy after 10 days*<br />\r\n- 94% agreed their skin looks and felt stronger after 10 days *<br />\r\n- 100% agreed their skin felt smoother after 28 days*<br />\r\n- 93% agreed their skin felt plumped after 28 days*<br />\r\n<br />\r\n*Based on an independent consumer testing panel of 32 men and women of all skin types and tones, using the product twice a day for 28 days.<br />\r\n<br />\r\n<br />\r\nAbout the Brand: For more than a decade, Huda Kattan has had access to some of the world’s most knowledgeable experts, innovative technologies and industry leaders in the world of skincare. Her mission to find the most effective, accessible, and simple solutions to achieve happy, healthy skin and share them with the world has led her to launch her debut skincare brand, Wishful. Inspired by the overwhelming demand for skincare products from readers of the Huda Beauty blog and social media followers, the brand addresses the skincare battles that Huda has faced throughout her life. Each Wishful product has been made with Huda’s no-nonsense and honest approach to beauty, and has been tried, tested, and approved by the beauty maven herself.<br />\r\n<br />\r\nThe Wishful Promise: Cruelty-free, sulfate-free, paraben-free, phthalate-free and clean.<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Serums & Essence available on Nykaa. Shop more Wishful products here.You can browse through the complete world of Wishful Serums & Essence .<br />\r\nAlternatively, you can also find many more products from the Wishful Thirst Trap Juice HA3 & Peptide Serum range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 October 2023<br />\r\n<br />\r\nCountry of Origin: South Korea<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Huda Beauty<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Huda Beauty Fz Llc, Pbu-E70 & E71, Production City, Dubai Uae, Po Box 503485', 'Key Ingredients:<br />\r\n<br />\r\n- Hyaluronic Acid: Holds up to 1000 times its weight in water creating a plumping effect while it also forms a moisturizing film on the surface of the skin for visible, surface-level hydration.<br />\r\n<br />\r\n- Niacinamide<br />\r\n<br />\r\n- Sodium Hyaluronate<br />\r\n<br />\r\n- Hydrolyzed Hyaluronic Acid: Works to hydrate the deeper layers of the skin and has powerful regenerating properties.<br />\r\n<br />\r\n- Peptides: Plumps, firms and reduces the appearance of fine lines by stimulating collagen production.<br />\r\n<br />\r\n- Hollyhock Rose: Native to Asia and Europe, this plant has excellent hydrating properties.<br />\r\n<br />\r\n- Aloe Vera: Known for its ability to soothe skin and boost hydration.<br />\r\n<br />\r\nFull Ingredient List: Water/Aqua/Eau, Glycerin, Methylpropanediol, Dipropylene Glycol, Niacinamide, Hyaluronic Acid, Sodium Hyaluronate, Hydrolyzed Hyaluronic Acid, Palmitoyl Tripeptide-1, Palmitoyl Tetrapeptide- 7, Althaea Rosea Flower Extract, Aloe Barbadensis Leaf Polysaccharides, Caffeine, Adenosine, Allantoin, Ethylhexylglycerin, Butylene Glycol, Sodium Phytate, Caprylyl Glycol, Hydroxyacetophenone, Carbomer, Xanthan Gum, Tromethamine, Glyceryl Acrylate/Acrylic Acid Copolymer, Pvm/Ma Copolymer, 1, 2-Hexanediol, Peg-40 Hydrogenated Castor Oil, Polysorbate 20, Tocopherol, Fragrance/Parfum, Linalool, Limonene.', 'For the most hydrated, luminous skin:<br />\r\n<br />\r\n- Apply serum generously to face and décolleté (after toner and essence, and before moisturizer.)<br />\r\n- Gently pat until fully absorbed.<br />\r\n- Use morning and evening.<br />\r\n<br />\r\nHuda’s tip: On extra-dry skin days mix Thirst Trap Serum with Wishful Honey Balm Moisturizer for next level hydration!', '1', '2022-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `product_rating`
--

CREATE TABLE `product_rating` (
  `rid` int(11) NOT NULL,
  `uid` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review_title` text NOT NULL,
  `review_description` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_rating`
--

INSERT INTO `product_rating` (`rid`, `uid`, `email`, `pid`, `rating`, `review_title`, `review_description`, `photo`, `status`, `date`) VALUES
(2, 1, 'samasaiyed7305@gmail.com', 49, 0, 'rtitle', '', '', 0, '2022-01-19'),
(3, 1, 'samasaiyed7305@gmail.com', 49, 0, 'rtitle', 'Nice Facial oil', '', 1, '2022-01-19'),
(4, 5, 'kim@gmail.com', 86, 0, 'e.l.f. setting spray', 'Good Setting spray!!\r\nlast for at least 6 hours.', '', 1, '2022-01-19'),
(6, 2, 'riya123@gmail.com', 83, 0, 'multi stick', 'e.l.f. Cosmetics Monochromatic Multi Stick - Glistening Peach\r\n    ', '', 0, '2022-01-19'),
(7, 2, 'riya123@gmail.com', 83, 1, 'multi stick', 'e.l.f. Cosmetics Monochromatic Multi Stick - Glistening Peach\r\n    ', '', 1, '2022-01-19'),
(8, 2, 'riya123@gmail.com', 83, 1, 'multi stick', 'e.l.f. Cosmetics Monochromatic Multi Stick - Glistening Peach\r\n    ', '', 1, '2022-01-19'),
(9, 2, 'riya123@gmail.com', 10, 4, 'bite size eyeshadow', 'very pigmented eyeshadow! must buy..', '', 1, '2022-01-19'),
(15, 3, 'juveriyasaiyed0123@gmail.com', 99, 5, 'SuperHydrating Moisturizer', 'This made my skin sooo soft like wowww!!!! I have acne prone oily and highly sensitive skin!! This literally didn\'t irritate my skin!! It\'s very light !! Love this product!', '', 1, '2022-01-20'),
(17, 4, 'jin012@gmail.com', 101, 4, 'Day to night lipstick duo', 'must have lip duo !!!\r\nvery pigmented and comfortable on lip', '', 1, '2022-01-20'),
(19, 2, 'riya123@gmail.com', 99, 4, 'good moisturizer', 'Very sleek jar I dropped it twice and half of my product fell but thank god because of jelly like consistency I am left with lots product yet. Its a good product as primer as it feels like silicon. Skin definitely feel smooth silky after applying this. Designed in US and made in China thing little okay as I thought its from US. I got it in very good discount so worth the discounted price.', '', 1, '2022-01-23'),
(20, 5, 'kim@gmail.com', 99, 5, 'Perfect for oily skin types ', 'This product is for those hot summery days where you don’t want to feel greasy but feel hydrated at the same time', '', 1, '2022-01-23'),
(21, 2, 'riya123@gmail.com', 3, 5, 'Full coverage and sweatproof', 'Finally for my combination skin i got my holy grail product one and only huda beauty and i got free samples also of mascara,primer,and scrub❤️', '', 1, '2022-01-24'),
(22, 1, 'samasaiyed7305@gmail.com', 0, 5, 'e.l.f bite size eyeshadow', 'must have eyeshadow', '', 1, '2022-01-29'),
(23, 1, 'samasaiyed7305@gmail.com', 0, 5, 'e.l.f bite size eyeshadow', 'must have eyeshadow', '', 1, '2022-01-29'),
(24, 1, 'samasaiyed7305@gmail.com', 3, 5, '\"Best foundation till yet!!\"', 'Full coverage foundation covers every bit on face glides on perfectly\r\n', '', 1, '2022-02-01'),
(25, 3, 'juveriyasaiyed0123@gmail.com', 3, 5, 'Full coverage', 'I used this product two times and i am her fan now, it\'s a great foundation with full coverage, i just love it. Go for it without any doubt ?', 'hr.jpeg', 1, '2022-02-01'),
(26, 3, 'juveriyasaiyed0123@gmail.com', 3, 5, 'Full coverage ', 'I used this product two times and i am her fan now, it\'s a great foundation with full coverage, i just love it. Go for it without any doubt ?', 'hr.jpeg', 1, '2022-02-01'),
(27, 1, 'samasaiyed7305@gmail.com', 10, 5, 'e.l.f. bite size eyeshadow', 'Such a tiny palette! Shimmer shades are really Beautiful. Creamy, Buttery and Glide very smoothly?. Somehow light transition shade is totally useless on my skin tone. Bought it for 280. So I\'m happy ?', 'review2.jpeg', 1, '2022-02-02'),
(28, 3, 'juveriyasaiyed0123@gmail.com', 15, 5, '\"Perfect match\"', 'A convenient and effective way of applying foundation. It gives an impeccable coverage and it feels extremely light and hydrating on the skin. The stay power is resplendent, the product stays put all day long. Overall a good product to invest your money in.', 'h1.jpeg', 1, '2022-02-11'),
(29, 1, 'samasaiyed7305@gmail.com', 6, 5, 'M.A.C. powder kiss lipstick', 'Must Have Lipstick in your bag!!\r\nvery pigmented.!', 'powder_kiss_lip.jpg', 1, '2022-02-11'),
(30, 1, 'samasaiyed7305@gmail.com', 6, 5, 'mac lipstick', 'nice lipstick', 'lipcolour.jpg', 1, '2022-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `email`, `mobile_number`, `address`, `city`, `state`, `pincode`, `password`, `cpassword`, `date`) VALUES
(1, 'sama saiyed', 'samasaiyed7305@gmail.com', '876765656', '11/1077,muglisara                             ', 'surat', 'Gujarat', '395003', 'sama', 'sama', '2021-11-16 18:56:53'),
(2, 'riya', 'riya123@gmail.com', '234234324', '11/1077, muglisara', 'surat', 'Gujarat', '395003', 'riya ', 'riya', '2021-11-17 13:02:58'),
(3, 'juveriya', 'juveriyasaiyed0123@gmail.com', '8769541230', '', '', '', '', 'juveriya', 'juveriya', '2021-11-17 15:20:47'),
(4, 'jin', 'jin012@gmail.com', '45452332', 'hannam hiis ', 'jfddndcnd', 'fdfewr', '10001', 'jin012 ', 'jin012', '2021-11-17 15:49:22'),
(5, 'kim', 'kim@gmail.com', '745656453', '', '', '', '', 'kim123 ', 'kim123', '2021-11-18 14:45:30'),
(6, 'ishika', 'ishika@gmail.com', '9898062900', '', '', '', '', '123 ', '123', '2022-02-12 13:26:04'),
(7, 'riya saiyed', 'jssaiyed@gmail.com', '1234567890', '', '', '', '', 'jk@120 ', 'jk@120', '2022-03-15 23:27:26'),
(8, 'justin', 'justinseagal@gmail.com', '9867452310', ' hannam hills', 'seoul', 'seoul', '1111111', 'jk@120 ', 'jk@120', '2022-03-15 23:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_order_detail`
--

CREATE TABLE `user_order_detail` (
  `oid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_order_detail`
--

INSERT INTO `user_order_detail` (`oid`, `uid`, `full_name`, `email`, `address`, `city`, `state`, `pincode`, `payment_mode`, `paid_amount`) VALUES
(1, 2, 'riya', 'riya123@gmail.com', '11/1077muglisara', 'surat', 'Gujarat', '395003', 'Google Pay', ''),
(2, 4, 'jin seok', 'jin012@gmail.com', 'hannam hiis', 'jfddndcnd', 'fdfewr', '10001', 'Google Pay', ''),
(3, 4, 'jin hoseok', 'jin012@gmail.com', 'hannam hiis', 'jfddndcnd', 'fdfewr', '10001', 'Credit/Debit card', ''),
(4, 1, 'sama saiyed', 'samasaiyed7305@gmail.com', '11/1077,muglisara', 'surat', 'Gujarat', '395003', 'Google Pay', ''),
(5, 5, 'kim namjoon', 'kim@gmail.com', '542 W. street', 'ewoqekwo', 'wewewe', '324432', 'Case On Delivery', ''),
(6, 5, 'kim namjoon', 'kim@gmail.com', '542 W. street', 'ewoqekwo', 'wewewe', '324432', 'Case On Delivery', ''),
(7, 5, 'kim namjoon', 'kim@gmail.com', '542 W. street', 'ewoqekwo', 'wewewe', '324432', 'Google Pay', ''),
(8, 5, 'kim namjoon', 'kim@gmail.com', '542 W. street', 'ewoqekwo', 'wewewe', '324432', 'Credit/Debit card', ''),
(10, 3, 'j.s.saiyed', 'riya123@gmail.com', '11/1077,near ibadat khana , khajurawadi,muglisara', 'surat', 'Gujarat', '395003', 'Case On Delivery', ''),
(11, 1, 'sama saiyed', 'samasaiyed7305@gmail.com', '11/1077,', 'surat', 'Gujarat', '395003', 'Case On Delivery', ''),
(12, 1, 'sama saiyed', 'samasaiyed7305@gmail.com', '11/1077,near ibadat khana , khajurawadi,muglisara', 'surat', 'Gujarat', '395003', 'Credit/Debit card', ''),
(13, 1, 'sama saiyed', 'samasaiyed7305@gmail.com', '11/1077,near ibadat khana , khajurawadi,muglisara', 'surat', 'Gujarat', '395003', 'Credit/Debit card', ''),
(14, 2, 'riya saiyed', 'riya123@gmail.com', '11/1077', 'surat', 'Gujarat', '395003', 'Credit/Debit card', ''),
(15, 2, 'juveriya', 'jsaiyed@gmail.com', 'dded', 'sadsad', 'sadwe', '102022', 'Credit/Debit card', ''),
(16, 2, 'juveriya', 'jsaiyed@gmail.com', 'dded', 'sadsad', 'sadwe', '102022', 'Google Pay', ''),
(17, 2, 'riya saiyed', 'riya123@gmail.com', '11/1077,near ibadat khana , khajurawadi,muglisara', 'surat', 'Gujarat', '395003', 'Credit/Debit card', ''),
(18, 1, 'riya', 'riya123@gmail.com', '11/1077,near ...', 'surat', 'Gujarat', '395003', 'Google Pay', ''),
(19, 6, 'ishika', 'ishika@gmail.com', '123213', 'sxsd', 'ny', '10001', 'Credit/Debit card', ''),
(20, 6, 'ishika', 'ishika@gmail.com', '123213', 'sxsd', 'ny', '10001', 'Credit/Debit card', '2260'),
(21, 6, 'ishika', 'ishika@gmail.com', '2112', 'ewoqekwo', 'wewewe', '324432', 'Google Pay', '7000'),
(22, 1, 'sama saiyed', 'samasaiyed7305@gmail.com', '11/1077muglisara', 'surat', 'Gujarat', '395003', 'Case On Delivery', '1100'),
(23, 8, 'justin ', 'justinseagal@gmail.com', 'hannam hills', 'seoul', 'seoul', '1111111', '', '7400'),
(24, 8, 'justin ', 'justinseagal@gmail.com', 'hannam hills', 'seoul', 'seoul', '1111111', 'Case On Delivery', '2200'),
(25, 1, 'sama', 'samasaiyed7305@gmail.com', '11/1077,muglisara                             ', 'surat', 'Gujarat', '395003', 'Case On Delivery', '5000'),
(26, 4, 'seokjin', 'jin012@gmail.com', 'hannam hiis', 'jfddndcnd', 'fdfewr', '10001', 'Credit/Debit card', '918');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wid`, `uid`, `pid`, `date`) VALUES
(1, 4, 10, '2022-02-06 22:33:38'),
(3, 4, 19, '2022-02-06 22:39:00'),
(4, 4, 23, '2022-02-06 22:39:06'),
(5, 4, 3, '2022-02-06 22:46:53'),
(8, 1, 65, '2022-02-09 12:26:33'),
(11, 1, 6, '2022-02-09 20:05:43'),
(12, 1, 22, '2022-02-09 22:40:19'),
(14, 2, 19, '2022-02-10 21:07:53'),
(15, 1, 46, '2022-02-11 23:20:21'),
(16, 5, 7, '2022-03-15 22:25:54'),
(17, 5, 13, '2022-03-15 22:25:57'),
(19, 8, 69, '2022-03-15 23:45:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD KEY `order_master_ibfk_2` (`pid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `category` (`category`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_order_detail`
--
ALTER TABLE `user_order_detail`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_order_detail`
--
ALTER TABLE `user_order_detail`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_master`
--
ALTER TABLE `order_master`
  ADD CONSTRAINT `order_master_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
