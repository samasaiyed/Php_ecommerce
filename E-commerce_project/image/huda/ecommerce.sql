-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 03:57 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `uid`, `pid`, `qty`, `date`) VALUES
(1, 1, 3, 1, '2022-02-10 19:13:01'),
(2, 1, 7, 1, '2022-02-10 19:13:16'),
(13, 2, 6, 1, '2022-02-10 21:56:34');

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
(2, 38, 'Huda Beauty Rose Gold Palette - Remastered', 5, 5350, 26750, '', '2021-11-17 15:24:18', ''),
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
(14, 26, 'Maybelline New York Super Stay Matte Ink Liquid Lipstick', 1, 320, 0, '', '2021-12-01 11:22:37', ''),
(15, 49, 'Farsáli Liquid Powder Oil Balancing Pink Clay', 1, 2880, 0, '', '2022-01-08 13:20:41', ''),
(16, 47, 'Maybelline New York The Colossal Mascara Waterproof - 001 Waterproof Black', 2, 339, 0, '', '2022-02-09 19:06:34', ''),
(16, 64, 'SUGAR Swipe Right Cleansing Water', 1, 399, 0, '', '2022-02-09 19:06:34', ''),
(19, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 1, 2200, 0, '', '2022-02-10 22:28:21', 'confirm'),
(20, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 2, 2200, 0, '', '2022-02-10 22:35:43', 'confirm'),
(20, 7, 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', 1, 3500, 0, '', '2022-02-10 22:35:43', ''),
(22, 56, 'Kay Beauty Smudgeproof Jet Black Gel Kajal', 2, 383, 0, '', '2022-02-10 22:48:58', 'confirm'),
(23, 3, 'Huda Beauty  Matte Liquid Foundation', 2, 3300, 0, '', '2022-02-10 23:01:44', 'pending'),
(2, 11, 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 3, 599, 1797, '', '2022-02-10 23:14:46', 'pending'),
(2, 59, 'Kay Beauty Ultra Black Volume & Length Mascara - Midnight', 1, 639, 639, '', '2022-02-10 23:14:46', 'confirm'),
(3, 48, 'Kay Beauty Quick Dry Liquid Eyeliner - Black Canvas', 2, 499, 998, '', '2022-02-10 23:21:17', 'confirm'),
(3, 11, 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 1, 599, 599, '', '2022-02-10 23:21:17', 'pending'),
(4, 39, 'Charlotte Tilbury Hot Lips 2.0 - Viva La Vergara', 1, 3450, 3450, '', '2022-02-11 11:29:14', 'confirm'),
(4, 33, 'Charlotte Tilbury Cheek To Chic - Ecstasy', 2, 3800, 7600, '', '2022-02-11 11:29:14', 'confirm'),
(4, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 1, 2200, 2200, '', '2022-02-11 11:29:14', 'confirm'),
(5, 3, 'Huda Beauty  Matte Liquid Foundation', 2, 3300, 6600, '', '2022-02-11 11:42:46', 'pending'),
(6, 3, 'Huda Beauty  Matte Liquid Foundation', 3, 3300, 9900, '', '2022-02-11 11:44:27', 'pending'),
(7, 3, 'Huda Beauty  Matte Liquid Foundation', 3, 3300, 9900, '', '2022-02-11 11:51:15', 'pending'),
(8, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 2, 2200, 4400, '', '2022-02-11 12:55:13', 'confirm'),
(8, 2, 'SUGAR All Set To Go Banana Powder', 3, 599, 1797, '', '2022-02-11 12:55:13', 'pending'),
(9, 6, 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 2, 2200, 4400, '', '2022-02-11 12:57:39', 'confirm'),
(9, 5, 'M.A.C Retro Matte Liquid Lipcolour - Topped With Brandy', 2, 2200, 4400, '', '2022-02-11 12:57:39', 'pending'),
(10, 15, 'Huda Beauty Fauxfilter Skin Finish Buildable Coverage Foundation Stick', 1, 3200, 3200, '', '2022-02-11 19:52:51', 'pending'),
(11, 34, 'Huda Beauty Easy Bake Loose Powder-Coffe Cake', 2, 2950, 5900, '', '2022-02-11 23:21:41', 'confirm'),
(12, 69, 'PIXI Glitter-y Eye Quad - RoseBronze', 1, 2050, 2050, '', '2022-02-21 22:03:29', 'pending'),
(13, 46, 'Huda Beauty Power Bullet Cream Glow Lipstick', 1, 1950, 1950, '', '2022-02-21 22:04:29', 'pending'),
(14, 55, 'M.A.C Pro Longwear Nourishing Waterproof Foundation - NC25', 1, 3600, 3600, '', '2022-02-21 22:09:25', 'pending'),
(14, 77, 'M.A.C Studio Fix Powder Plus Foundation - NC50', 1, 2900, 2900, '', '2022-02-21 22:09:25', 'pending'),
(15, 98, 'Charlotte Tilbury Wonderglow', 1, 4584, 4584, '', '2022-02-21 22:18:28', 'confirm'),
(16, 52, 'Murad Retinol Youth Renewal Night Cream', 1, 6800, 6800, '', '2022-02-21 22:20:09', 'pending'),
(17, 61, 'Lakme Eyeconic Curling Mascara - Black', 2, 450, 900, '900', '2022-02-22 21:09:49', 'confirm');

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
(1, 'Skin', 'Murad Vita-C Eyes Dark Circle Corrector', 'MURAD', '5250', '5000', 50, 'dark-circle-corrector.jpg', 'Murad Vita-C Eyes Dark Circle Corrector', 'Explore the entire range of Dark Circles & Wrinkles available on Nykaa. Shop more Murad products here.You can browse through the complete world of Murad Dark Circles & Wrinkles .<br />\r\n<br />\r\nExpiry Date: 15 March 2024<br />\r\n<br />\r\nCountry of Origin: United States of America (the)<br />\r\n<br />\r\nName of Mfg / Importer / Brand: PakLab<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 2121 Park Place, El Segundo, CA 90245', '', '', '1', '2022-01-24'),
(2, 'Makeup', 'SUGAR All Set To Go Banana Powder', 'SUGAR', '599', '550', 97, 'banana-powder.jpg', 'SUGAR All Set To Go Banana Powder', 'SUGAR All Set To Go Banana Powder<br /><br /><br />\r\n', 'Talc, Nylon-12, Boron Nitride, Bismuth Oxychloride, Pentaerythrityl Tetraisostearate, Diisostearyl Malate, Silicone, Tocopheryl Acetate, Phenoxyethanol, Iron Oxide Yellow (CI 77492), Titanium Dioxide(CI 77891)', 'Dab the product under eyes or over your face using a puff or a powder brush. To bake makeup, dab SUGAR All Set To Go Banana Powder and let it set for 5 minutes. This lets your base set properly without any creases. Dust the powder properly to avoid patches.', '1', '2022-01-24'),
(3, 'Makeup', 'Huda Beauty  Matte Liquid Foundation', 'HUDA BEAUTY', '3300', '3300', 0, 'huda_foundation.jpg', 'Huda Beauty  Matte Liquid Foundation', 'What it is: Your favorite filter in a bottle is back, and it\'s better than ever! With the same full coverage and long-lasting properties, you know and love from the OG formula, but with 24-hour flexible wear, a luminous matte finish andâ€¦ it\'s fragrance-free!<br /><br />\r\nThe true filter effect gives instant coverage so seamless that it immediately unifies skin tone and texture as it blurs skin to give a radiant finish. The non-cakey formula is life proof (waterproof, super long wear (24hr), transfer proof, fade proof, sweat proof, humidity proof), so essentially this foundation is your new BFF. No matter what the weather, occasion or situation, #FauxFilter Luminous Matte will never let you down. This new and improved formula is Huda\'s ultimate full coverage foundation that she can\'t live without!<br /><br /><br /><br /><br />\r\n\r\nFormula: Liquid<br />\r\nCoverage: Full<br />\r\nFinish: Matte, luminous<br />\r\nFeatures:<br />\r\n- Fragrance free<br />\r\n- Vegan<br />\r\n- Non-comedogenic<br />\r\n- Water-proof<br />\r\n- 24-hour-wear<br />\r\n- Mask/transfer-proof<br />\r\nConsumer Claims:<br />\r\n- 100% agreed this product gave a full coverage look *<br />\r\n- 92% agreed their skin looked flawless when wearing this product *<br />\r\n- 94% agreed their skin tone appeared more even when wearing this product *<br />\r\n- 96% agreed their skin appeared smoother when wearing this product *<br />\r\n- 86% agreed this product doesn\'t look cakey on their skin *<br />\r\n- 82% agreed this product doesn\'t sit in their lines *<br />- 94% agreed this product was comfortable to wear *<br />\r\n- 90% agreed it was easy to conceal their imperfections with this product *<br />\r\n- 90% agreed the texture of their skin appeared better when wearing this product*<br />\r\n- 100% agreed this product concealed their acne / acne scarring *<br />\r\n- 82% agreed that the product was easy to apply *<br />\r\n- 82% agreed their skin had a filtered finish when wearing this product *<br />\r\n*based on an independent consumer testing panel on 50 women and men using the product once per day for 14 days.<br />\r\nAbout the Brand: Huda Kattan is one of the most well known internationally recognised makeup gurus and content-creators. She is an award-winning makeup artist, blogger and vlogger. Guided by her expertise and eye-for-detail, Huda Kattan founded her record-breaking global brand Huda Beauty in 2013. Since then, Huda Beauty has become the No.1 Beauty Instagram account with over 20 million followers. Kattan is constantly creating ground-breaking products as she continues to build and reinvent the beauty empire.<br />\r\n\r\nExplore the entire range of Foundation available on Nykaa. Shop more Huda Beauty products here.You can browse through the complete world of Huda Beauty Foundation .<br />\r\nAlternatively, you can also find many more products from the Huda Beauty Fauxfilter Luminous Matte Full Coverage Liquid Foundation range.<br />\r\n\r\nExpiry Date: 15 March 2024<br />\r\nCountry of Origin: Italy<br />\r\nName of Mfg / Importer / Brand: Huda Beauty<br />\r\nAddress of Mfg / Importer / Brand: Huda Beauty Fz Llc, Pbu-E70 & E71, Production City, Dubai Uae, Po Box 503485<br /><br />\r\n', 'Milkshake, Angel Food, Vanilla, Panna Cotta, Cashew, Crème Brulee, Shortbread, Chai, Custard, Macaroon, Toasted Coconut, Peaches N\' Cream, Cheesecake, Latte, Apple Pie, Amaretti, Shortcake, Tres Leches, Butter Pecan, Beignet, Baklava, Dulce De Leche, Biscotti, Macchiato, Brown Sugar, Churro, Toffee, Gingerbread, Cinnamon, Chocolate Mousse, Peanut Butter Cup, Mocha, Cocoa, Nutmeg, Coffee Bean, Chocolate Truffle, Hot Fudge: Water/Aqua/Eau, Isododecane, Methyl Trimethicone, Cetyl Peg/Ppg-10/1 Dimethicone, Hdi/Trimethylol Hexyllactone Crosspolymer, Ethylene/Acrylic Acid Copolymer, Trimethylsiloxyphenyl Dimethicone, Dimethicone, Bis-Hydroxyethoxypropyl Dimethicone/Ipdi Copolymer Ethylcarbamate, Butylene Glycol Dicaprylate/Dicaprate, Glycerin, Cetyl Dimethicone, Disteardimonium Hectorite, Phenyl Trimethicone, Sorbitan Sesquioleate, Rubus Idaeus (Raspberry) Leaf Extract, Bambusa Arundinacea Stem Powder, Tocopherol, Pentaerythrityl Tetra-Di-T-Butyl Hydroxyhydrocinnamate, Caprylic/Capric Triglyceride, Di-C12-13 Alkyl Tartrate, Caprylyl Methicone, Dimethicone/Vinyl Dimethicone Crosspolymer, Dimethicone Crosspolymer, Silica, Dextrin Palmitate, Tetrasodium Edta, Sodium Chloride, Triethoxycaprylylsilane, Laureth-4, Poloxamer 338, Propylene Carbonate, Potassium Sorbate, Phenoxyethanol, Alcohol. May Contain (+/-) Mica, Titanium Dioxide (Ci 77891), Bismuth Oxychloride (Ci 77163), Iron Oxides (Ci 77492), Iron Oxides (Ci 77491), Iron Oxides (Ci 77499).', 'For the True Filter Effect:<br />\r\n- Using 1-2 pumps, apply foundation evenly all over your face with a dense brush or beauty sponge.<br />\r\n- For best results, apply with the dual ended Face | Build & Buff Foundation Brush.<br />\r\nHuda\'s Hack:<br />\r\n- For a major glow: Layer on top of Huda Beautyâ€™s N.Y.M.P.H. Liquid Highlighter by applying your chosen shade of N.Y.M.P.H. all over your face, followed by #FauxFilter Luminous Matte.<br />\r\n- For flawlessly hydrated skin: Skin needs prep but don\'t have the time? Huda Beauty Water Jelly Primer will simultaneously hydrate and smooth your skin to ensure flawless wear that feels amazing all day long.<br />\r\n- For no-makeup vibes: Next time you\'re in a rush, finish your foundation with a quick mist of Huda Beauty Glow Coco Hydrating Mist so you can set it and forget it for the rest of the day and go about your glow.', '1', '2022-01-24'),
(5, 'Makeup', 'M.A.C Retro Matte Liquid Lipcolour - Topped With Brandy', 'M.A.C', '2350', '2200', 198, 'lipcolour.jpg', 'M.A.C Retro Matte Liquid Lipcolour - Topped With Brandy', '<br />\r\nCountry of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Liquid Lipstick available on Nykaa. Shop more M.A.C products here.You can browse through the complete world of M.A.C Liquid Lipstick .<br />\r\nAlternatively, you can also find many more products from the M.A.C Retro Matte Liquid Lipcolour range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 July 2024<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Estee lauder Companies<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: the Estee Lauder Companies INC,767,fifth Avenue,NY,10153,United States of America', '', '', '1', '2022-01-24'),
(6, 'Makeup', 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 'M.A.C', '2200', '2200', 148, 'powder_kiss_lip.jpg', 'M.A.C Powder Kiss Liquid Lipcolour - Burning Love', 'Believe it when you feel it. Powder Kiss now includes a Liquid Lipcolour to give you that blurred, high-impact matte look. Experience a weightless kiss of colour delivering ten hours of moisture. It\'s whipped, mousse-like texture softly and evenly kisses lips with just the right amount of non-settling, non-flaking, comfortable colour. The special blend of vitamin E, powders and emollient properties provide excellent cushion, flexibility, wear and moisture that will leave lips looking and feeling soft and smooth all day. Features an hourglass-shaped applicator that perfectly hugs lips to fill in lines and enhance lips with a smoothing and blurring effect.<br />\r\n<br />\r\nBenefits:<br />\r\n<br />\r\n- Immediate and 10-hour moisture<br />\r\n- Long-wearing, 10 hours<br />\r\n- Blurs lines and smooths lips<br />\r\n- Soft-focus, blurred-colour effect<br />\r\n- Smooth, stay-true colour, 10 hours<br />\r\n- Non-settling, non-creasing, non-flaking, non-drying<br />\r\n<br />\r\nResearch Results:<br />\r\n<br />\r\nConsumer testing on 116 women after one week:<br />\r\n<br />\r\n- 95% said it applied smoothly onto lips<br />\r\n- 94% said it left lips feeling soft and smooth upon application<br />\r\n- 92% said it was colour-true throughout wear<br />\r\n- 91% said it left lips feeling moisturized upon application<br />\r\n<br />\r\nCountry of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Liquid Lipstick available on Nykaa. Shop more M.A.C products here.You can browse through the complete world of M.A.C Liquid Lipstick .<br />\r\nAlternatively, you can also find many more products from the M.A.C Powder Kiss Liquid Lipcolour range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 March 2023', 'Dimethicone, Dimethicone Crosspolymer, Isononyl Isononanoate, Polyglyceryl-2 Triisostearate, Diisostearyl Malate, Tribehenin, Tocopheryl Acetate, Lecithin, Ethylhexyl Palmitate, Isopropyl Myristate, Polyglyceryl-3 Polyricinoleate, Polyglyceryl-2 Diisostearate, Sorbitan Isostearate, Dehydroacetic Acid, Isostearic Acid, Polyhydroxystearic Acid, Vanillin, [+/- Mica, Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491), Iron Oxides (Ci 77492), Iron Oxides (Ci 77499), Blue 1 Lake (Ci 42090), Red 6 (Ci 15850), Red 7 (Ci 15850), Red 22 Lake (Ci 45380), Red 28 Lake (Ci 45410), Red 33 Lake (Ci 17200), Yellow 5 Lake (Ci 19140), Yellow 6 Lake (Ci 15985)]<br />\r\n<br />\r\nPlease be aware that ingredient lists may change or vary from time to time. Please refer to the ingredient list on the product package you receive for the most up to date list of ingredients.', 'Apply directly to lips as desired with the hourglass-shaped applicator that perfectly hugs lips to fill in lines and enhance lips with a smoothing and blurring effect.', '1', '2022-01-24'),
(7, 'Skin', 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', 'MURAD', '3500', '3500', 100, 'oil-pore-control-mattifier-broad-spectrum-spf-45.jpg', 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++', 'Murad Oil and Pore Control Mattifier Broad Spectrum SPF 45 | PA++++<br />\r\n', '', '', '1', '2022-01-24'),
(8, 'Skin', 'TONYMOLY Aloe 99% Chok Chok Soothing Gel', 'TONYMOLY', '400', '400', 50, 'soothing-gel.jpg', 'TONYMOLY Aloe 99% Chok Chok Soothing Gel', 'TonyMoly Aloe 99% Chok Chok Soothing Gel has been created as an instant soothing rescue for the skin, leaving it feeling calmer, cool and hydrated. This non-sticky formula is made with 99% aloe vera, great for sensitive skin. it can be used on both face and body as it instantly calms and replenishes tired skin with moisture!<br />\r\n<br />\r\n<br />\r\nKey Ingredients and Benefits:<br />\r\n<br />\r\n<br />\r\nAloe Extract: Contains antioxidants, enzymes, vitamins A and C, and it is highly anti-inflammatory.<br />\r\n<br />\r\nAbout the Brand: Born in 2006 in Seoul, TonyMoly is South Korea\'s popular beauty and skin care brand known for its high quality, innovative skin care products, trendy makeup, and irresistibly cute items that actually work. Made in Korea, these products are all natural and organic with no animal testing. Enjoy better skin with TonyMoly!<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Face Moisturizer & Day Cream available on Nykaa. Shop more TONYMOLY products here.You can browse through the complete world of TONYMOLY Face Moisturizer & Day Cream .<br />\r\n<br />\r\nExpiry Date: 15 July 2024<br />\r\n<br />\r\nCountry of Origin: South Korea<br />\r\n<br />\r\nName of Mfg / Importer / Brand: MEGACOS<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: TONYMOLY B/D 2557, Nambusunhwan-ro, Seocho-gu, Seoul, Korea', 'Camellia Sinensis Leaf Extract, Aniba Rosaeodora (Rosewood) Wood Oil, Citrus Limon (Lemon) Seed Oil, Carbomer, Alcohol, 3-O-Ethyl Ascorbic Acid, Propanediol, PEG-60 Hydrogenated Castor Oil, Ethylhexylglycerin, Disodium EDTA, Potassium Hydroxide, Phenoxyethanol', 'Apply anywhere on face and/or body that needs calming or hydration.', '1', '2022-01-24'),
(9, 'Makeup', 'Charlotte Tilbury Airbrush Flawless Finish', 'CHARLOTTE TILBURY', '4300', '4000', 70, 'airbrush_flawless_finish.jpg', 'Charlotte Tilbury Airbrush Flawless Finish', 'A super-finely milled powder that feels like cashmere on your skin, blurring the look of lines and imperfections for a soft focus-finish. Sweet almond oil and rose wax help to promote smoothness and moisture of the skin. Airbrush Flawless Finish Powder features nourishing ingredients to prevent excess shine and brighten the look of your complexion. It gives your skin a long-lasting, soft-focus airbrushed looking finish. You can use the powder on its own to mattify oily areas or on top of your concealer and foundation to set and perfect.<br />\r\n<br />\r\nSupercharged Ingredients:<br />\r\n<br />\r\n- Rose Wax (Rosa multiflora flower wax): Extracted from the flowers of the Multiflora Rose, the wax helps to nourish and moisturise the skin.<br />\r\n- Almond Oil (Prunus Amygdalus dulcis (sweet almond) oil: A vegetable oil containing oleic acid, with softening and moisturising properties.<br />\r\n- Light-reflecting Pearls: Pearlescent pigments diffuse light at it hits your face in such a way that it helps to luminate the complexion.<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Compact available on Nykaa. Shop more Charlotte Tilbury products here.You can browse through the complete world of Charlotte Tilbury Compact .<br />\r\nAlternatively, you can also find many more products from the Charlotte Tilbury Airbrush Flawless Finish range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 May 2023<br />\r\n<br />\r\nCountry of Origin: Italy<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Charlotte Tilbury<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 8 Surrey Street, London, WC2R 2ND, United Kingdom.', 'Talc, Mica, Polymethyl Methacrylate, Dimethicone, Silica, Pentaerythrityl Tetraisostearate, Cetearyl Ethylhexanoate, Zinc Stearate, Zea Mays (Corn) Starch, Chlorphenesin, Potassium Sorbate, Tocopheryl Acetate, Pei-10, Propylene Glycol, Prunus Amygdalus Dulcis (Sweet Almond) Oil, Rosa Multiflora Flower Wax, Tetrasodium Edta, Water, Dimethiconol, Tilia Cordata Flower Extract (Tilia Cordata Extract), Methylparaben, Ethylparaben, Propylparaben, Butylparaben, [May Contain/Peut Contenir (+/-): Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77491, Ci 77492, Ci 77499)].', '- Using the Powder & Sculpt Brush, apply Airbrush Flawless Finish Setting Powder around the nose, T-zone and any other oily areas that need to be mattified.<br />\r\n- This can be used on top of Magic Away Concealer or any Foundations to set them.', '1', '2022-01-24'),
(10, 'Makeup', 'e.l.f. Cosmetics Bite Size Eyeshadow - Cream & Sugar', 'E.L.F', '280', '280', 130, 'bite_size_eyeshadow.jpg', 'e.l.f. Cosmetics Bite Size Eyeshadow - Cream & Sugar', 'e.l.f. Bite Size Eyeshadow Palette delivers mini eye magic in a perfect size. The luxe formula is creamy, blendable, and ultra-pigmented. Each palette includes four beautiful, complimenting shades perfect to create any desired eyelook. Get professional-quality eye looks with these versatile palettes.<br />\r\n<br />\r\nFeatures:<br />\r\n<br />\r\n4-pan eyeshadow palette with ultra-pigmented shades<br />\r\nFeatures a mix of matte and shimmer shades<br />\r\nThe smooth formula is blendable and weightless<br />\r\nPerfect size for your purse and travel<br />\r\nFree from parabens, phthalates and harmful chemicals<br />\r\nThis product is vegan and cruelty-free<br />\r\nAbout the Brand: Celebrating the beauty of every eye, lip and face is fundamental to e.l.f. It’s in the brand\'s name and inspires the company. e.l.f believes in a world where everyone can own their beauty, without compromise. All formulas are 100% vegan, no animal testing and made without the nasty bad-for-you stuff. Totally guilt-free. All e.l.f. products are free from phthalates, parabens, nonylphenol ethoxylates, triclosan, triclocarban, and hydroquinone. All skincare products are also free from sulfates.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Eye Shadow available on Nykaa. Shop more e.l.f. Cosmetics products here.You can browse through the complete world of e.l.f. Cosmetics Eye Shadow .<br />\r\nAlternatively, you can also find many more products from the e.l.f. Cosmetics Bite Size Eyeshadow range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 September 2023<br />\r\n<br />\r\nCountry of Origin: China<br />\r\n<br />\r\nName of Mfg / Importer / Brand: e.l.f. Cosmetics<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: e.l.f. Beauty, Inc. 570 10th Street, Oakland, CA 94607', 'Cream & Sugar - Mica, Talc, Caprylic/Capric Triglyceride, Synthetic Fluorphlogopite, Magnesium Myristate, Nylon-12, Tridecyl Trimellitate, Silica, Magnesium Stearate, Magnesium Palmitate, Dimethicone, Bismuth Oxychloride, Bis-Diglyceryl Polyacyladipate-1, Dimethicone/Vinyl Dimethicone Crosspolymer, Aluminum Starch Octenylsuccinate, Phenyl Trimethicone, Polyisobutene, Phenoxyethanol, Caprylyl Glycol, Tin Oxide May Contain: Titanium Dioxide (CI 77891), Iron Oxides (CI 77491), Iron Oxides (CI 77499), Iron Oxides (CI 77492)<br />\r\n<br />\r\n<br />\r\n<br />\r\nBerry Bad - Mica, Talc, Caprylic/Capric Triglyceride, Magnesium Myristate, Nylon-12, Silica, Magnesium Palmitate, Magnesium Stearate, Dimethicone, Tridecyl Trimellitate, Calcium Aluminum Borosilicate, Boron Nitride, Aluminum Starch Octenylsuccinate, Bis-Diglyceryl Polyacyladipate-1, Phenyl Trimethicone, Phenoxyethanol, Polyisobutene, Dimethicone/Vinyl Dimethicone Crosspolymer, Caprylyl Glycol, Triethoxycaprylylsilane, Tin Oxide May Contain: Iron Oxides (CI 77491), Ultramarines (CI 77007), Lake of Allura Red (CI 16035:1), Titanium Dioxide (CI 77891), Iron Oxides (CI 77499), Iron Oxides (CI 77492)<br />\r\n<br />\r\n<br />\r\n<br />\r\nTruffles - Talc, Mica, Caprylic/Capric Triglyceride, Synthetic Fluorphlogopite, Nylon-12, Dimethicone, Silica, Magnesium Stearate, Magnesium Palmitate, Tridecyl Trimellitate, Phenoxyethanol, Aluminum Starch Octenylsuccinate, Bis-Diglyceryl Polyacyladipate-1, Phenyl Trimethicone, Dimethicone/Vinyl Dimethicone Crosspolymer, Caprylyl Glycol, Polyisobutene, Tin Oxide. May Contain: Titanium Dioxide (CI 77891), Iron Oxides (CI 77491), Iron Oxides (CI 77492), Iron Oxides (CI 77499), Ultramarines (CI 77007), Black 2 (CI 77266), Manganese Violet (CI 77742), Lake of Allura Red (CI 16035:1)<br />\r\n<br />\r\n<br />\r\n<br />\r\nRose Water - Mica, Talc, Synthetic Fluorphlogopite, Caprylic/Capric Triglyceride, Boron Nitride, Silica, Magnesium Stearate, Magnesium Palmitate, Tridecyl Trimellitate, Nylon-12, Magnesium Myristate, Dimethicone, Bis-Diglyceryl Polyacyladipate-1, Phenyl Trimethicone, Polyisobutene, Phenoxyethanol, Caprylyl Glycol, Triethoxycaprylylsilane, Tin Oxide May Contain: Iron Oxides (CI 77499), Iron Oxides (CI 77491), Titanium Dioxide (CI 77891), Manganese Violet (CI 77742), Iron Oxides (CI 77492)<br />\r\n<br />\r\n<br />\r\n<br />\r\nCarnival Candy - Mica, Talc, Caprylic/Capric Triglyceride, Nylon-12, Magnesium Myristate, Silica, Dimethicone, Synthetic Fluorphlogopite, Dimethicone/Vinyl Dimethicone Crosspolymer, Magnesium Stearate, Magnesium Palmitate, Bismuth Oxychloride, Tridecyl Trimellitate, Phenoxyethanol, Bis-Diglyceryl Polyacyladipate-1, Phenyl Trimethicone, Aluminum Starch Octenylsuccinate, Caprylyl Glycol, Polyisobutene, Tin Dioxide May Contain: Titanium Dioxide (CI 77891), Iron Oxides (CI 77491), Iron Oxides (CI 77492), Ferric Ferrocyanide (CI 77510), Black 2 (CI 77266 ), Lake of Allura Red (CI 16035:1)<br />\r\n<br />\r\n<br />\r\n<br />\r\nPumpkin Pie - Mica, Talc, Caprylic/Capric Triglyceride, Magnesium Myristate, Nylon-12, Silica, Tridecyl Trimellitate, Magnesium Stearate, Magnesium Palmitate, Dimethicone, Boron Nitride, Bis-Diglyceryl Polyacyladipate-1, Aluminum Starch Octenylsuccinate, Phenyl Trimethicone, Phenoxyethanol, Polyisobutene, Dimethicone/Vinyl Dimethicone Crosspolymer, Caprylyl Glycol, Triethoxycaprylylsilane May Contain: Iron Oxides (CI 77491), Iron Oxides (CI 77499), Iron Oxides (CI 77492), Titanium Dioxide (CI 77891), Lake of Allura Red (CI 16035:1), Ultramarines (CI 77007), Ferric Ferrocyanide (CI 77510)', 'Apply a light shade all over the eyelid with an eyeshadow brush.<br />\r\nApply a medium complementary shade in the crease of the eye, and blend out to contour.<br />\r\nThen apply the darkest shade along the lash line in outer corners of the eyes for added depth and a smokey effect.<br />\r\nFor a metallic effect, apply shimmer eyeshadows with a damp brush.', '1', '2022-01-24'),
(11, 'Makeup', 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 'KAY BEAUTY', '599', '599', 250, 'crayon_lipstick.jpg', 'Kay Beauty Matteinee Matte Lip Crayon Lipstick', 'Kay Beauty Matteinee lip crayon combines unrivalled 18 hour long stay and extreme matte finish with ultra comfort. This smudge proof lip crayon delivers a high colour payoff while feeling weightless on the lips making your lips feel feathery soft and light. The overachieving lip crayon is 100% waterproof & sweatproof so your lip hue stays intact when the sun goes up. Enriched with the miraculous Marula & good for you Chamomile oil, the lip crayon ensure to keep your lips well hydrated and nourished while you are looking glam. Housed in Kay’s classic monogram, it comes in 24 attractive shades from barely there nudes to high drama hues, specially curated for all Indian beauties.<br />\r\n<br />\r\nWhy make it yours?<br />\r\nMade In Europe<br />\r\nExtreme Rich Matte Finish<br />\r\n18 Hour Long Stay<br />\r\nWeightless Formula<br />\r\n100% Waterproof & Sweatproof<br />\r\nChamomile & Marula Oil For Intense Hydration<br />\r\nThese 24 shades are specially curated by Katrina to suit all Indian skin tones. So,say hello to these pretty chic, high performance shades of Kay Lip Crayon that will look perfect on your cupid’s bow or outline your lip line with these super flattering shades.<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Lipstick available on Nykaa. Shop more Kay Beauty products here.You can browse through the complete world of Kay Beauty Lipstick .<br />\r\nAlternatively, you can also find many more products from the Kay Beauty Matteinee Matte Lip Crayon Lipstick range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 February 2024<br />\r\n<br />\r\nCountry of Origin: Germany<br />\r\n<br />\r\nName of Mfg / Importer / Brand: NYKAA-KK BEAUTY PRIVATE LTD<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: 104 Vasan Udyog Bhavan Sun Mill Compound Senapati Bapat Marg, Lower Parel, Mumbai City Maharashtra - 400013', '', '', '1', '2022-01-24'),
(12, 'Makeup', 'Lakme Absolute Skin Natural Mousse - Golden Light 04', 'LAKME', '495', '490', 200, 'mousse-foundation.jpg', 'Lakme Absolute Skin Natural Mousse - Golden Light 04', 'Explore the entire range of Foundation available on Nykaa. Shop more Lakme products here.You can browse through the complete world of Lakme Foundation .<br />\r\nAlternatively, you can also find many more products from the Lakme Absolute Skin Natural Mousse Mattreal Foundation range.<br />\r\n<br />\r\n<br />\r\nExpiry Date: 15 September 2023<br />\r\n<br />\r\nCountry of Origin: India<br />\r\n<br />\r\n', '', 'Prepare skin with Undercover Gel Primer.<br />\r\nTake your index finger and dip it into the mousse foundation.<br />\r\nDab the product lightly on your face. Blend in the product using your fingers or a foundation brush.<br />\r\nApply concealer and compact to finish the look.', '1', '2022-01-24'),
(13, 'Skin', 'PIXI Botanical Collagen & Retinol Serum', 'PIXI', '2550', '2500', 100, 'collagen-retinol-serum.jpg', 'PIXI Botanical Collagen & Retinol Serum', 'Pixi Collagen and Retinol Serum is a unique concentrated formula consisting of collagen, retinol and vitamins to help restore the skin\'s natural plumpness and elasticity. This lightweight serum helps improve the appearance of fine lines and helps restore the skin\'s radiance.<br />\r\n<br />\r\n<br />\r\nProduct Details:<br />\r\n<br />\r\n- Helps to soften fine lines and revive skin\'s natural radiance.<br />\r\n- Acacia collagen plumps and boosts elasticity<br />\r\n- Retinol smoothes and refines the appearance of the skin<br />\r\n- Chamomile delivers a calming effect<br />\r\n- Suitable for all skin types<br />\r\n- Paraben free<br />\r\n- Not tested on animals<br />\r\n<br />\r\nAbout the Brand: Get a gorgeous radiant complexion with Pixi\'s range of glow-giving skincare solutions. Pixi has a loyal worldwide following thanks to its pure, awakening & skin-loving products that create a naturally radiant \"just had a good night\'s sleep\" look.<br />\r\n<br />\r\nDesigned by Petra Strand, who boasts over 20 years experience as a makeup artist and product developer, Pixi was first launched in its flagship boutique in the heart of Soho, London. Passionate about skincare, Petra creates innovative formulas that are infused with botanicals and beneficial ingredients to give skin a healthy, youthful-looking glow. The brand says its mission is the same now as it was on the first day the Pixi store opened, which is to simply bring out the natural beauty in all women and to ensure they look like themselves, only better!<br />\r\n<br />\r\n<br />\r\n<br />\r\nExplore the entire range of Serums & Essence available on Nykaa. Shop more PIXI products here.You can browse through the complete world of PIXI Serums & Essence .<br />\r\n<br />\r\nExpiry Date: 15 March 2026<br />\r\n<br />\r\nCountry of Origin: United States of America (the)<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Pixi PTE Ltd<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: Scotts Road, Singapore\r\n<br/>', 'Key Ingredients:<br />\r\n<br />\r\n- Acacia Collagen plumps and boosts elasticity<br />\r\n- Retinol smoothes and refines<br />\r\n- Chamomile calms and soothes<br />\r\n<br />\r\nFull Ingredient List: Aqua/Water/Eau, Glycerin, Acacia Seyal Gum Extract, Retinol, Methyl Methacrylate/Glycol Dimethacrylate Crosspolymer, Acetyl Heptapeptide-4, Niacinamide, Rosmarinus Officinalis (Rosemary) Extract, Anthemis Nobilis (Chamomile) Extract, Ascorbic Acid, Tocopheryl Acetate, Citric Acid, Carbomer, Potassium Sorbate, Hydroxyethyl Cellulose, Caprylyl Glycol, Disodium EDTA, Propyl Gallate, BHT.\r\n<br/>', '- Use daily.<br />\r\n- Massage 2-3 drops onto cleansed, toned skin before moisturizer.\r\n<br/>', '1', '2022-01-24'),
(14, 'Makeup', 'M.A.C Prep + Prime Fix+ - Original', 'M.A.C', '1900', '1900', 250, 'fixer.jpg', 'M.A.C Prep + Prime Fix+ - Original', 'Country of Origin: Belgium / Canada / Czech Republic / Dominican Republic / France / Germany / Italy / Japan / South Korea / Mexico / North Macedonia / Poland / Switzerland<br />\r\n<br />\r\n<br />\r\nAlternatively, you can also find many more products from the M.A.C Prep + Prime Fix+ range.<br />\r\n<br />\r\nExpiry Date: 15 December 2023<br />\r\n<br />\r\nName of Mfg / Importer / Brand: Estee lauder Companies<br />\r\n<br />\r\nAddress of Mfg / Importer / Brand: the Estee Lauder Companies INC,767,fifth Avenue,NY,10153,United States of America', '', '', '1', '2022-01-24'),

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
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_order_detail`
--
ALTER TABLE `user_order_detail`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_master`
--
ALTER TABLE `order_master`
  ADD CONSTRAINT `order_master_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
