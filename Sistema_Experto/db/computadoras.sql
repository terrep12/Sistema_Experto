-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 08:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptops`
--

-- --------------------------------------------------------

--
-- Table structure for table `computadoras`
--

CREATE TABLE `computadoras` (
  `id` int(11) NOT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `modeloCpu` varchar(255) DEFAULT NULL,
  `gpu` varchar(255) DEFAULT NULL,
  `modeloGpu` varchar(255) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `rom` int(11) DEFAULT NULL,
  `tipoPantalla` varchar(255) DEFAULT NULL,
  `tamañoPantalla` float DEFAULT NULL,
  `tipoUso` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `computadoras`
--

INSERT INTO `computadoras` (`id`, `cpu`, `modeloCpu`, `gpu`, `modeloGpu`, `ram`, `rom`, `tipoPantalla`, `tamañoPantalla`, `tipoUso`, `precio`) VALUES
(1, 'Intel Core i5', '1135G7', 'Intel', 'Iris Xe Graphics', 8, 512, 'IPS', 13.5, 'Estudio', 600.00),
(2, 'AMD Ryzen 7', '3700U', 'AMD', 'Radeon RX Vega 10', 16, 256, 'IPS', 14, 'Estudio', 650.00),
(3, 'Intel Core i7', '1165G7', 'NVIDIA', 'MX450', 16, 512, 'IPS', 15.6, 'Estudio', 999.00),
(4, 'Intel Core i3', '1115G4', 'Intel', 'UHD Graphics', 8, 128, 'TN', 15.6, 'Estudio', 450.00),
(5, 'AMD Ryzen 5', '4500U', 'AMD', 'Radeon Graphics', 8, 256, 'IPS', 14, 'Estudio', 550.00),
(6, 'Intel Core i7', '10510U', 'NVIDIA', 'GTX 1650', 16, 512, 'IPS', 15.6, 'Estudio', 1100.00),
(7, 'Intel Core i5', '10210U', 'Intel', 'UHD Graphics', 8, 256, 'IPS', 13.3, 'Estudio', 700.00),
(8, 'AMD Ryzen 3', '3250U', 'AMD', 'Radeon Graphics', 8, 128, 'TN', 15.6, 'Estudio', 400.00),
(9, 'Intel Core i5', '1035G1', 'Intel', 'UHD Graphics', 8, 256, 'IPS', 14, 'Estudio', 550.00),
(10, 'AMD Ryzen 7', '4800H', 'AMD', 'Radeon RX Vega 7', 16, 512, 'IPS', 15.6, 'Estudio', 800.00),
(11, 'Intel Core i5', '10300H', 'NVIDIA', 'GTX 1650 Ti', 8, 256, 'IPS', 15.6, 'Estudio', 650.00),
(12, 'AMD Ryzen 5', '3550H', 'AMD', 'Radeon Vega 8', 8, 512, 'IPS', 15.6, 'Estudio', 600.00),
(13, 'Intel Core i7', '9750H', 'NVIDIA', 'RTX 2060', 16, 512, 'IPS', 17.3, 'Estudio', 1200.00),
(14, 'Intel Core i3', '10110U', 'Intel', 'UHD Graphics', 4, 128, 'TN', 14, 'Estudio', 400.00),
(15, 'AMD Ryzen 7', '3750H', 'AMD', 'Radeon RX Vega 10', 16, 256, 'IPS', 15.6, 'Estudio', 700.00),
(16, 'Intel Core i5', '9300H', 'NVIDIA', 'GTX 1050', 8, 256, 'IPS', 15.6, 'Estudio', 650.00),
(17, 'AMD Ryzen 3', '3200U', 'AMD', 'Radeon Vega 3', 4, 128, 'TN', 15.6, 'Estudio', 350.00),
(18, 'Intel Core i7', '8565U', 'NVIDIA', 'MX250', 16, 512, 'IPS', 14, 'Estudio', 950.00),
(19, 'Intel Core i5', '8265U', 'Intel', 'UHD Graphics 620', 8, 256, 'IPS', 13.3, 'Estudio', 550.00),
(20, 'AMD Ryzen 5', '4600H', 'AMD', 'Radeon RX Vega 6', 8, 256, 'IPS', 15.6, 'Estudio', 600.00),
(21, 'Intel Core i7', '1065G7', 'NVIDIA', 'MX330', 16, 512, 'IPS', 17, 'Estudio', 1100.00),
(22, 'Intel Core i3', '1005G1', 'Intel', 'UHD Graphics', 4, 128, 'TN', 15.6, 'Estudio', 420.00),
(23, 'AMD Ryzen 7', '4700U', 'AMD', 'Radeon Graphics', 16, 512, 'IPS', 14, 'Estudio', 800.00),
(24, 'Intel Core i5', '10210U', 'NVIDIA', 'MX350', 8, 256, 'IPS', 14, 'Estudio', 700.00),
(25, 'AMD Ryzen 3', '3300U', 'AMD', 'Radeon Vega 6', 8, 256, 'TN', 15.6, 'Estudio', 480.00),
(26, 'Intel Core i7', '10510U', 'NVIDIA', 'MX250', 16, 512, 'IPS', 13.3, 'Estudio', 999.00),
(27, 'Intel Core i5', '1035G4', 'Intel', 'Iris Plus Graphics', 8, 128, 'IPS', 13.5, 'Estudio', 650.00),
(28, 'AMD Ryzen 5', '3500U', 'AMD', 'Radeon Vega 8', 8, 256, 'IPS', 15.6, 'Estudio', 550.00),
(29, 'Intel Core i7', '10710U', 'NVIDIA', 'GTX 1650 Max-Q', 16, 1024, 'IPS', 15.6, 'Estudio', 1400.00),
(30, 'Intel Core i3', '1115G4', 'Intel', 'UHD Graphics', 8, 512, 'IPS', 14, 'Estudio', 500.00),
(31, 'Intel Xeon', 'E-2276M', 'NVIDIA', 'Quadro T1000', 32, 1024, 'IPS', 15.6, 'Profesional', 2400.00),
(32, 'AMD Ryzen 9', '5900HX', 'NVIDIA', 'RTX 3070', 32, 1024, 'OLED', 15.6, 'Profesional', 2200.00),
(33, 'Intel Core i9', '11900H', 'NVIDIA', 'RTX 3080', 64, 2048, 'IPS', 17.3, 'Profesional', 3500.00),
(34, 'Intel Core i7', '11850H', 'NVIDIA', 'RTX 3060', 32, 1024, 'IPS', 15.6, 'Profesional', 2100.00),
(35, 'AMD Ryzen 7', '5800H', 'AMD', 'Radeon Pro W5500M', 16, 512, 'IPS', 14, 'Profesional', 1800.00),
(36, 'Intel Core i7', '10850H', 'NVIDIA', 'Quadro T2000', 16, 512, 'IPS', 15.6, 'Profesional', 2300.00),
(37, 'AMD Ryzen 9', '5950X', 'AMD', 'Radeon RX 6900XT', 64, 2048, 'IPS', 16, 'Profesional', 3200.00),
(38, 'Intel Core i9', '10980HK', 'NVIDIA', 'RTX 3080', 64, 2048, 'OLED', 15.6, 'Profesional', 3600.00),
(39, 'Intel Core i7', '10700K', 'NVIDIA', 'RTX 3070', 32, 1024, 'IPS', 17, 'Profesional', 2500.00),
(40, 'AMD Ryzen 7', '5700G', 'AMD', 'Radeon RX 6800', 32, 1024, 'IPS', 15.6, 'Profesional', 2000.00),
(41, 'Intel Core i5', '10400', 'NVIDIA', 'GTX 1660 Ti', 16, 512, 'IPS', 15.6, 'Profesional', 1500.00),
(42, 'AMD Ryzen 5', '5600X', 'AMD', 'Radeon RX 6700 XT', 16, 512, 'IPS', 14, 'Profesional', 1600.00),
(43, 'Intel Core i9', '10885H', 'NVIDIA', 'Quadro RTX 5000', 64, 2048, 'IPS', 15.6, 'Profesional', 4000.00),
(44, 'Intel Core i7', '10610U', 'NVIDIA', 'MX250', 16, 512, 'IPS', 14, 'Profesional', 1700.00),
(45, 'AMD Ryzen 7', '4800H', 'AMD', 'Radeon RX 5600M', 16, 512, 'IPS', 15.6, 'Profesional', 1800.00),
(46, 'Intel Core i5', '10310U', 'Intel', 'UHD Graphics', 8, 256, 'IPS', 13.3, 'Profesional', 1200.00),
(47, 'AMD Ryzen 5', '4600H', 'AMD', 'Radeon RX Vega 6', 8, 256, 'IPS', 14, 'Profesional', 1300.00),
(48, 'Intel Core i7', '1165G7', 'NVIDIA', 'MX450', 16, 512, 'IPS', 15.6, 'Profesional', 1400.00),
(49, 'AMD Ryzen 9', '5900HS', 'NVIDIA', 'RTX 3060', 32, 1024, 'IPS', 14, 'Profesional', 2100.00),
(50, 'Intel Core i9', '11980HK', 'NVIDIA', 'RTX 3080 Ti', 64, 2048, 'OLED', 16, 'Profesional', 3800.00),
(51, 'Intel Core i7', '11800H', 'NVIDIA', 'RTX 3050 Ti', 16, 512, 'IPS', 15.6, 'Profesional', 1600.00),
(52, 'AMD Ryzen 7', '5800U', 'AMD', 'Radeon RX Vega 8', 16, 512, 'IPS', 13.3, 'Profesional', 1500.00),
(53, 'Intel Core i5', '11400H', 'NVIDIA', 'GTX 1650', 8, 256, 'IPS', 15.6, 'Profesional', 1100.00),
(54, 'AMD Ryzen 5', '5500U', 'AMD', 'Radeon RX Vega 7', 8, 256, 'IPS', 14, 'Profesional', 1000.00),
(55, 'Intel Core i9', '11950H', 'NVIDIA', 'RTX 3080', 64, 2048, 'IPS', 17.3, 'Profesional', 3700.00),
(56, 'Intel Core i7', '11375H', 'NVIDIA', 'RTX 3060', 32, 1024, 'IPS', 15.6, 'Profesional', 2200.00),
(57, 'AMD Ryzen 7', '5825U', 'AMD', 'Radeon RX Vega 8', 16, 512, 'IPS', 13.3, 'Profesional', 1400.00),
(58, 'Intel Core i5', '11300H', 'NVIDIA', 'MX350', 8, 256, 'IPS', 14, 'Profesional', 900.00),
(59, 'AMD Ryzen 9', '5980HS', 'NVIDIA', 'RTX 3080', 32, 1024, 'IPS', 14, 'Profesional', 2900.00),
(60, 'Intel Core i7', '1185G7', 'NVIDIA', 'MX450', 16, 512, 'IPS', 13.3, 'Profesional', 1800.00),
(61, 'AMD Ryzen 9', '5900HX', 'NVIDIA', 'RTX 3080', 32, 1024, 'IPS', 15.6, 'Gaming', 3000.00),
(62, 'Intel Core i9', '11900H', 'NVIDIA', 'RTX 3080 Ti', 64, 2048, 'OLED', 17.3, 'Gaming', 3500.00),
(63, 'AMD Ryzen 7', '5800H', 'NVIDIA', 'RTX 3070', 16, 512, 'IPS', 15.6, 'Gaming', 2500.00),
(64, 'Intel Core i7', '11800H', 'NVIDIA', 'RTX 3060', 16, 512, 'IPS', 15.6, 'Gaming', 2200.00),
(65, 'AMD Ryzen 5', '5600H', 'NVIDIA', 'RTX 3050 Ti', 16, 512, 'IPS', 15.6, 'Gaming', 1500.00),
(66, 'Intel Core i9', '10980HK', 'NVIDIA', 'RTX 3080', 32, 1024, 'IPS', 15.6, 'Gaming', 3400.00),
(67, 'AMD Ryzen 9', '5980HS', 'NVIDIA', 'RTX 3070 Ti', 32, 1024, 'IPS', 14, 'Gaming', 3200.00),
(68, 'Intel Core i7', '10875H', 'NVIDIA', 'RTX 3060 Ti', 16, 512, 'IPS', 15.6, 'Gaming', 2300.00),
(69, 'AMD Ryzen 7', '4800H', 'NVIDIA', 'RTX 3050', 16, 512, 'IPS', 15.6, 'Gaming', 1400.00),
(70, 'Intel Core i5', '10400H', 'NVIDIA', 'GTX 1660 Ti', 8, 256, 'IPS', 15.6, 'Gaming', 1200.00),
(71, 'AMD Ryzen 5', '4600H', 'NVIDIA', 'GTX 1650', 8, 256, 'IPS', 15.6, 'Gaming', 1000.00),
(72, 'Intel Core i9', '10885H', 'NVIDIA', 'RTX 2070 Super', 32, 1024, 'IPS', 17.3, 'Gaming', 2800.00),
(73, 'AMD Ryzen 9', '5900X', 'NVIDIA', 'RTX 3080', 64, 2048, 'IPS', 17.3, 'Gaming', 3600.00),
(74, 'Intel Core i7', '10750H', 'NVIDIA', 'RTX 3060', 16, 512, 'IPS', 15.6, 'Gaming', 2100.00),
(75, 'AMD Ryzen 7', '5800X', 'NVIDIA', 'RTX 3070', 32, 1024, 'IPS', 15.6, 'Gaming', 2600.00),
(76, 'Intel Core i5', '10300H', 'NVIDIA', 'RTX 3050 Ti', 8, 256, 'IPS', 15.6, 'Gaming', 1300.00),
(77, 'AMD Ryzen 5', '3600', 'NVIDIA', 'GTX 1650 Super', 8, 256, 'IPS', 15.6, 'Gaming', 1100.00),
(78, 'Intel Core i9', '10900K', 'NVIDIA', 'RTX 2080 Super', 64, 2048, 'IPS', 17.3, 'Gaming', 3300.00),
(79, 'AMD Ryzen 9', '5950X', 'NVIDIA', 'RTX 3090', 64, 2048, 'IPS', 17.3, 'Gaming', 4000.00),
(80, 'Intel Core i7', '10870H', 'NVIDIA', 'RTX 3060 Ti', 16, 512, 'IPS', 15.6, 'Gaming', 2400.00),
(81, 'AMD Ryzen 7', '5700G', 'NVIDIA', 'RTX 3070', 32, 1024, 'IPS', 15.6, 'Gaming', 2700.00),
(82, 'Intel Core i5', '10600K', 'NVIDIA', 'GTX 1660 Super', 16, 512, 'IPS', 15.6, 'Gaming', 1400.00),
(83, 'AMD Ryzen 5', '5600X', 'NVIDIA', 'RTX 3060', 16, 512, 'IPS', 15.6, 'Gaming', 1600.00),
(84, 'Intel Core i9', '9900K', 'NVIDIA', 'RTX 2070', 32, 1024, 'IPS', 17.3, 'Gaming', 2900.00),
(85, 'AMD Ryzen 9', '5900', 'NVIDIA', 'RTX 3080 Ti', 64, 2048, 'IPS', 17.3, 'Gaming', 3800.00),
(86, 'Intel Core i7', '10700K', 'NVIDIA', 'RTX 3060 Ti', 32, 1024, 'IPS', 15.6, 'Gaming', 2500.00),
(87, 'AMD Ryzen 7', '3800X', 'NVIDIA', 'RTX 3070 Ti', 32, 1024, 'IPS', 15.6, 'Gaming', 2800.00),
(88, 'Intel Core i5', '10400', 'NVIDIA', 'GTX 1650 Super', 8, 256, 'IPS', 15.6, 'Gaming', 1200.00),
(89, 'AMD Ryzen 5', '3500X', 'NVIDIA', 'RTX 3050', 16, 512, 'IPS', 15.6, 'Gaming', 1300.00),
(90, 'Intel Core i9', '10850K', 'NVIDIA', 'RTX 2080', 64, 2048, 'IPS', 17.3, 'Gaming', 3100.00),
(91, 'AMD Ryzen 9', '3950X', 'NVIDIA', 'RTX 3090', 64, 2048, 'IPS', 17.3, 'Gaming', 3900.00),
(92, 'Intel Core i7', '10700', 'NVIDIA', 'RTX 3060', 32, 1024, 'IPS', 15.6, 'Gaming', 2300.00),
(93, 'AMD Ryzen 7', '3700X', 'NVIDIA', 'RTX 3070', 32, 1024, 'IPS', 15.6, 'Gaming', 2600.00),
(94, 'Intel Core i5', '10500', 'NVIDIA', 'GTX 1660 Ti', 16, 512, 'IPS', 15.6, 'Gaming', 1500.00),
(95, 'AMD Ryzen 5', '3600X', 'NVIDIA', 'RTX 3060 Ti', 16, 512, 'IPS', 15.6, 'Gaming', 1700.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `computadoras`
--
ALTER TABLE `computadoras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `computadoras`
--
ALTER TABLE `computadoras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
