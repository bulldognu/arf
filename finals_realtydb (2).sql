-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 09:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finals_realtydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `Admin_User` varchar(255) NOT NULL,
  `Admin_Pass` varchar(255) NOT NULL,
  `Property_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agentassignment`
--

CREATE TABLE `agentassignment` (
  `AA_ID` int(11) NOT NULL,
  `Start_Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `End_Date` timestamp NULL DEFAULT NULL,
  `Agent_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `Agent_ID` int(11) NOT NULL,
  `Agent_FN` varchar(255) NOT NULL,
  `Agent_LN` varchar(255) NOT NULL,
  `Agent_Pos` varchar(255) NOT NULL,
  `Agent_Email` varchar(255) NOT NULL,
  `Agent_Num` varchar(255) NOT NULL,
  `Brokers_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appointment_ID` int(11) NOT NULL,
  `Date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Property_ID` int(11) NOT NULL,
  `Client_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brokers`
--

CREATE TABLE `brokers` (
  `Brokers_ID` int(11) NOT NULL,
  `Broker_FN` varchar(255) NOT NULL,
  `Broker_LN` varchar(255) NOT NULL,
  `Broker_Email` varchar(255) NOT NULL,
  `Broker_Num` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Client_ID` int(11) NOT NULL,
  `Client_FN` varchar(255) NOT NULL,
  `Client_LN` varchar(255) NOT NULL,
  `Client_Email` varchar(255) NOT NULL,
  `Client_Num` varchar(255) NOT NULL,
  `Client_Userpass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Client_ID`, `Client_FN`, `Client_LN`, `Client_Email`, `Client_Num`, `Client_Userpass`) VALUES
(1, 'Juan', 'Dela Cruz', 'juan.delacruz@example.com', '09171234567', 'password123'),
(2, 'Maria', 'Santos', 'maria.santos@example.com', '09179876543', 'password456'),
(3, 'Carlos', 'Garcia', 'carlos.garcia@example.com', '09175554433', 'password789'),
(4, 'Ana', 'Ramos', 'ana.ramos@example.com', '09178901234', 'password101'),
(5, 'Eduardo', 'Tan', 'eduardo.tan@example.com', '09171234789', 'password102'),
(6, 'Sofia', 'Bautista', 'sofia.bautista@example.com', '09174638291', 'password103'),
(7, 'Carlos', 'Lopez', 'carlos.lopez@example.com', '09173215649', 'password104'),
(8, 'Rose', 'Pangilinan', 'rose.pangilinan@example.com', '09178213456', 'password105'),
(9, 'Rafael', 'Mendoza', 'rafael.mendoza@example.com', '09179463278', 'password106'),
(10, 'Michael', 'Gonzales', 'michael.gonzales@example.com', '09171122345', 'password107'),
(11, 'Julia', 'Reyes', 'julia.reyes@example.com', '09173456789', 'password108'),
(12, 'Paolo', 'Martinez', 'paolo.martinez@example.com', '09174455678', 'password109'),
(13, 'Jasmine', 'De Leon', 'jasmine.deleon@example.com', '09172546789', 'password110'),
(14, 'Eleanor', 'Zuniga', 'eleanor.zuniga@example.com', '09171345276', 'password111'),
(15, 'Antonio', 'Villanueva', 'antonio.villanueva@example.com', '09178765432', 'password112'),
(16, 'Diana', 'Alvarez', 'diana.alvarez@example.com', '09171672354', 'password113'),
(17, 'Victor', 'Santiago', 'victor.santiago@example.com', '09177456324', 'password114'),
(18, 'Clara', 'Serrano', 'clara.serrano@example.com', '09172984562', 'password115'),
(19, 'Noel', 'Diaz', 'noel.diaz@example.com', '09175426739', 'password116'),
(20, 'Elizabeth', 'Vargas', 'elizabeth.vargas@example.com', '09175894723', 'password117'),
(21, 'Miguel', 'Navarro', 'miguel.navarro@example.com', '09179134789', 'password118'),
(22, 'Isabel', 'Cruz', 'isabel.cruz@example.com', '09174123456', 'password119'),
(23, 'Harold', 'Garcia', 'harold.garcia@example.com', '09176345623', 'password120'),
(24, 'Adela', 'Lacson', 'adela.lacson@example.com', '09177455622', 'password121'),
(25, 'Arturo', 'Bautista', 'arturo.bautista@example.com', '09173367785', 'password122'),
(26, 'Cynthia', 'Benedicto', 'cynthia.benedicto@example.com', '09175894213', 'password123'),
(27, 'Oscar', 'Gumapac', 'oscar.gumapac@example.com', '09177223344', 'password124'),
(28, 'Gabriela', 'Gonzalez', 'gabriela.gonzalez@example.com', '09176523312', 'password125'),
(29, 'Leo', 'Salazar', 'leo.salazar@example.com', '09178733211', 'password126'),
(30, 'Francisca', 'Santos', 'francisca.santos@example.com', '09173212345', 'password127'),
(31, 'Joshua', 'Molina', 'joshua.molina@example.com', '09174156789', 'password128'),
(32, 'Lorna', 'Garcia', 'lorna.garcia@example.com', '09177683321', 'password129'),
(33, 'Pablo', 'Aguilar', 'pablo.aguilar@example.com', '09174462213', 'password130'),
(34, 'Leila', 'Ramirez', 'leila.ramirez@example.com', '09172364839', 'password131'),
(35, 'Franz', 'Quinto', 'franz.quinto@example.com', '09173235647', 'password132'),
(36, 'Cheryl', 'Martinez', 'cheryl.martinez@example.com', '09175597834', 'password133'),
(37, 'Ariel', 'Salazar', 'ariel.salazar@example.com', '09176234791', 'password134'),
(38, 'Melissa', 'Ferrer', 'melissa.ferrer@example.com', '09172247384', 'password135'),
(39, 'Luz', 'Macapagal', 'luz.macapagal@example.com', '09177415823', 'password136'),
(40, 'Adrian', 'Bautista', 'adrian.bautista@example.com', '09171586934', 'password137'),
(41, 'Harold', 'Gonzales', 'harold.gonzales@example.com', '09176542381', 'password138'),
(42, 'Carmela', 'Garcia', 'carmela.garcia@example.com', '09174526167', 'password139'),
(43, 'Raul', 'Reyes', 'raul.reyes@example.com', '09171908433', 'password140'),
(44, 'Nina', 'Felix', 'nina.felix@example.com', '09176382912', 'password141'),
(45, 'Dante', 'Alvarez', 'dante.alvarez@example.com', '09173287649', 'password142'),
(46, 'Teresa', 'Morales', 'teresa.morales@example.com', '09178739234', 'password143'),
(47, 'Andrew', 'Dela Cruz', 'andrew.delacruz@example.com', '09101234567', 'password123'),
(48, 'Fidel James', 'Salagubang III', 'fidel.james@example.com', '09178760043', 'password456'),
(49, 'Juan', 'Dong', 'dong.juan@example.com', '09179870000', 'password456'),
(50, 'Bu An', 'Dimagiva', 'dimagiva.juan@example.com', '09009070543', 'password456');

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `Commission_ID` int(11) NOT NULL,
  `Transaction_ID` int(11) NOT NULL,
  `Agent_ID` int(11) NOT NULL,
  `Commission_Amount` decimal(10,2) NOT NULL,
  `Commission_Rate` decimal(10,2) NOT NULL,
  `Date_Calculated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `Contract_ID` int(11) NOT NULL,
  `Start_Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `End_Date` timestamp NULL DEFAULT NULL,
  `Terms` text NOT NULL,
  `Transaction_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(11) NOT NULL,
  `Payment_Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Payment_Amount` decimal(10,2) NOT NULL,
  `Payment_Method` varchar(255) NOT NULL,
  `Transaction_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `Property_ID` int(11) NOT NULL,
  `Property_Type` varchar(255) NOT NULL,
  `Property_Status` varchar(255) NOT NULL,
  `Property_Squareft` int(11) NOT NULL,
  `Property_Bedrooms` int(11) NOT NULL,
  `Property_Yearbuilt` year(4) NOT NULL,
  `Property_Listingdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Property_Description` text DEFAULT NULL,
  `PropertyAddress_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propertyaddress`
--

CREATE TABLE `propertyaddress` (
  `PropertyAddress_ID` int(11) NOT NULL,
  `PropertyAd_Street` varchar(255) NOT NULL,
  `PropertyAd_City` varchar(255) NOT NULL,
  `PropertyAd_State` varchar(255) NOT NULL,
  `PropertyAd_ZIP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propertyprice`
--

CREATE TABLE `propertyprice` (
  `PropertyPrice_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  `Price_Type` varchar(255) NOT NULL,
  `Price_Amount` decimal(10,2) NOT NULL,
  `Effective_Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Transaction_ID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Amount` decimal(10,2) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `Property_ID` int(11) NOT NULL,
  `Broker_ID` int(11) NOT NULL,
  `Agent_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD KEY `Property_ID` (`Property_ID`);

--
-- Indexes for table `agentassignment`
--
ALTER TABLE `agentassignment`
  ADD PRIMARY KEY (`AA_ID`),
  ADD KEY `Agent_ID` (`Agent_ID`),
  ADD KEY `Property_ID` (`Property_ID`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`Agent_ID`),
  ADD UNIQUE KEY `Agent_Email` (`Agent_Email`),
  ADD UNIQUE KEY `Agent_Num` (`Agent_Num`),
  ADD KEY `Brokers_ID` (`Brokers_ID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `Property_ID` (`Property_ID`),
  ADD KEY `Client_ID` (`Client_ID`);

--
-- Indexes for table `brokers`
--
ALTER TABLE `brokers`
  ADD PRIMARY KEY (`Brokers_ID`),
  ADD UNIQUE KEY `Broker_Email` (`Broker_Email`),
  ADD UNIQUE KEY `Broker_Num` (`Broker_Num`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Client_ID`),
  ADD UNIQUE KEY `Client_Email` (`Client_Email`),
  ADD UNIQUE KEY `Client_Num` (`Client_Num`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`Commission_ID`),
  ADD KEY `Transaction_ID` (`Transaction_ID`),
  ADD KEY `Agent_ID` (`Agent_ID`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`Contract_ID`),
  ADD KEY `Transaction_ID` (`Transaction_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Transaction_ID` (`Transaction_ID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`Property_ID`),
  ADD KEY `PropertyAddress_ID` (`PropertyAddress_ID`);

--
-- Indexes for table `propertyaddress`
--
ALTER TABLE `propertyaddress`
  ADD PRIMARY KEY (`PropertyAddress_ID`);

--
-- Indexes for table `propertyprice`
--
ALTER TABLE `propertyprice`
  ADD PRIMARY KEY (`PropertyPrice_ID`),
  ADD KEY `Property_ID` (`Property_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Transaction_ID`),
  ADD KEY `Client_ID` (`Client_ID`),
  ADD KEY `Property_ID` (`Property_ID`),
  ADD KEY `Broker_ID` (`Broker_ID`),
  ADD KEY `Agent_ID` (`Agent_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agentassignment`
--
ALTER TABLE `agentassignment`
  MODIFY `AA_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `Agent_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brokers`
--
ALTER TABLE `brokers`
  MODIFY `Brokers_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `Client_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `Commission_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `Contract_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `Property_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propertyaddress`
--
ALTER TABLE `propertyaddress`
  MODIFY `PropertyAddress_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propertyprice`
--
ALTER TABLE `propertyprice`
  MODIFY `PropertyPrice_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `Transaction_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Property_ID`) REFERENCES `property` (`Property_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `agentassignment`
--
ALTER TABLE `agentassignment`
  ADD CONSTRAINT `agentassignment_ibfk_1` FOREIGN KEY (`Agent_ID`) REFERENCES `agents` (`Agent_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agentassignment_ibfk_2` FOREIGN KEY (`Property_ID`) REFERENCES `property` (`Property_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_ibfk_1` FOREIGN KEY (`Brokers_ID`) REFERENCES `brokers` (`Brokers_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Property_ID`) REFERENCES `property` (`Property_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Client_ID`) REFERENCES `client` (`Client_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commission`
--
ALTER TABLE `commission`
  ADD CONSTRAINT `commission_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `transaction` (`Transaction_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `commission_ibfk_2` FOREIGN KEY (`Agent_ID`) REFERENCES `agents` (`Agent_ID`) ON DELETE CASCADE;

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `transaction` (`Transaction_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Transaction_ID`) REFERENCES `transaction` (`Transaction_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`PropertyAddress_ID`) REFERENCES `propertyaddress` (`PropertyAddress_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `propertyprice`
--
ALTER TABLE `propertyprice`
  ADD CONSTRAINT `propertyprice_ibfk_1` FOREIGN KEY (`Property_ID`) REFERENCES `property` (`Property_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`Client_ID`) REFERENCES `client` (`Client_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`Property_ID`) REFERENCES `property` (`Property_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`Broker_ID`) REFERENCES `brokers` (`Brokers_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`Agent_ID`) REFERENCES `agents` (`Agent_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
