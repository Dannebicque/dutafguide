-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 03 avr. 2018 à 10:33
-- Version du serveur :  5.5.59-0+deb8u1
-- Version de PHP :  5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fmeuzeret_2014d`
--

-- --------------------------------------------------------

--
-- Structure de la table `depanneurs`
--

CREATE TABLE `depanneurs` (
  `dep_id` int(11) NOT NULL,
  `dep_nom` char(20) DEFAULT NULL,
  `dep_prenom` char(20) DEFAULT NULL,
  `dep_age` int(11) DEFAULT NULL,
  `dep_tel` char(15) DEFAULT NULL,
  `dep_categorie` varchar(30) NOT NULL,
  `salaire` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `depanneurs`
--

INSERT INTO `depanneurs` (`dep_id`, `dep_nom`, `dep_prenom`, `dep_age`, `dep_tel`, `dep_categorie`, `salaire`) VALUES
(1, 'ANTOINE', 'Sylvain', 23, '03.25.75.59.60', 'Electricien', 1495),
(2, 'Arganini', 'Philippe', 22, '03.25.75.59.83', 'Chauffagiste', 1430),
(3, 'ARNAUD', 'Abdelazziz', 24, '03.25.75.59.43', 'Plomberie', 1560),
(4, 'ARONICA', 'Estela', 27, '03.25.75.59.41', 'Electricien', 1755),
(5, 'Aubert', 'Elodie', 32, '03.25.75.59.38', 'Electricien', 2080),
(6, 'BARON', 'Puthy', 21, '03.25.75.59.34', 'Plomberie', 1365),
(7, 'BARTHELEMY', 'Habib', 34, '03.25.75.59.97', 'Electricien', 2210),
(8, 'Bauser', 'Marie Jeanne', 26, '03.25.21.59.11', 'Chauffagiste', 1690),
(9, 'Belloir', 'Jean-Philippe', 23, '03.25.75.59.10', 'Plomberie', 1495),
(10, 'BEUGNOT', 'Aude', 39, '03.25.75.59.02', 'Plomberie', 2535),
(11, 'BIENAIME', 'Marc', 25, '03.25.21.59.10', 'Chauffagiste', 1625),
(12, 'BILLARD', 'Nicolas', 42, '03.25.21.59.09', 'Plomberie', 2730),
(13, 'BINANT', 'Nicolas', 39, '03.25.75.59.70', 'Electricien', 2535),
(14, 'Blondel', 'Karim', 27, '03.25.21.59.37', 'Chauffagiste', 1755),
(15, 'Boulin', 'Nicolas', 29, '03.25.75.59.33', 'Plomberie', 1885),
(16, 'BOUVRON', 'Karine', 23, '03.25.75.59.20', 'Electricien', 1495),
(17, 'BROUILLARD', 'Elodie', 22, '03.25.75.59.19', 'Chauffagiste', 1430),
(18, 'BUI', 'Nicolas', 24, '03.25.21.59.22', 'Chauffagiste', 1560),
(19, 'CAMILLINI', 'Sylvie', 27, '03.25.75.59.03', 'Electricien', 1755),
(20, 'CAPELA', 'Nicole', 32, '03.25.75.59.82', 'Chauffagiste', 2080),
(21, 'CHAN', 'Kenan', 21, '03.25.21.59.36', 'Plomberie', 1365),
(22, 'CHARIGNON', 'Audrey', 34, '03.25.75.59.32', 'Electricien', 2210),
(23, 'Chibout', 'Marc', 26, '03.25.75.59.04', 'Electricien', 1690),
(24, 'CLAVERIE', 'Catherine', 23, '03.25.75.59.96', 'Plomberie', 1495),
(25, 'CLEMONT', 'Marc', 39, '03.25.21.59.21', 'Electricien', 2535),
(26, 'Colas', 'Jean-philippe', 25, '03.25.21.59.35', 'Chauffagiste', 1625),
(27, 'COLLARD', 'Karim', 42, '03.25.75.59.63', 'Plomberie', 2730),
(28, 'COLSON', 'Marc', 39, '03.25.21.59.41', 'Plomberie', 2535),
(29, 'COLY', 'Celine', 27, '03.25.75.59.18', 'Chauffagiste', 1755),
(30, 'COMANDINI', 'Thanoulom', 29, '03.25.75.59.95', 'Plomberie', 1885),
(31, 'COURRET', 'Jean-Vincent', 23, '03.25.75.59.69', 'Electricien', 1495),
(32, 'COUSTILLET', 'Kim Pascal', 22, '03.25.75.59.17', 'Chauffagiste', 1430),
(33, 'COUTROT', 'Jean-Vincent', 24, '03.25.75.59.53', 'Plomberie', 1560),
(34, 'CROSSETTE', 'Elske', 27, '03.25.75.59.51', 'Electricien', 1755),
(35, 'DAGORN', 'Fabrice', 32, '03.25.75.59.05', 'Chauffagiste', 2080),
(36, 'DAGUET', 'Alexandre', 21, '03.25.21.59.34', 'Chauffagiste', 1365),
(37, 'DANGIN', 'Olivier', 34, '03.25.75.59.50', 'Electricien', 2210),
(38, 'DELOYE', 'autre', 26, '03.25.75.59.09', 'Chauffagiste', 1690),
(39, 'DENG', 'Alexandre', 23, '03.25.75.59.94', 'Plomberie', 1495),
(40, 'DHAM', 'Karine', 39, '03.25.75.59.06', 'Electricien', 2535),
(41, 'DIEHL', 'Guillaume', 25, '03.25.75.59.59', 'Electricien', 1625),
(42, 'DINQUEL', 'Audrey', 42, '03.25.75.59.52', 'Plomberie', 2730),
(43, 'DUBERY', 'Alexandre', 39, '03.25.21.59.20', 'Electricien', 2535),
(44, 'DUFOUR', 'Mario', 27, '03.25.75.59.58', 'Chauffagiste', 1755),
(45, 'ESCHARD', 'Baptiste', 29, '03.25.75.59.08', 'Plomberie', 1885),
(46, 'ESSIG', 'Nicolas', 23, '03.25.21.59.08', 'Plomberie', 1495),
(47, 'Essounbouli', 'Nicolas', 22, '03.25.75.59.07', 'Chauffagiste', 1430),
(48, 'FAVRE', 'Karim', 24, '03.25.75.59.37', 'Plomberie', 1560),
(49, 'FERRIER', 'Nicolas', 27, '03.25.75.59.31', 'Electricien', 1755),
(50, 'FERU', 'Karine', 32, '03.25.21.59.19', 'Chauffagiste', 2080),
(51, 'FISCH', 'Elodie', 21, '03.25.75.59.29', 'Plomberie', 1365),
(52, 'FLIPON', 'Nicolas', 34, '03.25.75.59.29', 'Electricien', 2210),
(53, 'FONTAINE', 'Sylvie', 26, '03.25.75.59.09', 'Chauffagiste', 1690),
(54, 'Fort', 'Nicole', 23, '03.25.21.59.17', 'Chauffagiste', 1495),
(55, 'FOUCHARD', 'Kenan', 39, '03.25.75.59.29', 'Plomberie', 2535);

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE `entreprises` (
  `ent_id` int(11) NOT NULL,
  `ent_nom` varchar(30) NOT NULL,
  `ent_tel` varchar(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`ent_id`, `ent_nom`, `ent_tel`) VALUES
(1, 'BigBoss industrie', '03.25.75.59.28'),
(2, 'Html diffusion', '03.25.75.59.27'),
(3, 'CSS nettoyage', '03.25.75.59.48'),
(4, 'Kazino', '03.25.75.59.40'),
(5, 'Cas Refour', '03.25.75.59.90'),
(6, 'Biloute production', '03.25.21.59.28'),
(7, 'Bali Balou', '03.25.21.59.16'),
(8, 'Alcatoul', '03.25.75.59.77'),
(9, 'Bleu telecom', '03.25.75.59.54'),
(10, 'Gaz de Bretagne', '03.25.75.59.39'),
(11, 'Poule Normande', '03.25.75.59.26'),
(12, 'Boulons and co', '03.25.75.59.56'),
(13, 'Les vergers du lac', '03.25.75.59.89'),
(14, 'Bille de Clown', '03.25.75.59.42'),
(15, 'Sport plus', '03.25.75.59.04'),
(16, 'Addadas', '03.25.75.59.64'),
(17, 'Nailleke', '03.25.75.59.46');

-- --------------------------------------------------------

--
-- Structure de la table `interventions`
--

CREATE TABLE `interventions` (
  `inter_id` int(11) NOT NULL,
  `inter_distance` int(11) NOT NULL,
  `inter_action` varchar(100) NOT NULL,
  `inter_date` date NOT NULL,
  `_ent_id` int(11) NOT NULL,
  `_dep_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `interventions`
