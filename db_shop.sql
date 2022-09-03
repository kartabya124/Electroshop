-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 01:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_rating`
--

CREATE TABLE `item_rating` (
  `ratingId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ratingNumber` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Block, 0 = Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_rating`
--

INSERT INTO `item_rating` (`ratingId`, `itemId`, `userId`, `ratingNumber`, `title`, `comments`, `created`, `modified`, `status`) VALUES
(14, 12345678, 1, 2, 'its awesome', 'It\'s awesome!!!', '2018-08-19 09:13:01', '2018-08-19 09:13:01', 1),
(15, 12345678, 2, 5, 'Nice product', 'Really quality product!', '2018-08-19 09:13:37', '2018-08-19 09:13:37', 1),
(16, 12345678, 3, 1, 'best buy', 'its\'s best but item.', '2018-08-19 09:14:19', '2018-08-19 09:14:19', 1),
(17, 12345678, 4, 1, 'super awesome ', 'i think its supper products', '2018-08-19 09:18:00', '2018-08-19 09:18:00', 1),
(22, 12345679, 5, 1, 'adada', 'daDad', '2019-01-20 17:00:58', '2019-01-20 17:00:58', 1),
(23, 12345678, 5, 5, 'Nice product', 'this is nice!', '2019-01-20 17:01:37', '2019-01-20 17:01:37', 1),
(24, 12345679, 3, 1, 'really nice', 'Good!', '2019-01-20 21:06:48', '2019-01-20 21:06:48', 1),
(25, 0, 3, 4, 'adam Review', 'not best product', '2022-08-26 13:11:38', '2022-08-26 13:11:38', 1),
(26, 106, 3, 5, 'adam', 'this is best', '2022-08-26 13:12:53', '2022-08-26 13:12:53', 1),
(27, 90, 2, 4, 'best buy ever', 'this is the best buy ever', '2022-08-26 13:27:41', '2022-08-26 13:27:41', 1),
(28, 87, 2, 1, 'hello', 'best buy ever', '2022-08-26 13:31:00', '2022-08-26 13:31:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `lavel` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `lavel`) VALUES
(1, 'Delwar J Imran', 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Samsung'),
(2, 'Nokia'),
(3, 'Iphone'),
(4, 'Canon'),
(5, 'Acer'),
(6, 'Nikkon'),
(7, 'iMac'),
(8, 'Windows'),
(9, 'Konka'),
(10, 'MI'),
(11, 'Lenovo'),
(12, 'hp'),
(13, 'Acer'),
(14, 'Redmi'),
(15, 'Infinix'),
(16, 'POVA'),
(17, 'Motorola'),
(18, 'Kaspersky'),
(19, 'Mcafee'),
(20, 'Quick Heal'),
(21, 'Hula Hoop'),
(22, 'Amazfit'),
(23, 'Xiaomi'),
(24, 'Dell'),
(25, 'Beelink'),
(26, 'Joypad'),
(27, 'Ucom'),
(28, 'Nintendo'),
(29, 'Sirius'),
(30, 'Xbox 360 '),
(31, 'Rowa'),
(32, 'Ingco'),
(33, 'Estufa'),
(34, 'Smile'),
(35, 'Recci'),
(36, 'Motorola'),
(37, 'X7'),
(38, 'K7'),
(39, 'Eset'),
(40, 'Norton'),
(41, 'Smart Watch'),
(42, 'Stop Watch'),
(43, 'Handle'),
(44, 'Revoflex');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(16, 'Home Appliances'),
(17, 'Camera'),
(18, 'Gaming Console'),
(19, 'Wearables'),
(20, 'Sports & Fitness'),
(21, 'Anti-virus Software'),
(22, 'Mobile Accessories'),
(23, 'Laptop'),
(24, 'Desktop Computer'),
(25, 'Mobile Phones');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Delwar J Imran', 'Malibagh, Dhaka', 'Dhaka', 'Bangladesh', '1219', '01974353555', 'monirdhk.it@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'santoshi magar', 'sorakhutte', 'kathmandu', 'nepal', '4466', '9818065650', 'santoshimagar@gmail.com', 'magar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(13, 1, 10, 'Camera', 3, 1650, 'upload/c769967566.jpg', '2018-03-02 12:29:03', 1),
(14, 2, 90, 'i7 Pro Max Smart Watch Hi WatchPro 7 For Men &amp; Women', 1, 4000, 'upload/1ed8b1b784.jpg', '2022-08-26 08:23:54', 0),
(15, 2, 87, 'Samsung Galaxy A2 5000mAh Battery 48MP Camera Smart Phone', 1, 30000, 'upload/7299991aa3.jpg', '2022-08-26 08:23:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(11, 'Canon EOS 1500D/2000D 24.2 MP DSLR Camera', 17, 4, 'Product details of Canon EOS 1500D/2000D 24.2 MP DSLR Camera With EF-S18-55 IS (16 Gb Card )- Black\r\nSensor: APS-C CMOS Sensor with 24.1 MP (high resolution for large prints and image cropping)\r\nISO: 100-6400 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: DIGIC 4+ with 9 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-in (useful for remotely controlling your camera and transferring pictures wirelessly as you shoot)\r\nLens Mount: EF-S mount compatible with all EF and EF-S lenses (crop-sensor mount versatile and compact, especially when used with EF-S lenses', 25000, 'upload/196dea9583.jpg', 0),
(12, 'Nikon D5600 + Af-P 18-55 Vr Dslr Camera', 17, 6, 'Sensor: APS-C CMOS sensor with 24.2 MP (high resolution for large prints and image cropping)\r\nISO: 100-25600 sensitivity range (critical for obtaining grain-free pictures, especially in low light)\r\nImage Processor: Expeed 4 with 39 autofocus points (important for speed and accuracy of autofocus and burst photography)\r\nVideo Resolution: Full HD video with fully manual control and selectable frame rates (great for precision and high-quality video work)\r\nConnectivity: WiFi, NFC and Bluetooth built-in (useful for remotely controlling your camera and transferring pictures wirelessly as you shoot)\r\nLens Mount: Nikon F mount, Dust-Off Reference Photo: Yes ; Dust-reduction system: Image sensor cleaning, Image Dust Off reference data (Capture NX-D software required) ; Operating environment: Temperature: 0 °C to 40 °C (+32 °F to 104 °F) Humidity: 85% or less (no condensation)', 26000, 'upload/93a97e6e67.jpg', 1),
(15, 'Canon EOS 200D II 24.1MP Digital SLR Camera', 17, 4, 'DIGIC 8 PROCESSOR\r\nAPS-C Approx 24.1 mp CMOS Sensor\r\n9-point AF during optica viewfinder shooting\r\nDual Pixel CMOS AF\r\nEye detection AF\r\nDoesn’t include memory card and carry case / camera bag\r\n4K Movie, Closest Focusing Distance (cm): 25', 20000, 'upload/4dea9dbea5.jpg', 1),
(16, 'Canon 90D Digital SLR Camera', 17, 4, '32.5 Megapixel APS-C CMOS sensor with Dual Pixel autofocus (live view/video)\r\n45-point all cross-type AF (through the viewfinder) and 220k-pixel metering sensor w/face detection\r\n7 fps burst shooting w/continuous AF and Fully articulating 3&quot; touchscreen display\r\nOptical viewfinder w/100% coverage and 4K/30p video capture with no crop\r\nUSB 2.0 port with Micro USB connector and Wi-Fi + Bluetooth\r\nCountry of Origin: Japan', 30000, 'upload/87dfd3c0f6.jpg', 1),
(17, 'Canon Eos 250D 24.1Mp Digital Slr Camera', 17, 4, 'DIGIC 8 PROCESSOR\r\nAPS-C Approx 24.1 mp CMOS Sensor\r\n9-point AF during optica viewfinder shooting\r\nDual Pixel CMOS AF\r\nEye detection AF\r\nItem comes with a 16GB Memory card\r\n4K Movie', 30000, 'upload/6e370b8d16.jpg', 1),
(18, 'CANON EOS250D 18-55 III KIT', 17, 4, 'DIGIC 8 PROCESSOR\r\nAPS-C Approx 24.1 mp CMOS Sensor\r\n9-point AF during optica viewfinder shooting\r\nDual Pixel CMOS AF\r\nEye detection AF\r\nItem comes with a 16GB Memory card\r\n4K Movie', 27000, 'upload/fe0193f858.jpg', 1),
(19, 'Canon EOS 3000D 18.0 MP DSLR Camera', 17, 4, 'Brand : Canon\r\nModel Number: EOS 3000D\r\nSLR Variant : Body with Single Lens: EF-S18-55 IS(16 GB SD Card )\r\nBrand Color : Black\r\nType : DSLR\r\nEffective Pixels : 18.0 MP\r\nCompact and Lightweight design\r\nWi-Fi/NFC low energy\r\nItem comes with a 16GB Memory card', 26000, 'upload/b7a60d4fc5.jpg', 1),
(20, 'Canon EOS 850D EF-S 18-55mm is STM Kit Digital Camera', 17, 4, '&lt;p&gt;Optical Viewfinder with a 45-point All Cross-type AF System* with Face Detection. High Image Quality with 24.1 Megapixel CMOS (APS-C) Sensor. High-Speed Continuous Shooting of up to 7.0 fps. 4K 24p along with Vertical Video. Turn your VIXIA camcorder into a high-quality webcam using its clean HDMI output.&lt;/p&gt;', 28000, 'upload/d754442eb2.jpg', 1),
(21, 'Apple iMac - MacBook Desktop Laptop', 24, 7, '7-Core GPU\r\n256GB storage\r\n8GB unified memory\r\n24-inch 4.5K Retina display\r\nTwo Thunderbolt / USB 4 ports\r\nMagic Keyboard In the box:\r\niMac\r\nMagic Keyboard\r\nMagic Mouse\r\n143W power adapter\r\nPower cord (2 m)\r\nUSB-C to Lightning Cable', 88000, 'upload/b67b78c183.jpg', 0),
(22, 'Apple iMac 24Inch MackBook Desktop Laptop EvoStore', 24, 7, '&lt;p&gt;8-Core CPU 8-Core GPU 512GB storage 8GB unified memory 24-inch 4.5K Retina display Two Thunderbolt / USB 4 ports Two USB 3 ports Gigabit Ethernet Magic Keyboard with Touch ID&lt;/p&gt;', 89000, 'upload/650e35d92b.jpg', 1),
(23, 'Dell I5 4th Generation Desktop Pc Set', 24, 24, 'Brand :- Dell\r\nProcessor :- Intel i5 4th Generation\r\nRAM &amp; Storage :- 4/500 GB\r\nMonitor :- Dell 19 Inch\r\nKeyboard :- Dell\r\nMouse :- Dell', 78000, 'upload/80989e3a63.jpg', 1),
(24, 'Dell I5 4th Generation Desktop Pc Set', 24, 24, 'Brand :- Dell\r\nProcessor :- Intel i5 4th Generation\r\nRAM &amp; Storage :- 4/500 GB\r\nMonitor :- Dell 19 Inch\r\nKeyboard :- Dell\r\nMouse :- Dell', 78000, 'upload/8f78da3b82.jpg', 1),
(25, 'Beelink T4 Pro Mini PC Windows 10 Desktop Computer', 24, 25, 'Brand: Beelink\r\nModel: T4 Pro\r\nType: Thin T Series Mini PC\r\nSystem: Windows 10 Pro\r\nCPU: Intel Apollo Lake Processor N3350 (2M Cache, Up to 2.24Ghz)\r\nCore: Quad-Core\r\nGPU: Intel HD Graphics\r\nRAM: 4GB LPDDR3 1600MHz\r\nROM: 64GB eMMC\r\nWifi: Yes\r\nDual WIFI : 802.11 b/g/n/ac ; 2.4G / 5G\r\nBluetooth: Yes (Bluetooth 4.0)\r\nSupports 4k Output\r\nSupport Dual Screen\r\nLan/Ethernet: Gigabit Network 1000Mbps\r\nMax. Extended Capacity: TF Card Up To 128GB\r\nSize: 106 X 106 X 18 MM\r\nPower: DC 12V, 1.5A (24 Watt)', 56000, 'upload/ccc28ca5d4.jpg', 1),
(26, 'Beelink T4 Pro Mini PC Windows 10 Desktop Computer', 24, 25, 'Brand: Beelink\r\nModel: T4 Pro\r\nType: Thin T Series Mini PC\r\nSystem: Windows 10 Pro\r\nCPU: Intel Apollo Lake Processor N3350 (2M Cache, Up to 2.24Ghz)\r\nCore: Quad-Core\r\nGPU: Intel HD Graphics\r\nRAM: 4GB LPDDR3 1600MHz\r\nROM: 64GB eMMC\r\nWifi: Yes\r\nDual WIFI : 802.11 b/g/n/ac ; 2.4G / 5G\r\nBluetooth: Yes (Bluetooth 4.0)\r\nSupports 4k Output\r\nSupport Dual Screen\r\nLan/Ethernet: Gigabit Network 1000Mbps\r\nMax. Extended Capacity: TF Card Up To 128GB\r\nSize: 106 X 106 X 18 MM\r\nPower: DC 12V, 1.5A (24 Watt)', 56000, 'upload/8b4730edaf.jpg', 1),
(27, 'Wired Double Shock Gamepad Joystick Joypad Pc Controller', 18, 26, '&lt;p&gt;Easy to connect with USB cable, plug and play Lightweight, compact and convenient to handle and carry 3D ergonomic design and rational structure Grip built-in vibration motor, can be expressed delicate vibration effects&lt;/p&gt;', 10000, 'upload/f8b45bae52.jpg', 0),
(28, 'Ucom Joystick Video Game PC Gaming Controller', 18, 27, 'Description:\r\nErgonomically shaped for comfort and control during play.\r\nComfortable design with familiar button layout, this Black USB Game pad provides you with realistic feeling.\r\nSimple and easy to use, hot plug and play function.\r\nThe USB Game Controller is compatible with USB 1.0/1.1/2.0/3.0 version.\r\nLightweight design.\r\nThe Black USB Joystick supports PC games.\r\nThe Black Joystick is designed with non-slip handles and non-shock function\r\nSupporting multi-players game\r\nUsing the cross direction key to play more accurately and durably\r\nAdding veins to be sweat-proof and nonslip and play more comfortably\r\nIndividual Turbo, Auto and Clear functions', 4500, 'upload/d2d2ae2cc1.jpg', 1),
(30, 'Nintendo DS Charger', 18, 28, 'NDS Lite only; Not compatible with Nintendo 3DS/ 3DSXL/ DSI/ DSIXL\r\nCharger: input: 100 V - 240 V and 50 - 60 Hz output: DC 4.6 V 900 mA\r\nCable length is 112 cm/ 44 inches the head box size is 6.5 x 4.7 cm/ 2.6 x 1.6 inch\r\nCollapsible design and portable: Nintendo adapter charger features fold-away plug\r\nflexible to turn to fold light and handy for travel and storage\r\nSimple usage: AC wall charger for Nintendo DS Lite handheld devices\r\nSafe and secure: with intelligent IC chip inside to protect from over voltage\r\nover current and short circuit by the way of automatically switching to a save mode', 6000, 'upload/ea7868ee2b.jpg', 1),
(31, 'Ucom Pc Dual Shock Joypad Wired USB Gaming Controller', 18, 27, 'Product details of Ucom Pc Dual Shock Joypad Wired USB Gaming Controller BlackIdeal controller to play games on PC or Laptop.\r\nComfortable design with familiar buttons\r\nProvide you with realistic feeling Vibration Function support dual shock game\r\nSupport PC USB 2.0/1.1/1.0\r\nThey are compatible with all operating systems.', 8000, 'upload/ec464e9b8f.jpg', 1),
(33, 'Lanjue L3000 Sirius Usb Joystick Gamepad Controller', 18, 29, 'USB Interface\r\nAnalog &amp; digital Mode\r\nCompatible with Windows 9X,ME, XP, Vista, 7\r\nDual Vibration Motors\r\nErgonomic Comfortable handgrip design', 8900, 'upload/349dcef389.jpg', 1),
(35, 'Microsoft Xbox 360 Wired Controller for Windows', 18, 30, 'Play in comfort - A compact, ergonomic shape lets you play comfortably for hours on your PC or Xbox 360\r\nVibration feedback gives you a riveting gaming experience\r\nPrecise thumb sticks, two pressure-point triggers and an 8-way directional pad help you stay in control\r\nConnectivity: Powered USB port\r\nFlexible cord: The thin, flexible cord was designed to provide the sensation of wireless with all the performance of a wire', 9800, 'upload/c5036b62ad.jpg', 1),
(36, 'Sirius Usb Joystick Gamepad Controller for Pc And Laptop', 0, 0, '8-Way direction button and 10 fire button + slow button\r\nDouble vibration/Shock Function\r\nAnalog and digital mode key and Anti-skin and comfortable hand grip\r\nInterface: USB 2.0, backward compatible wit', 7800, 'upload/15a1286931.jpg', 1),
(37, 'Konka 2 Burner Automatic Glass Top Gas Stove', 16, 9, 'Sturdy Pan Support\r\nBrass Burner\r\nSuperior Toughened Glass\r\nHigh Efficiency Brass Burners\r\nAnti-Leak Testing Standards\r\nUnbreakable Knobs\r\nSpill-Proof Ergonomically Designed\r\nBlue Flame\r\nItalian Valves\r\nColour Coated Drip Trays\r\n85 x50 x15 cm', 15000, 'upload/ad9af3d1c8.jpg', 0),
(39, 'EP ROWA RDVC15L 1800W Wet &amp; Dry Drum Vacuum Cleaner', 16, 31, 'Brand: Rowa\r\nModel No.: RDVC15L1800W\r\nWet &amp; Dry\r\nTools on Board\r\nBlower Function\r\n360 Degree Rotated WHeels For Easy Moving\r\nFriendly Handle For Clean Releasing Dust\r\nHigh Efficiency Particulate Air (HEPA) Filter\r\nOne Year Company Warranty', 18000, 'upload/3f0357ce29.jpg', 1),
(41, 'Ingco Brand VC14122 Wet And Dry Vacuum Cleaner With 800 Watts Powerful Suction', 16, 32, 'Voltage: 220V-240V~50/60Hz\r\nInput power: 800W\r\nCopper wire motor\r\nMetal tank\r\nDust capacity:12L\r\nAir flow:1.7m3/min\r\nVacuum pressure:16KPa\r\n1.5m flexible hose\r\nPlastic three parts tube\r\n1pcs plastic floor brush\r\n1set 2 in 1 brush\r\n2.3m cord length\r\nHEPA fliter\r\nWet and dry cleaning\r\nPacked by carton box', 17500, 'upload/1911896ae3.jpg', 1),
(42, 'Geek Estufa IC6 2200W Smart Induction Cooktop', 16, 33, 'COOK WHEN NO GAS : Cook flameless using Geek IC6 smart Induction stove featured with 7 Indian preset menu options and additional manual control. This BIS certified cooktop holds high safety standards that ensures you a safe cooking.\r\nPERFECT CONTROL : Built with 4 inner sensor for accurate temperature control and efficient cooking. Added advantage, slow cook, set timer – auto off, keep warm your favorite dishes adjusting 10 different power level. 1.5KV surge pass handles bad electricity situation.\r\nEFFICIENT COOKING WITH MINIMUM POWER : Geek Estufa consumes 2200W maximum power for fast and uniform cooking. Low 150W power instant heating makes you prepare rottis /dosas/ milk perfect without burning. 400W Consistent heat supply ensures no heat loss and works energy efficient.\r\nPREMIUM DESIGN : High quality crystallite glass for greater durability. Feather touch button with LED display panel makes comfort in adjusting temperature. Prevent yourself from burnt fingers with Geek’s cool to touch surface.\r\nGeek IC6 electric cooktop suits wide range of materials and allows steaming, boiling, frying, roasting on it.', 19500, 'upload/6b7317f718.jpg', 1),
(44, 'Smile 2000W Electric Fan Heater Warm As Well As Cold For Summer', 16, 34, 'Dual usodi -a cold and heat, you can be used no matter in summer or winter\r\nSits horizontally or stands vertically; 2 heat settings: 1000w/2000w\r\nVariable thermostat; Cool blow function; Power indicator; \'Frost Watch\' protection\r\nLightweight; Flame retardant plastic; Automatic safety cut-off &amp; Lightweight\r\nDimensions: H 24 x W 24.5 x D 12 cm; Colour: white', 24000, 'upload/21b9b5c7fa.jpg', 1),
(45, 'Mi Notebook Pro QHD+ IPS Anti Glare Display Intel Core Laptop', 23, 10, 'Mi Notebook Pro (I5) 14 inch IPS QHD+ resolution (2560x1600)\r\n16:10 aspect ratio; 215 PPI, 1000:1 contrast ratio Anti Glare\r\nTUV low Blue light 11th Gen Intel Tiger Lake Core i5-11300H processor\r\nSpeed: 3.1 GHz(base) - 4.4 GHz(max) \r\n16 GB RAM 512GB SSD Windows 10 Home\r\nMicrosoft Office Home and Student 2019 Intel Iris Xe graphics\r\nAll Metal Design\r\nBluetooth V5.1 \r\nBrand New Laptop', 76000, 'upload/660d71cfb8.jpg', 0),
(46, 'Lenovo IP 1 Genuine Lenovo IdeaPad Notebook', 23, 11, 'Full HD\r\n1920 x 1080\r\nIntel Celeron N4020 Dual-core (2 Core) 1.10 GHz\r\n4 GB RAM\r\n128 GB SSD (Upgradable)\r\nIntel Chip\r\nIntel UHD Graphics 600\r\n8 Hour Battery Run Time\r\nIEEE 802.11ac Wireless LAN Standard\r\nWindows 11 Genuine\r\nBrand New Laptop', 89000, 'upload/826d94366b.jpg', 1),
(47, 'HP Victus Gaming- i5 Full HD 144Hz/ NVIDIA GTX 1650 4GB Laptop', 23, 12, 'CPU : i5-12450H 12th Gen\r\nRAM : 8 GB DDR4\r\nHDD : 512GB SSD\r\nScreen : 15.6? diagonal, Full HD (1920 x 1080) IPS 144Hz\r\nGraphic : NVIDIA® GeForce GTX™ 1650 (4GB)\r\nBacklit Keyboard\r\nWindows 11 Home 64', 76000, 'upload/32fd5d40ec.jpg', 1),
(48, 'Lenovo Ideapad Gaming Laptop With Full HD Notebook', 23, 11, 'Processor: AMD Ryzen 5 5600H (6C / 12T, 3.3 / 4.2GHz, 3MB L2 / 16MB L3)\r\nNVIDIA GeForce: GTX 1650 4GB GDDR6\r\nChipset: AMD SoC Platform\r\nMemory:1x 8GB SO-DIMM DDR4-3200\r\nMemory Slots: Two DDR4 SO-DIMM slots, dual-channel capable\r\nMax Memory: Up to 16GB DDR4-3200 offering\r\nStorage: 256GB SSD M.2 2242 PCIe 3.0x4 NVMe\r\nStorage Support: Non-RTX 3060 model: up to two drives, 1x 2.5&quot; HDD + 1x M.2 2242 SSD or 1x M.2 2242/2280 SSD + 1x M.2 2242 SSD • 2.5&quot; HDD up to 1TB • M.2 2242 SSD up to 512GB • M.2 2280 SSD up to 1TB\r\nAudio Chip: High Definition (HD) Audio, Realtek ALC3287 codec\r\nSpeakers: Stereo speakers, 2W x2, Nahimic Audio\r\nCamera: 720p with Camera Shutter\r\nMicrophone: 2x, Array\r\nBattery: Integrated 45Wh\r\nMax Battery Life\r\nMobileMark 2018: 5 hr (45Wh)\r\nPower Adapter: 135W Slim Tip (3-pin)\r\nDisplay: 15.6&quot; FHD (1920x1080) IPS 250nits Anti-glare, 120Hz, 45% NTSC, DC dimmer\r\nKeyboard: White Backlit, English (US)\r\nCase Color\r\nDimensions (WxDxH): 359.6 x 251.9 x 24.2 mm (14.16 x 9.92 x 0.95 inches)\r\nWeight: 2.25 kg (4.96 lbs)\r\nOperating System: Windows 10 Home 64, English\r\nEthernet: 100/1000M\r\nWLAN + Bluetooth\r\n11ax, 2x2 + BT5.0\r\nStandard Ports\r\n1x Power connector\r\n1x Ethernet (RJ-45)\r\n1x USB-C 3.2 Gen 1 (support data transfer only)\r\n1x Headphone / microphone combo jack (3.5mm)\r\n1x HDMI 2.0\r\n2x USB 3.2 Gen 1Brand New Laptop', 88000, 'upload/0a84826f4a.jpg', 1),
(51, 'Lenovo V15 celeron Laptop 4with Full HD Display Laptop', 23, 11, 'Model:- Lenovo V15-IGL MTM:- 82c30052IHConfig:- Intel Celeron N4020 1.1GHz4 GB DDR4 RAM (Non-Upgradable ) there is no RAM Slot inside this laptop.1 TB HDD ( M.2 Slot is available for adding NVME SSD) 15.6&quot; FHD TN panel Led ScreenIron Grey Color Dos(u\'ll have to Install Windows 10 in it) 2 Cell Battery', 96000, 'upload/ba28c079de.jpg', 1),
(54, 'Acer Aspire Vero i7 with 15\'6\'\' Full HD Display', 23, 5, 'Model: ACER Aspire VERO\r\nProcessor: Core i7\r\nOperating System: Windows 11; 11th gen;\r\nRAM: 16GB DDR4;\r\nROM: 512GB SSD;\r\nBACKLIT KEYBOARD;\r\nFINGER PRINT;\r\nBrand New Laptop', 67000, 'upload/2c0c0fc8d3.jpg', 1),
(56, 'Acer Nitro 5 AMD Ryzen 5 Laptop', 23, 5, 'Processor: ?AMD Ryzen 5 5600H (up to 144 GHz with Intel® Turbo Boost Technology, 4 cores.\r\nGraphics: NVIDIA® GeForce RTX™ 3060 Laptop GPU GDDR4 dedicated)\r\nDisplay: 15.6&quot; FHD, 144 Hz.\r\nRAM: 8 GB DDR4-3200 MHz RAM (2 x 8 GB, upto 32GB upgradable)\r\nStorage: 512 GB PCIe® NVMe™ TLC M.2 SSD\r\nOS: Windows 11 Home\r\nWarranty: 1 Year\r\nColor: Black\r\nBattery: 57 Wh Li-ion polymer.', 89000, 'upload/d8621b617c.jpg', 1),
(58, 'Acer G5 15 5511 Laptop', 0, 0, 'Display Size :15.6 Inch\r\nGeneration :11th Gen\r\nGraphics : NVIDIA RTX 3050- 4GB\r\nMaximum Display Resolution: 1920 x 1080 Full HD\r\nOperation System :Win 11', 90000, 'upload/4c782b17ec.jpg', 1),
(59, 'Acer Extensa 15 Intel Core i5 11th Gen 8GB 15.6&quot; Full HD Laptop', 0, 0, 'Acer Extensa 15 Ex215-54-57FA 11th Gen Laptop\r\nIntel Core i5-1135G7 Processor\r\n8GB DDR4 RAM\r\n512GB SSD Storage\r\nIntel Iris Xe Graphics\r\n15.6-inch IPS display with Full-HD resolution, SlimBezel\r\n1.6KG Weight\r\nBrand New Laptop\r\nBlack Color\r\nWindows 10/11 free Dos', 88000, 'upload/6e722d78c7.jpg', 1),
(61, 'Acer Extensa 15 Intel Core i5 Full HD Laptop', 23, 5, 'Acer Extensa 15 Ex215-54-57FA 11th Gen Laptop\r\nIntel Core i5-1135G7 Processor\r\n8GB DDR4 RAM\r\n512GB SSD Storage\r\nIntel Iris Xe Graphics\r\n15.6-inch IPS display with Full-HD resolution, SlimBezel\r\n1.6KG Weight\r\nBrand New Laptop\r\nBlack Color\r\nWindows 10/11 free Dos', 88000, 'upload/93e1afb430.jpg', 1),
(62, 'Acer Aspire 5 A515-45-ROXA-AMD Ryzen 15.6? FHD Laptop', 23, 5, 'CPU : AMD Ryzen 5 5500U\r\nRAM : 8GB DDR4\r\nHDD : 256GB SSD + 1TB HDD\r\nScreen : 15.6? Full HD 1920 x 1080 LED\r\nGraphic : AMD Radeon™ Graphics', 78000, 'upload/9fc026ae94.jpg', 1),
(63, 'Acer Aspire 5 A515-45-ROXA-AMD Ryzen 15.6? FHD Laptop', 23, 5, 'CPU : AMD Ryzen 5 5500U\r\nRAM : 8GB DDR4\r\nHDD : 256GB SSD + 1TB HDD\r\nScreen : 15.6? Full HD 1920 x 1080 LED\r\nGraphic : AMD Radeon™ Graphics', 78000, 'upload/8eab55f8c7.jpg', 1),
(64, 'Recci USB C to USB C Cable 100W Fast Charging Type C', 22, 35, 'Aluminum Alloy Case &amp; Braided Jacket: Tangle-free cotton braided design, premium aluminium alloy shell and gold-plated connector add additional durability and stability to this cable, which makes it more durable than normal cables, a must-have for daily.\r\nBroad Compatibility:USB C to C Cable compatible with Macbook Pro 2021/2022/2020/2019/2018/2017, Macbook Air 2021/2022/2020/2019/2018, iPad Pro, Google Pixel 4/ 4 XL/3/3 XL/2/2 XL/XL, Samsung Galaxy Note 20/ultra/10/Note 10+/Note 9/S10/S10e/S10+/S9+/S8+/S20/S20 Ultra/S20 Plus/s21/S22/Ultra/Plus/A51, Nexus 6P 5X, Nintendo Switch, Huawei Matebook X Pro, Matebook 13, Chromebook, Dell XPS 15/13, Lenovo Yoga 900 720, ThinkPad X1, Razer Blade Stealth 2018, ASUS ZenBook 3, HP Spectre notebook, etc.\r\nUSB-C Syncing: Offers transfer speed up to 480Mbps (USB 2.0), or transfer 1GB files in 30 seconds.', 1500, 'upload/67fb7dfbf6.jpg', 0),
(65, 'Mi USB Type C Cable 1 Meter Color-Black', 22, 10, 'Input USB A type\r\nOutput Type C\r\nUpto 3 A Ultra Fast Charging\r\nFast Data Transfer Feature Available', 500, 'upload/edbbee897d.jpg', 1),
(72, 'Metal Phone Holder Premium Upgraded Arm Mobile Holder Stand', 22, 35, 'FEATURES-\r\nUniversal car bed clamp mount holder formobile phones\r\nEasy Mount suction technology enables you to mount bed, car.\r\nLong arm design,ultra firm,multi-purpose\r\nKeep your phone safely and legally in your car\r\nSilicone lined grip keeps your phone or GPS safe and secure\r\nHolds your phone securely for unobstructed views\r\nBall joint allows you to view your device at any angle\r\nMulti-angle rotation for your preferred viewing angle\r\nEasy to install and remove\r\n360 degree rotating adjustable angle', 1900, 'upload/3572081a9b.jpg', 1),
(73, 'Adjustable and Foldable Desktop Phone Holder Stand', 22, 35, 'FEATURES-\r\nUniversal car bed clamp mount holder formobile phones\r\nEasy Mount suction technology enables you to mount bed, car.\r\nLong arm design,ultra firm,multi-purpose\r\nKeep your phone safely and legally in your car\r\nSilicone lined grip keeps your phone or GPS safe and secure\r\nHolds your phone securely for unobstructed views\r\nBall joint allows you to view your device at any angle\r\nMulti-angle rotation for your preferred viewing angle\r\nEasy to install and remove\r\n360 degree rotating adjustable angle', 1800, 'upload/73ddc0151d.jpg', 1),
(74, 'Charger Cable For MI Band 3', 22, 10, '15cm length, portable and convenient to store\r\nSuitable for Mi Band 3\r\nNote: the watch dial in the pictures is not included in the package\r\nType: Charger\r\nFunction:Mi Band 3\r\nProduct weight: 0.0050 kg\r\nPackage weight: 0.0150 kg\r\nProduct size: 15.00 x 1.70 x 1.00 cm / 5.91 x 0.67 x 0.39 inches\r\n15cm length, portable and convenient to store\r\nSuitable for Mi Band 3', 800, 'upload/8caedde6d8.jpg', 1),
(75, 'Type C to USB 3.0 OTG Adapter', 22, 35, 'Small design, easy to carry\r\nPlug and play, convenient and fast\r\nExtended jack, no need to take off the phone cover when used\r\nCan be used for USB flash drives, mouse, keyboard, game controller and other USB powered devices', 700, 'upload/aac6a448f5.jpg', 1),
(76, 'Mobile Phone Holder Bracket Adapter Clip', 22, 35, 'Attached to any Standard Tripod\r\nStrong Compatibility\r\nGrasps your Device Firmly\r\nProtect your Device\r\nHigh Quality Material', 1500, 'upload/c35c91dfa3.jpg', 1),
(77, 'Universal Mobile Stand for Table with Adjustable Height Mobile Holder for Table All Smartphones', 22, 35, 'Specification:1. Multi-function support: Multi-function live support is a good helper for live broadcast and watching TV.\r\nThe vertical screen is used for live broadcasting, and the horizontal screen is used for watching TV.\r\nThis support is applicable to mobile phones.2. Adjustable length: The length is adjustable, up and down can be rotated, the bracket is widely used in a variety of occasions.\r\n3. Thicker and heavier: The bracket is thicker and heavier, providing stable support without shaking.4\r\n. With high resilience spring: built-in high resilience tension spring, the bracket can hold the mobile phone without falling or rotating.\r\n5. Anti-slip and anti-scratch: anti-slip silicone pad can prevent the mobile phone from sliding and protect the mobile phone from scratching.specification:Name: Mobile Live SupportType: BracketApplicable brands: universal mobile phone bracketStyle: Telescopic\r\nSpecification:1. Multi-function support: Multi-function live support is a good helper for live broadcast and watching TV.\r\nThe vertical screen is used for live broadcasting, and the horizontal screen is used for watching TV.\r\nThis support is applicable to mobile phones.2. Adjustable length: The length is adjustable, up and down can be rotated, the bracket is widely used in a variety of occasions.\r\n3. Thicker and heavier: The bracket is thicker and heavier, providing stable support without shaking.4\r\n. With high resilience spring: built-in high resilience tension spring, the bracket can hold the mobile phone without falling or rotating.\r\n5. Anti-slip and anti-scratch: anti-slip silicone pad can prevent the mobile phone from sliding and protect the mobile phone from scratching.specification:Name: Mobile Live SupportType: BracketApplicable brands: universal mobile phone bracketStyle: Telescopic', 2000, 'upload/cd8af2578d.jpg', 1),
(78, 'Redmi Note 11 Snapdragon 680 Processor 50 MP Quad Camera 33 W pro Fast Charging', 25, 14, 'Processor: 6 nm / Qualcomm Snapdragon 680 4G\r\nCamera: Rear Camera: Quad Camera- 50 MPMain + 8 MP Ultra wide + 2 MP Macro + 2 MP Depth\r\nSelife Camera: 13 MP\r\nRAM/ ROM: 4/64: Rs. 22,999 4/128: Rs. 24,999 6/128: Rs. 26,999\r\nDisplay: 6.43&quot; FHD +AMOLED display, 90 Hz Refresh Rate\r\nBattery: 5000 mAh Capacity / 33 W Pro Fast Charging\r\nIP53 Splash Proof Tested Device\r\nDual Speakers/ 3.5 mm headphone jack\r\nNumber of SIM: SIM 1 + SIM 2\r\nFingerprint Sensor (side-mounted)\r\nNetwork: 4G, 3G, 2G\r\nOS: Android 11 / MIUI 13', 23000, 'upload/9f8f6189c6.jpg', 1),
(79, 'X-AGE G2 Smart Mobile Phone', 25, 2, 'Mediatek Quad Core Processor\r\n3000mAh Battery\r\n3GB RAM //32 GB ROM\r\n6&quot; Water Drop Display\r\n13MP + 0.3MP Dual Rear Camera\r\n8MP Front Camera\r\nFace and Fingerprint Unlock', 15000, 'upload/2be772d170.jpg', 1),
(80, 'Infinix Hot 10i 2GB RAM &amp; 32GB ROM Smart Mobile Phone', 25, 15, 'RAM &amp; ROM: 2GB &amp; 32GB\r\nConnectivity: GPS/WIFI/BT\r\nBattery: 6000 mAh\r\nOS: Android 11(Go edition)\r\nFront Camera: 8MP with Flash Light\r\nRear Camera: 13MP Dual Camera with Quad-Flash Light\r\nProcessor: Octa-core 1.6GHz\r\nSensor: G-Sensor/ L-Sensor Proximity Sensor/ Fingerprint', 18000, 'upload/7eb634ec24.jpg', 1),
(81, 'POVA 2,GAMING PHONE,6GBRAM,128GBROM,BEST SMART PHONE,BLACK COLOR,MOBILE,LOW PRICE SMART PHONE', 25, 16, 'Display6.90-inch (1080x2460\r\nProcessorMediaTek Helio G85\r\nFront Camera8MP\r\nRear Camera48MP + 2MP + 2MP + AI lens\r\nRAM4GB\r\nStorage64GB\r\nBattery Capacity7000mAh\r\nOSAndroid 11', 32000, 'upload/d6afe9a962.jpg', 1),
(82, 'POVA 2,GAMING PHONE,6GBRAM,128GBROM,BEST SMART PHONE,BLACK COLOR,MOBILE,LOW PRICE SMART PHONE', 25, 16, 'Display6.90-inch (1080x2460\r\nProcessorMediaTek Helio G85\r\nFront Camera8MP\r\nRear Camera48MP + 2MP + 2MP + AI lens\r\nRAM4GB\r\nStorage64GB\r\nBattery Capacity7000mAh\r\nOSAndroid 11', 32000, 'upload/d4b63a7fd8.jpg', 1),
(83, 'Motorola Moto E4 Smart Mobile Phone', 25, 36, 'Size 5.0 inches IPS LCD capacitive touchscreen, 16M colors\r\nOS Android 7.1.1 (Nougat)\r\nMediatek MT6737, Quad-core 1.3 GHz Cortex-A53, GPU Mali-T720\r\nInternal 16 GB, 2 GB RAM\r\n8 MP, f/2.2, autofocus, LED flash, Video 720p@30fps\r\nSecondary 5 MP, f/2.2, 1.4 µm pixel size, LED flash\r\nSensors Fingerprint\r\nRemovable Li-Ion 2800 mAh battery', 19000, 'upload/bd7aaab840.jpg', 1),
(84, 'Samsung Galaxy A33 5G Smart Mobile Phone', 25, 1, 'BODY Dimension: 59.7 x 74 x 8.1 mm (6.29 x 2.91 x 0.32 in)\r\nWeight: 86 g (6.56 oz)\r\nBuild: Glass front (Gorilla Glass 5), plastic frame, plastic back\r\nDISPLAY Type: Super AMOLED, 90Hz\r\nSize: 6.4 inches, 98.9 cm2 (~83.7% screen-to-body ratio)\r\nResolution: 1080 x 2400 pixels, 20:9 ratio (~411 ppi density)\r\nProtection: Corning Gorilla Glass 5 &amp; IP67 dust/water resistant (up to 1m for 30 mins)\r\nPLATFORM OS: Android 12, One UI 4.1\r\nChipset: Exynos 1280 (5 nm)\r\nCPU: Octa-core (2x2.4 GHz Cortex-A78 &amp; 6x2.0 GHz Cortex-A55)\r\nGPU: Mali-G68MEMORY\r\nCAMERA: (Quad)48 MP, f/1.8, 26mm (wide), 1/2.0&quot;, 0.8µm, PDAF, OIS + 8 MP, f/2.2, 123?, (ultrawide), 1/4.0&quot;, 1.12µm + 5 MP, f/2.4, (macro) + 2 MP, f/2.4, (depth)\r\nFeature: LED flash, panorama, HDR\r\nVideo: 4K@30fps, 1080p@30/120fps\r\nSELFIE CAMERA: Single13 MP, f/2.2, (wide), 1/3.1&quot;, 1.12µm\r\nVideo: 1080p@30fps\r\nSOUND Loudspeaker: Yes\r\n3.5mm Jack: No\r\nCOMMS Wlan: i-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth: 5.1, A2DP, LE\r\nGPS: Yes, with A-GPS, GLONASS, GALILEO, BDS\r\nNFC: Yes (market/region dependent)\r\nRadio: Unspecified\r\nUSB: USB Type-C 2.0, USB On-The-GoFEATURES\r\nSensors: Fingerprint (under display, optical), accelerometer, gyro, compass Virtual proximity sensing\r\nBATTERY Type: Li-Po 5000 mAh, non-removable\r\nCharging: Fast charging 25W\r\nColors: Black, White, Blue, Peach', 32000, 'upload/761030f7e7.jpg', 0),
(85, 'Samsung Galaxy A03 Core TFT Display Smart Phone', 25, 1, 'The dual-SIM (Nano) Samsung Galaxy A03 Core\r\nAndroid 11 (Go edition).\r\nSports a 6.5-inch HD+ (720x1,600 pixels) PLS TFT LCD display with a 20:9 aspect ratio.\r\nPowered by an octa-core Unisoc SC9836A SoC\r\nExpanded via a microSD card (up to 1TB).\r\nmicroUSB 2.0, USB On-The-Go', 25000, 'upload/00cac1463e.jpg', 1),
(86, 'Samsung Galaxy A53 5G Smart Mobile Phone', 25, 1, 'BodyDimension - 159.6 x 74.8 x 8.1 mmWeight - 189 gmBuildBack: PolycarbonateFront: Corning Gorilla Glass 5Frames: PolycarbonateIP Ratings - IP67 dust/water resistantColors - Awesome Black, Awesome Peach, Awesome BlueDisplaySize - 6.5 inchesType - Super AMOLEDResolution2400 x 1080 pixels20 : 9 aspect ratio405 PPI pixel densityProtection - Corning Gorilla Glass 5Refresh Rate - 120HzTouch Sampling Rate - 240HzOthers - HDR10+NetworkSIM - Dual SIM (2 Nano-SIMs)Technology - GSM / CDMA / HSPA / EVDO / LTE / 5G2G Bands - GSM 850 / 900 / 1800 / 19003G Bands - UMTS 850 / 900 / 1700 / 1900 / 21004G Bands - B1 / 2 / 3 / 4 / 5 / 7 / 8 / 12 / 17 / 20 / 26 / 28 / 32 / 38 / 39 / 40 / 41 / 665G Bands - N1 / 3 / 7 / 8 / 20 / 28 / 38 / 40 / 41 / 78PerformanceChipset - Samsung Exynos 1280 (5nm)CPUOcta-core– 2x Cortex-A78 (2.4 GHz)– 6x Cortex-A55 (2.0 GHz)GPU - Mali-G68OS - Android 12UI Version - One UI 4.1Promised Updates4 Years (Android Upgrades)5 Years (Security Updates)MemoryRAM - 8GB LPDDR4XStorage - 128GSD Card - Up to 1TBBack CamerasQuadPrimary : 64MP f/1.8, OIS, 26 mmUltrawide : 12MP f/2.2, 123° FoVDepth : 5MP f/2.4Macro : 5MP f/2.4Features - Auto Framing, AI Stereo Depth Map, Single TakeVideo4K @ 30 fps, 1080p @ 30/60 fps; gyro-EISFront CameraSingle - 32MP f/2.2, PDAF, 26 mm (1/2.8&quot;)FeaturesAutofocusVideo4K @ 30 fps, 1080p @ 30/60 fpsSecurityFingerprint - In-display (Optical)Face Unlock- 2D Face RecognitionAudioSpeaker - Yes (Stereo)3.5 mm Jack - NoOthers - Dolby Atmos audioSensorsType - Accelerometer, Geomagnetic, Gyro, Hall, Light, ProximityConnectivityWLAN - WiFi 5 (802.11 a/b/g/n/ac), Dual-Band, WiFi Direct, HotspotBluetooth - 5.1GPS - Yes, with A-GPS, Glonass, Galileo,BDSNFC - YesUSB - USB Type-C, OTGBatteryType - Li-Po 5000 mAh, non-removableCharging - 25W Fast Charging', 35000, 'upload/c6ef52d31c.jpg', 1),
(87, 'Samsung Galaxy A2 5000mAh Battery 48MP Camera Smart Phone', 25, 1, 'Body: 73.6 x 159.3 x 8.4mm, 186 gm\r\nDisplay: 6.4-inches “Infinity-U” Super AMOLED, 90Hz Refresh Rate, 600 nits peak brightness (HDR)\r\nResolution: HD+ (1600 x 720 pixels), 20:9 aspect ratio, 274 PPI\r\nChipset: MediaTek Helio G80 4G (12nm Mobile Platform)\r\nCPU: Octa-core (2×2.0 GHz Cortex-A75 &amp; 6×1.8 GHz Cortex-A55)\r\nGPU: Arm Mali-G52 MC2\r\nMemory: 4/6GB LPDDR4X RAM, 64/128GB eMMC 5.1 storage (expandable)\r\nSoftware &amp; UI: Android 11 with Samsung’s One UI Core 3.1 on top\r\nRear Camera: Quad-camera;– 48MP, f/1.8 primary sensor, PDAF, OIS– 8MP, f/2.2 ultra-wide camera, 123º FOV– 2MP, f/2.4 portrait lens– 2MP, f/2.4 macro lens\r\nFront Camera: 13MP f/2.2 sensor (notch)\r\nAudio: Loudspeaker, 3.5mm headphone jack\r\nSecurity: Side-mounted fingerprint sensor, Face unlock\r\nSensors: Accelerometer, Gyroscope, Geomagnetic, Virtual Light, Virtual Proximity\r\nConnectivity: Dual-SIM (Nano), WiFi 802.11 a/b/g/n/ac (Dual-band), Bluetooth 5.0, GPS / AGPS / Glonass / Galileo / Beidou, USB Type-C, 4G LTE\r\nBattery: 5000mAh with 15W fast charge (15W adapter inside the box', 30000, 'upload/7299991aa3.jpg', 1),
(88, 'Amazfit GTS 4 Mini Smartwatch Alexa Built GPS Fitness Tracker', 19, 22, '&lt;p&gt;Package Dimensions : 4.65 x 4.37 x 1.97 inches Batteries: 1 Lithium Ion battery is required. (included) OS: ZEPP OS Display: AMOLED HD Display Screen to Body Ratio: 70.2% Weight: 19 g Without Strap Wireless communication technologies: Bluetooth GPS: GPS Enabled Amazfit GTS 4 Mini smart watch supports 5 satellite positioning systems to help you make the most of your journeys into the great outdoors and uses circularly-polarized antenna technology to improve positioning performance and accuracy. Easily set an alarm, ask a question, get a translation, and more, with the Amazon Alexa feature of the watch. Packed with smooth &amp;amp; low-power-consuming Zepp OS, which features over 10 mini apps, including the Home Connect third-party app, to help enhance your daily life. Easily test your heart rate, blood-oxygen saturation and stress level simultaneously with a single tap of the smartwatch, for a result in as quick as 45 seconds. Also, this watch provides in-depth monitoring of sleep quality to keep you on top of your health. Walking, running, cycling, yoga, and more. Whichever activity makes you challenge yourself, you\'ll likely find a sports mode for it on the fitness tracker watch. And Jump into action quickly with smart recognition of 7 Sports. A water-resistance grade of 5 ATM means the smartwatch can resist the equiof valent of up to 50 meters water pressure. And whenever you fancy a trip to the pool or the beach, the watch\'s Pool Swimming and Open Water Swimming sports modes can scientifically track your swimming data. This ultra-compact smartwatch packs a mega-powerful 270 mAh battery, bringing 15 days of endurance on typical usage and up to 45 days of battery life on battery saver mode.&lt;/p&gt;', 2500, 'upload/1368341ee5.jpg', 0),
(89, 'Xiaomi Imilab W12 Smart Watch', 19, 23, 'Technical SpecificationsName ?IMILAB W12\r\nDimension ?11×46x260mm\r\nBluetooth Version?V5.0\r\nTouch Screen?Capacitive touch screen\r\nCompatibility?Android 4. 4 or above loS 9.0 or above\r\nDefinition?360x 360 Pixels\r\nDisplay?1.32 inch TFT screen\r\nWater Dust Proof?IP68\r\nOperation Temperature ?-20-45°C\r\nBattery Life?30 Days\r\nCharger?Magnetic Charging cable\r\nBattery Capacity?330mAh\r\nData sync?Could be upload to App for analysing', 2000, 'upload/7107113471.jpg', 1),
(90, 'i7 Pro Max Smart Watch Hi WatchPro 7 For Men &amp; Women Smart Watch', 19, 3, '&lt;p&gt;Model No : i7 Pro Max Smart Watch 7 App Named : HiwatchPro Screen : Full Screen Touch Display It has call function through bluetooth Easy to answer call and message nitification It has full day usage battery backup It has upto 3 hours continous screen on It has 5 days battery standby backup. It has 280 mAh battery capacity It has bluetooth version 5.2 latest It aslo measures health paramenter &amp;amp; have sports mode. It is compatible for both devices.&lt;/p&gt;', 4000, 'upload/1ed8b1b784.jpg', 1),
(91, 'MI Smart Band 6 Smart Watch', 19, 10, 'Body net weight: 12.8 g\r\nBody dimensions47.4 Ã?Â? 18.6 Ã?Â? 12.7 mm\r\nWaterproof rating: 5 ATM\r\nWireless connection: Bluetooth 5.0', 3500, 'upload/fbf2645ffe.jpg', 1),
(92, 'Amazfit GTR 3 Pro Smart Watch', 19, 22, 'Liberate your hands with Alexa\r\nHigh Precision GPS and 5 ATM Water Resistance\r\nClear and Easy to Read with ULTRA HD AMOLED Display\r\nFitness Partner with 150 + Sports Modes\r\nBattery Life that won\'t Let you down\r\nHealth Metrics Test in One Tap\r\nListen to your Music and Receive Bluetooth Calls\r\nClassic Crown for Smooth Navigation\r\nVibrant watch Faces and Always on Displays', 3000, 'upload/952ba816b2.jpg', 1),
(93, 'Amazfit GTR Wireless Bluetooth Pro 3 Smart Watch', 19, 22, '&lt;p&gt;Liberate your hands with Alexa High Precision GPS and 5 ATM Water Resistance Clear and Easy to Read with ULTRA HD AMOLED Display Fitness Partner with 150 + Sports Modes Battery Life that won\'t Let you down Health Metrics Test in One Tap Listen to your Music and Receive Bluetooth Calls Classic Crown for Smooth Navigation Vibrant watch Faces and Always on Displays&lt;/p&gt;', 3000, 'upload/c5afec0299.jpg', 1),
(94, 'X7 Bluetooth Smart Watch For Women Water Resistable Watch', 19, 37, '&lt;p&gt;Compatibility: All Android and iOS Mobile Phone &amp;amp; Android Tablet PC. Android Mobile Phone Sync function: QQ, Wechat, Twitter, Facebook; time, schedule, read message or news; Sport health: Pedometer, sedentary remind, sleep monitoring Phone function: Make phone call directly from the smart watch, including answering and dial-up. SIM slot, support make calls by Bluetooth or Smart watch. With up to 230mAh of battery life, the smartwatch is always there when you need it during your daily routine. In addition, this unisex watch helps you exercise and work out in style with its unique. With this smartwatch on your wrist, you can receive and make calls, dictate text messages and send them to your friends or colleagues, call a taxi, browse through plenty of apps, and even track your fitness activity - all this without the need to even take your smartphone out. This dependable and versatile wearable gadget helps you organize efficiently your daily activities and achieve your full potential. The unisex watch is a virtual wrist-worn assistant.&lt;/p&gt;', 2500, 'upload/6725d33cfc.jpg', 1),
(95, 'Smart Watch DZ09 Q18 Bracelet Camera Bluetooth Wrist Watch SIM Card Smartwatch', 19, 10, 'GPS:No\r\nMovement Type:Electronic\r\nFunction:Passometer,Sleep Tracker,Dial Call,Push Message,Alarm Clock,Permanent Calendar,Month,24 hour instruction,Fitness Tracker,Answer Call,Message Reminder,Call Reminder\r\nRear Camera:0.3MP\r\nBattery Capacity:300-450mAh\r\nScreen Size:1.54&quot;\r\nLanguage:Russian,Portuguese,Spanish,English,German,Arabic,Italian,French,Turkish\r\nStyle:Sport\r\nType:On Wrist\r\nCPU Model:MTK6261\r\nBattery Detachable:Yes\r\nROM:&lt;128MB\r\nBand Material:Rubber\r\nWaterproof Grade:Life Waterproof\r\nCompatibility:Android\r\nRAM:&lt;128MB\r\nBand Detachable:No\r\nScreen Shape:Square\r\nNetwork Mode:2g\r\nAPP Download Available: No\r\nApplication Age Group: Adult\r\nMultiple Dials: No\r\nSystem: None\r\nCase Material: Steel\r\nSIM Card Available: Yes\r\nResolution:240*240px\r\nMechanism: No', 4500, 'upload/35abb2be55.jpg', 1),
(96, 'Redmi Smart BT Spo2 Tracking Sleep Monitoring Stress Monitoring', 19, 14, '&lt;p&gt;Display: 1.47&amp;rdquo; AMOLED full touch colour display Resolution: 194 x 368/ Pixel Density: 283 ppi/ Max. brightness: 450 nits Screen to body ratio:65.5%/ Weight: 14.5g without strap)/ 25.5g(with strap)) Water Resistant Rating: 5ATM Dimension: 42.05x24.45x 11.1 mm Material: Polycarbonate/ Strap Material: TPU Battery Capacity: 200 mAh/ Battery Life: Upto 14 days/ Battery Type: Li-Po Charging Time: &amp;lt; 1.5 hrs Charging Pin: Magnetic Charging thimble Accessories: Charging cable, Strap Sensor6-axis Sensor, PPG Heart Rate Sensor, SpO&amp;acirc;?? Sensor, Vibration Motor, Ambient Light Sensor Fitness Modes: 110+ with 3 Auto Detect Heath Algorthim: LifeQ Health Algorithm Other Health Features: Sleep Monitoring, Breathing Exercises Stress Monitoring, Women\'s Health Memory (RAM/ROM): 8 MB / 128 MB Wireless Connectivity: BT 5.0 BLE Other Features: Message/call notification, App alerts, Calendar, Alarm, Clock, Stopwatch, Timer, Music control, Find phone, Unlock phone(MIUI), Camera remote shutter*, Weather, Set activity goals. Supported SystemsAndroid 5.0 or iOS 10.0 and above&lt;/p&gt;', 3500, 'upload/8cc00d19e5.jpg', 1),
(97, 'Kaspersky Antivirus And Security Protection with Webcam Protection', 21, 18, '&lt;p&gt;Webcam Protection Safe Money Technology Parental ControlGlobal Leader in Antivirus &amp;amp; Security Protection Defend against all types of internet threats. Protect against new,emerging and unknown threats. Secures online banking and shopping. Safeguards your digital identity and privacy. Provides maximum PC protection.&lt;/p&gt;', 6000, 'upload/455fdb4175.jpg', 0),
(98, 'Mcafee Active Antivirus Protection Software with Global Threats Intelligence', 21, 19, '&lt;p&gt;McAfee Active Protection.Detects, quarantines, and blocks viruses, and malware,If we find something malicious, we isolate it so it can&amp;rsquo;t cause damage to your PC.. Global Threat Intelligence. Deploys real-time protection from the latest threats collected from more than 100 Million McAfee users by an aggregator that combines and categorize threat data into actionable intelligence. Uses the same reputation database as the Department of Defense by leveraging the latest threat intelligence shared from businesses and personal users.. NetGuard:Two-Way Firewall system monitors and stops traffic in and out of your PC trying to connect to suspicious servers and known botnets. Prevents hackers from gaining access to your PC and stops cyber criminals from using your PC to spread viruses and online threats.. Network Manager:Monitor your home WiFi network even when you&amp;rsquo;re not home. Block unknown devices from accessing your WiFi. Remotely monitor your home WiFi to make changes. Prevents others from eavesdropping on your internet usage.. SiteAdvisor:Identifies URLs as safe, potentially risky, or known to be risky to visit. Helps you make smarter decisions about what you click, and protects you from malicious downloads.. Vulnerability Scanner:Identifies software in need of updating by checking the version on your PC against our database Enables you to more easily update your software to patch potential security holes that online threats can exploit.. McAfeeQuickClean:Deletes unnecessary cookies and temporary internet files that slow down your PC. Improves your PC&amp;rsquo;s performance.. McAfeeShredder: Securely destroy sensitive electronic files. Deleting files and emptying your PC&amp;rsquo;s recycle bin isn&amp;rsquo;t enough. McAfee Shredder prevents deleted files from being recovered..&lt;/p&gt;', 5000, 'upload/55c4fbd79d.jpg', 1),
(99, 'Antivirus Quick Heal Antivirus Software Pro 1 Antivirus Protection System Software', 21, 20, '&lt;p&gt;Product Type:Quick Heal Antivirus Pro 1 PC 1YR. Compatible For:Windows 10, 8.1, 8, 7, Windows Vista, Windows XP (Service Pack 2 and later), Windows 2000 (Service Pack 4). Number of Users:1user. Software Platform: Microsoft Windows. Software Type: Antivirus. Software Hardware Platform: PC &amp;amp; Laptops. Ransomware protection, malware protection, web security, anti key-logger, safe-mode protection, wiper protection. Easy to use, automatically detects and removes viruses, Trojans, malware.Keeps your device safe, secure, protects against malicious virus attacks.&lt;/p&gt;', 4500, 'upload/b37f4f1b59.jpg', 1),
(101, 'Eset Nod32 Antivirus Protection Software', 21, 39, '&lt;p&gt;Legendary NOD32 AntivirusProtects you against all types of malware, including viruses, ransomware, worms and spyware.Light on computer resourcesEnjoy the full power of your computer. Play, work and browse the internet without slowdowns.Uninterrupted gaming and videosNo system updates or annoying pop-ups while you play games or run a program in full-screen mode.Legendary antivirus technologyProtect yourself from ransomware and other types of malware with ESET\'s time-proven multilayered protection, trusted by over 110 million users worldwide.Minimal power usagePlay, work and browse the internet without slowdowns. Stay unplugged and online longer with battery-saving mode, and enjoy gaming without distracting pop-ups.Install and forgetEasy to install, renew and upgrade, our security is also designed for simple set up of all routine tasks.&lt;/p&gt;', 6000, 'upload/647aea3391.jpg', 1),
(102, 'K7 Protection For Laptop Active Antivirus System Protection Software', 21, 38, '&lt;p&gt;Essential protection for your system Protection from data-stealing malware. Safeguards you from hacker intrutions.&lt;/p&gt;', 6200, 'upload/d092379162.jpg', 1),
(103, 'Kaspersky Internet Security Software For Laptop', 21, 18, 'Defend against all types of internet threats.\r\nProtect against new,emerging and unknown threats.\r\nSecures online banking and shopping.\r\nSafeguards your digital identity and privacy.\r\nProvides maximum PC protection.\r\nWebcam Protection\r\nSafe Money Technology\r\nParental Control\r\nMoneyProtects when you’re online banking &amp; shopping – on your computer\r\nPrivacy\r\nHelps you keep your private life… private\r\nSimplicity\r\nSimplifies security – to save you time and hassle\r\nPerformance\r\nProtects – without slowing you down\r\nSecurity\r\nDefends against viruses, ransomware &amp; more', 7700, 'upload/d989e50b14.jpg', 1),
(104, 'Kaspersky Internet Security Software For Laptop', 21, 18, 'Defend against all types of internet threats.\r\nProtect against new,emerging and unknown threats.\r\nSecures online banking and shopping.\r\nSafeguards your digital identity and privacy.\r\nProvides maximum PC protection.\r\nWebcam Protection\r\nSafe Money Technology\r\nParental Control\r\nMoneyProtects when you’re online banking &amp; shopping – on your computer\r\nPrivacy\r\nHelps you keep your private life… private\r\nSimplicity\r\nSimplifies security – to save you time and hassle\r\nPerformance\r\nProtects – without slowing you down\r\nSecurity\r\nDefends against viruses, ransomware &amp; more', 7700, 'upload/a61ad8b3d9.jpg', 1),
(106, 'Digital Handheld Multi-Function Professional Sports Stopwatch', 20, 42, '&lt;p&gt;Light weight and included lanyard this sports stopwatch is the ideal time measurement device for athletes - especially runners - coaches &amp;amp; referees Waterproof two stopwatch function time date display: Can be used in any weather condition Time, date and alarm function: Switch between 3 display modes to check the time, date and set your alarm Large display, material: Abs Double count timer mode for multiple times High quality stop-watch measures your time down to the millisecond Color: Black Comes with adjustable wrist strap for self timing while running&lt;/p&gt;', 3000, 'upload/c9f563bf6d.jpg', 0),
(107, 'Smart Counting Electronic Hula Hoop Intelligent Fitness', 20, 21, '&lt;p&gt;Product Name: Hula Hoop Suitable for waist circumference: 1 foot 8-3 foot 2 Features: Rotate freely, fit to the waist, it doesn&amp;rsquo;t hurt after turning for a long time, small footprint, can be used in office and home Applicable scenes: running sports fitness equipment sports trend fitness body health massage Instruction for use: illustration and manual&lt;/p&gt;', 4500, 'upload/ed02bc63de.jpg', 1),
(108, 'Adjustable Hand Grip Strengthener For Fitness', 20, 43, '&lt;p&gt;Material: Plastic handle Spring carbon steel Anti-sleep structure Improve hand,fingers,wrist, and forearms muscles Quick adjustable different resistance from 10-40 kgs Assorted Colors&lt;/p&gt;', 5000, 'upload/ca208b524f.jpg', 1),
(109, 'Plastic Handle Power Hand Grip For Hand and Wrist Strengthener', 20, 43, 'Durable spring system and lightweight with High Power Resistance\r\nEasy to carry, suitable for household and public places, won\'t affect daily work and life.\r\nIt is the necessary equipment of exercise and fitness.\r\nErgonomically Designed To Fit Small To Large Hand Sizes. Perfect for Men, Women, Seniors and Teens\r\nFor Hand Muscle and Wrist Strengthener\r\nMade from steel spring coil resistance.\r\nColor May be Vary', 4500, 'upload/47d3425aca.jpg', 1),
(110, 'Revoflex Xtreme Abdominal Trainer', 20, 44, 'Intense, light and effortless abdominal training!\r\nTrain with the Revoflex Extreme just 5 minutes a day and you will achieve tremendous results!\r\nAbdominal muscles, back muscles, arm muscles, shoulder muscles, thigh muscles and glutes are trained at once!\r\nYou can choose between 6 different training levels and 44 different exercises\r\nTravel Bag included', 4000, 'upload/8d162d9d37.jpg', 1),
(111, 'Power Twister Arm and Chest Muscle Builder Spring Exerciser', 20, 43, '&lt;p&gt;Best Training for Home Gym - 30 Kg Power Bender Quality Carbon Steel Springs &amp;amp; Non-Slip Plastic Handle Strength Arm Chest Shoulder Spring Exercise Fitness Training Bar Strengthens the chest, back, shoulders, biceps, and grip Perfect exercise tool: Portable Size 30 kg&lt;/p&gt;', 12000, 'upload/3691faf423.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 7, 'Fan', 880.00, 'upload/8f9f7b4ade.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_rating`
--
ALTER TABLE `item_rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_rating`
--
ALTER TABLE `item_rating`
  MODIFY `ratingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
