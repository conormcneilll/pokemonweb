-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 04, 2024 at 01:06 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Pokemon`
--

-- --------------------------------------------------------

--
-- Table structure for table `AttackCosts`
--

CREATE TABLE `AttackCosts` (
  `AttackCostID` int(11) NOT NULL,
  `AttackID` int(11) DEFAULT NULL,
  `EnergyType` varchar(50) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Attacks`
--

CREATE TABLE `Attacks` (
  `AttackID` int(11) NOT NULL,
  `CardID` int(11) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Effect` text,
  `Damage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Cards`
--

CREATE TABLE `Cards` (
  `CardID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Rarity` varchar(50) DEFAULT NULL,
  `HP` int(11) DEFAULT NULL,
  `ImageURL` varchar(255) DEFAULT NULL,
  `Stage` varchar(50) DEFAULT NULL,
  `Weakness` varchar(50) DEFAULT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Cards`
--

INSERT INTO `Cards` (`CardID`, `Name`, `Rarity`, `HP`, `ImageURL`, `Stage`, `Weakness`, `Description`) VALUES
(1, 'Alakzam', 'Rare', 80, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F1%2Fhigh.webp&w=750&q=100', 'Stage 2', 'Bug', 'Its brain can outperform a supercomputer. Its intellligence quotient is siad to be 5000'),
(2, 'Blastoise', 'Rare', 100, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F2%2Fhigh.webp&w=750&q=100', 'Stage 2', 'Eletricity', 'A brutal Pokemon with pressurised water jets on its shell.'),
(3, 'Chansey', 'Rare', 120, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F3%2Fhigh.webp&w=750&q=100', 'Basic', 'Fire', 'A rare and elusive Pokemon that is said to bring happiness to those who catch it.'),
(4, 'Charizard', 'Rare', 120, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F4%2Fhigh.webp&w=750&q=100', 'Stage 2', 'Water', 'Spits Fire that is hot enough to melt boulders.'),
(5, 'Clefairy', 'Rare', 40, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F5%2Fhigh.webp&w=750&q=100', 'Basic', 'Fire', 'Its magical and cute appeal has many admirers.'),
(6, 'Gyarados', 'Rare', 100, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F6%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Grass', 'Rarely seen in the wild.'),
(7, 'Hitmonchan', 'Rare', 70, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F7%2Fhigh.webp&w=750&q=100', 'Basic', 'Psychic', 'While seeming to do nothing it fires punches lightening fast!.'),
(8, 'Machamp', 'Rare', 100, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F8%2Fhigh.webp&w=750&q=100', 'Basic', 'Psychic', 'Using its amazing muscles it throws powerful punches that can knock its victim clear.'),
(9, 'Magneton', 'Rare', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F9%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Fire', 'Formed by several Magnemites linked together.'),
(10, 'Mewtwo', 'Rare', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F10%2Fhigh.webp&w=750&q=100', 'Basic', 'Psychic', 'A scientist created this Pokemon after years of DNA engineering'),
(11, 'Nidoking', 'Rare', 90, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F11%2Fhigh.webp&w=750&q=100', 'Stage 2', 'Psychic', 'Uses its powerful tail in battle to smash'),
(12, 'Ninetales', 'Rare', 80, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F12%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Water', 'Very smart and very vengeful.'),
(13, 'Raichu', 'Rare', 80, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F14%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Fire', 'Its long tail protects itself!'),
(14, 'Beedrill', 'Rare', 80, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F17%2Fhigh.webp&w=750&q=100', 'Stage 2', 'Fire', 'Flies at high speed and attacks using stingers'),
(15, 'Dugtrio', 'Rare', 70, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F19%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Grass', 'A team of Diglett triplets'),
(16, 'Arcanine', 'Uncommon', 100, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F23%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Water', 'A Pokémon that has been long admired for its beauty'),
(17, 'Dewgong', 'Uncommon', 80, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F25%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Electricity', 'Stores thermal energy in its body'),
(18, 'Dratini', 'Uncommon', 40, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F26%2Fhigh.webp&w=750&q=100', 'Basic', 'Ice', 'Long considered mythical'),
(19, 'Venusaur', 'Rare', 100, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F15%2Fhigh.webp&w=750&q=100', 'Stage 2', 'Fire', 'This plant blooms when it is absorbing solar energy.'),
(20, 'Zapdos', 'Rare', 90, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F16%2Fhigh.webp&w=750&q=100', 'Basic', 'Ice', 'A legendary bird'),
(21, 'Dragonair', 'Rare', 80, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F18%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Ice', 'Exudes a gentle aura'),
(22, 'Electabuzz', 'Rare', 70, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F20%2Fhigh.webp&w=750&q=100', 'Basic', 'Fire', 'Normally found near power plants'),
(23, 'Pidgeotto', 'Rare', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F22%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Electricity', 'Very protective'),
(24, 'Charmeleon', 'Uncommon', 80, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F24%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Water', 'When it swings its burning tail...run!'),
(25, 'Farfetch\'d', 'Uncommon', 50, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F27%2Fhigh.webp&w=750&q=100', 'Basic', 'Electricity', 'The sprig of green onions it holds'),
(26, 'Growlithe', 'Uncommon', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F28%2Fhigh.webp&w=750&q=100', 'Basic', 'Water', 'Very protective of its territory'),
(27, 'Haunter', 'Uncommon', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F29%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Ice', 'Because of its ability to slip through block walls, it is said to be from another dimension'),
(28, 'Ivysaur', 'Uncommon', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F30%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Fire', 'When the bulb on its back grows large, the Pokémon loses its ability to stand on its hind legs'),
(29, 'Jynx', 'Uncommon', 70, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F31%2Fhigh.webp&w=750&q=100', 'Basic', 'Psychic', 'Merely by meditating, the Pokémon launches a powerful attack'),
(30, 'Magikarp', 'Uncommon', 30, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F35%2Fhigh.webp&w=750&q=100', 'Basic', 'Electricity', 'In the distant past, it was stronger than it is now'),
(31, 'Poliwhirl', 'Uncommon', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F38%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Grass', 'Capable of living in or out of water'),
(32, 'Raticate', 'Uncommon', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F40%2Fhigh.webp&w=750&q=100', 'Stage 1', 'Fire', 'It uses its whiskers for balance'),
(33, 'Seel', 'Uncommon', 60, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F41%2Fhigh.webp&w=750&q=100', 'Basic', 'Eletricity', 'Bashes through ice with its horn!'),
(34, 'Albra', 'Common', 30, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F43%2Fhigh.webp&w=750&q=100', 'Basic', 'Psychic', 'Reads Minds'),
(35, 'Bulbasaur', 'Common', 40, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F44%2Fhigh.webp&w=750&q=100', 'Basic', 'Fire', 'A strange seed was planted on its back!'),
(36, 'Caterpie', 'Common', 40, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F45%2Fhigh.webp&w=750&q=100', 'Basic', 'Fire', 'Its short feet are sucction pads'),
(37, 'Charmander', 'Common', 50, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F46%2Fhigh.webp&w=750&q=100', 'Basic', 'Water', 'Prefers hot places'),
(38, 'Diglett', 'Common', 30, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F47%2Fhigh.webp&w=750&q=100', 'Basic', 'Grass', 'Lives about three feet underground'),
(39, 'Gastly', 'Common', 30, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F50%2Fhigh.webp&w=750&q=100', 'Basic', 'Ice', 'almost invisable!'),
(40, 'Pidgey', 'Common', 40, 'https://www.tcgdex.net/_next/image?url=https%3A%2F%2Fassets.tcgdex.net%2Fen%2Fbase%2Fbase1%2F57%2Fhigh.webp&w=750&q=100', 'Basic', 'Eletricity', 'Tweet tweet!');

-- --------------------------------------------------------

--
-- Table structure for table `CardTypes`
--

CREATE TABLE `CardTypes` (
  `CardID` int(11) NOT NULL,
  `TypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CardTypes`
--

INSERT INTO `CardTypes` (`CardID`, `TypeID`) VALUES
(2, 1),
(6, 1),
(17, 1),
(30, 1),
(31, 1),
(33, 1),
(9, 3),
(13, 3),
(20, 3),
(22, 3),
(1, 4),
(10, 4),
(29, 4),
(34, 4),
(4, 5),
(12, 5),
(16, 5),
(24, 5),
(26, 5),
(37, 5),
(19, 6),
(28, 6),
(35, 6),
(18, 7),
(21, 7),
(40, 8),
(14, 9),
(36, 9),
(3, 10),
(25, 10),
(32, 10),
(40, 10),
(5, 11),
(11, 12),
(15, 12),
(23, 12),
(38, 12),
(27, 13),
(39, 13),
(8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionItems`
--

CREATE TABLE `CollectionItems` (
  `CollectionItemID` int(11) NOT NULL,
  `CollectionID` int(11) DEFAULT NULL,
  `CardID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Collections`
--

CREATE TABLE `Collections` (
  `CollectionID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CardID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text,
  `Public` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `CommentID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CardID` int(11) DEFAULT NULL,
  `CollectionID` int(11) DEFAULT NULL,
  `Content` text NOT NULL,
  `CommentDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Likes`
--

CREATE TABLE `Likes` (
  `LikeID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CardID` int(11) DEFAULT NULL,
  `CollectionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Types`
--

CREATE TABLE `Types` (
  `TypeID` int(11) NOT NULL,
  `TypeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Types`
--

INSERT INTO `Types` (`TypeID`, `TypeName`) VALUES
(1, 'Water'),
(3, 'Electricity'),
(4, 'Psychic'),
(5, 'Fire'),
(6, 'Grass'),
(7, 'Dragon'),
(8, 'Colourless'),
(9, 'Bug'),
(10, 'Normal'),
(11, 'Fairy'),
(12, 'Ground'),
(13, 'Ghost'),
(14, 'Fighting');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `SecondName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `Username`, `FirstName`, `SecondName`, `Password`, `Email`) VALUES
(1, 'TheCreator', 'Satoshi ', 'Tajiri', 'pikachu123', 'pokemonisbetterthanyughiou@gmail.com'),
(2, 'a', 'a', 'a', 'a', 'a'),
(4, 'b', 'b', 'b', 'b', 'b'),
(6, 'c', 'c', 'c', 'c', 'c'),
(7, 'cd', 'cd', 'cd', 'd', 'cd'),
(8, 'e', 'e', 'e', 'e', 'e'),
(9, 'f', 'f', 'f', 'f', 'f'),
(10, 'g', 'g', 'g', 'g', 'g'),
(11, 'z', 'z', 'z', 'z', 'z'),
(13, 'x', 'x', 'x', 'x', 'x'),
(15, 'v', 'v', 'v', 'v', 'v'),
(16, 'k', 'k', 'k', 'k', 'k');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AttackCosts`
--
ALTER TABLE `AttackCosts`
  ADD PRIMARY KEY (`AttackCostID`),
  ADD KEY `AttackID` (`AttackID`);

--
-- Indexes for table `Attacks`
--
ALTER TABLE `Attacks`
  ADD PRIMARY KEY (`AttackID`),
  ADD KEY `CardID` (`CardID`);

--
-- Indexes for table `Cards`
--
ALTER TABLE `Cards`
  ADD PRIMARY KEY (`CardID`);

--
-- Indexes for table `CardTypes`
--
ALTER TABLE `CardTypes`
  ADD PRIMARY KEY (`CardID`,`TypeID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Indexes for table `CollectionItems`
--
ALTER TABLE `CollectionItems`
  ADD PRIMARY KEY (`CollectionItemID`),
  ADD KEY `CollectionID` (`CollectionID`),
  ADD KEY `CardID` (`CardID`);

--
-- Indexes for table `Collections`
--
ALTER TABLE `Collections`
  ADD PRIMARY KEY (`CollectionID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `fk_Collection_CardID` (`CardID`);

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CardID` (`CardID`),
  ADD KEY `CollectionID` (`CollectionID`);

--
-- Indexes for table `Likes`
--
ALTER TABLE `Likes`
  ADD PRIMARY KEY (`LikeID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CardID` (`CardID`),
  ADD KEY `CollectionID` (`CollectionID`);

--
-- Indexes for table `Types`
--
ALTER TABLE `Types`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `FirstName` (`FirstName`),
  ADD UNIQUE KEY `SecondName` (`SecondName`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AttackCosts`
--
ALTER TABLE `AttackCosts`
  MODIFY `AttackCostID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Attacks`
--
ALTER TABLE `Attacks`
  MODIFY `AttackID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Cards`
--
ALTER TABLE `Cards`
  MODIFY `CardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `CollectionItems`
--
ALTER TABLE `CollectionItems`
  MODIFY `CollectionItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Collections`
--
ALTER TABLE `Collections`
  MODIFY `CollectionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Likes`
--
ALTER TABLE `Likes`
  MODIFY `LikeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Types`
--
ALTER TABLE `Types`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AttackCosts`
--
ALTER TABLE `AttackCosts`
  ADD CONSTRAINT `attackcosts_ibfk_1` FOREIGN KEY (`AttackID`) REFERENCES `Attacks` (`AttackID`) ON DELETE CASCADE;

--
-- Constraints for table `Attacks`
--
ALTER TABLE `Attacks`
  ADD CONSTRAINT `attacks_ibfk_1` FOREIGN KEY (`CardID`) REFERENCES `Cards` (`CardID`) ON DELETE CASCADE;

--
-- Constraints for table `CardTypes`
--
ALTER TABLE `CardTypes`
  ADD CONSTRAINT `cardtypes_ibfk_1` FOREIGN KEY (`CardID`) REFERENCES `Cards` (`CardID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cardtypes_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `Types` (`TypeID`);

--
-- Constraints for table `CollectionItems`
--
ALTER TABLE `CollectionItems`
  ADD CONSTRAINT `collectionitems_ibfk_1` FOREIGN KEY (`CollectionID`) REFERENCES `Collections` (`CollectionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `collectionitems_ibfk_2` FOREIGN KEY (`CardID`) REFERENCES `Cards` (`CardID`) ON DELETE CASCADE;

--
-- Constraints for table `Collections`
--
ALTER TABLE `Collections`
  ADD CONSTRAINT `collections_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_Collection_CardID` FOREIGN KEY (`CardID`) REFERENCES `Cards` (`CardID`);

--
-- Constraints for table `Comments`
--
ALTER TABLE `Comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`CardID`) REFERENCES `Cards` (`CardID`) ON DELETE SET NULL,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`CollectionID`) REFERENCES `Collections` (`CollectionID`) ON DELETE SET NULL;

--
-- Constraints for table `Likes`
--
ALTER TABLE `Likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`CardID`) REFERENCES `Cards` (`CardID`) ON DELETE SET NULL,
  ADD CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`CollectionID`) REFERENCES `Collections` (`CollectionID`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