--

INSERT INTO `interventions` (`inter_id`, `inter_distance`, `inter_action`, `inter_date`, `_ent_id`, `_dep_id`) VALUES
(1, 29, 'reparation', '2018-03-12', 1, 21),
(2, 95, 'entretien', '2018-02-05', 8, 34),
(3, 37, 'verification', '2018-02-26', 11, 17),
(4, 13, 'verification', '2018-03-23', 1, 5),
(5, 104, 'entretien', '2018-01-18', 11, 47),
(6, 58, 'nettoyage', '2018-01-27', 16, 12),
(7, 77, 'reparation', '2018-03-12', 15, 49),
(8, 27, 'entretien', '2018-02-05', 6, 16),
(9, 22, 'verification', '2018-02-26', 5, 25),
(10, 77, 'urgence', '2018-03-23', 11, 24),
(11, 54, 'installation', '2018-01-18', 1, 22),
(12, 65, 'nettoyage', '2018-01-27', 1, 5),
(13, 41, 'urgence', '2018-03-12', 3, 14),
(14, 55, 'entretien', '2018-02-05', 3, 30),
(15, 34, 'verification', '2018-02-26', 8, 41),
(16, 80, 'urgence', '2018-03-23', 6, 45),
(17, 64, 'installation', '2018-01-18', 10, 30),
(18, 83, 'nettoyage', '2018-01-27', 12, 39),
(19, 108, 'reparation', '2018-03-23', 9, 18),
(20, 69, 'entretien', '2018-01-18', 7, 19),
(21, 81, 'verification', '2018-01-27', 3, 29),
(22, 21, 'urgence', '2018-03-12', 4, 1),
(23, 18, 'installation', '2018-02-05', 15, 41),
(24, 88, 'nettoyage', '2018-02-26', 12, 50),
(25, 102, 'reparation', '2018-03-23', 10, 15),
(26, 30, 'entretien', '2018-02-26', 9, 19),
(27, 109, 'verification', '2018-03-23', 2, 1),
(28, 70, 'verification', '2018-01-18', 3, 21),
(29, 102, 'entretien', '2018-01-27', 13, 18),
(30, 74, 'nettoyage', '2018-03-23', 1, 28),
(31, 68, 'reparation', '2018-01-18', 1, 50),
(32, 59, 'entretien', '2018-01-27', 3, 49),
(33, 78, 'verification', '2018-04-03', 11, 43),
(34, 104, 'urgence', '2018-03-23', 10, 49),
(35, 80, 'installation', '2018-01-18', 1, 8),
(36, 36, 'nettoyage', '2018-01-27', 11, 4),
(37, 98, 'urgence', '2018-03-23', 7, 28),
(38, 76, 'entretien', '2018-01-18', 3, 46),
(39, 45, 'verification', '2018-01-27', 13, 48),
(40, 106, 'urgence', '2018-04-03', 2, 27),
(41, 31, 'installation', '2018-01-18', 3, 51),
(42, 104, 'nettoyage', '2018-01-27', 6, 32),
(43, 83, 'reparation', '2018-03-12', 1, 27),
(44, 59, 'entretien', '2018-02-05', 10, 37),
(45, 65, 'verification', '2018-02-26', 12, 38),
(46, 23, 'urgence', '2018-03-23', 5, 9),
(47, 105, 'installation', '2018-02-26', 15, 8),
(48, 32, 'nettoyage', '2018-03-23', 1, 49),
(49, 72, 'reparation', '2018-01-18', 15, 53),
(50, 17, 'entretien', '2018-01-27', 4, 17),
(51, 96, 'verification', '2018-03-23', 5, 15),
(52, 13, 'verification', '2018-01-18', 15, 23),
(53, 99, 'entretien', '2018-01-27', 11, 6),
(54, 70, 'nettoyage', '2018-04-03', 15, 19),
(55, 101, 'reparation', '2018-03-23', 16, 14),
(56, 74, 'entretien', '2018-01-18', 3, 33),
(57, 41, 'verification', '2018-01-27', 7, 13),
(58, 96, 'urgence', '2018-03-23', 16, 27),
(59, 68, 'installation', '2018-01-18', 7, 9),
(60, 59, 'nettoyage', '2018-01-27', 2, 53),
(61, 105, 'urgence', '2018-04-03', 9, 41),
(62, 87, 'entretien', '2018-03-23', 11, 5),
(63, 70, 'verification', '2018-01-18', 3, 23),
(64, 11, 'urgence', '2018-01-27', 9, 11),
(65, 84, 'installation', '2018-03-23', 13, 29),
(66, 89, 'nettoyage', '2018-01-18', 11, 7),
(67, 74, 'reparation', '2018-01-27', 3, 42),
(68, 15, 'entretien', '2018-04-03', 10, 27),
(69, 57, 'verification', '2018-01-18', 16, 14),
(70, 95, 'urgence', '2018-01-27', 10, 23),
(71, 26, 'installation', '2018-03-12', 11, 34),
(72, 94, 'nettoyage', '2018-02-05', 15, 24),
(73, 42, 'reparation', '2018-02-26', 13, 34),
(74, 55, 'entretien', '2018-03-23', 3, 27),
(75, 41, 'verification', '2018-02-26', 12, 46),
(76, 88, 'verification', '2018-03-23', 8, 37),
(77, 92, 'entretien', '2018-01-18', 16, 35),
(78, 58, 'nettoyage', '2018-01-27', 11, 36),
(79, 84, 'reparation', '2018-03-23', 5, 3),
(80, 45, 'entretien', '2018-03-23', 6, 13),
(81, 18, 'verification', '2018-01-18', 14, 12),
(82, 104, 'urgence', '2018-01-27', 13, 52),
(83, 19, 'installation', '2018-03-23', 16, 53),
(84, 61, 'nettoyage', '2018-01-18', 6, 44),
(85, 101, 'urgence', '2018-01-27', 2, 17),
(86, 89, 'entretien', '2018-04-03', 9, 26),
(87, 91, 'verification', '2018-01-18', 10, 21),
(88, 79, 'urgence', '2018-01-27', 16, 32),
(89, 58, 'installation', '2018-03-12', 1, 36),
(90, 38, 'nettoyage', '2018-02-05', 12, 34),
(91, 74, 'reparation', '2018-02-26', 5, 46),
(92, 23, 'entretien', '2018-03-23', 2, 4),
(93, 20, 'verification', '2018-02-26', 11, 4),
(94, 47, 'urgence', '2018-03-23', 6, 27),
(95, 54, 'installation', '2018-01-18', 7, 47),
(96, 87, 'nettoyage', '2018-01-27', 14, 21),
(97, 43, 'reparation', '2018-03-23', 5, 10),
(98, 84, 'entretien', '2018-03-23', 11, 11),
(99, 104, 'verification', '2018-01-18', 8, 51),
(100, 61, 'verification', '2018-01-27', 9, 31),
(101, 53, 'entretien', '2018-03-23', 9, 14),
(102, 26, 'nettoyage', '2018-01-18', 13, 17);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `depanneurs`
--
ALTER TABLE `depanneurs`
  ADD PRIMARY KEY (`dep_id`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`ent_id`);

--
-- Index pour la table `interventions`
--
ALTER TABLE `interventions`
  ADD PRIMARY KEY (`inter_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `depanneurs`
--
ALTER TABLE `depanneurs`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `ent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `interventions`
--
ALTER TABLE `interventions`
  MODIFY `inter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
