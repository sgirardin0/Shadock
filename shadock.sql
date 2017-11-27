-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 12 nov. 2017 à 13:30
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `shadock`
--
CREATE DATABASE IF NOT EXISTS `shadock` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shadock`;

-- --------------------------------------------------------

--
-- Structure de la table `branche`
--

CREATE TABLE `branche` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `branche`
--

INSERT INTO `branche` (`b_id`, `b_name`) VALUES
(1, 'Branche n°1'),
(2, 'Branche n°2'),
(3, 'Branche n°3'),
(4, 'Branche n°4'),
(5, 'Branche n°1-1'),
(6, 'Branche n°1-2'),
(7, 'Branche n°2-1'),
(8, 'Branche n°2-2'),
(9, 'GaBuZoMe');

-- --------------------------------------------------------

--
-- Structure de la table `branche_rel`
--

CREATE TABLE `branche_rel` (
  `b_id` int(11) NOT NULL,
  `b_id_branche` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `branche_rel`
--

INSERT INTO `branche_rel` (`b_id`, `b_id_branche`) VALUES
(1, 5),
(1, 6),
(2, 7),
(2, 8);

-- --------------------------------------------------------

--
-- Structure de la table `caracteristique`
--

CREATE TABLE `caracteristique` (
  `c_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `caracteristique`
--

INSERT INTO `caracteristique` (`c_name`) VALUES
('couleur'),
('forme'),
('taille');

-- --------------------------------------------------------

--
-- Structure de la table `caracteristique_val`
--

CREATE TABLE `caracteristique_val` (
  `cv_id` int(11) NOT NULL,
  `cv_value` varchar(64) DEFAULT NULL,
  `c_name` varchar(64) DEFAULT NULL,
  `n_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `caracteristique_val`
--

INSERT INTO `caracteristique_val` (`cv_id`, `cv_value`, `c_name`, `n_id`) VALUES
(5, 'bleu', 'couleur', 2),
(2, 'rouge', 'couleur', 1),
(7, 'rouge', 'couleur', 3),
(11, 'rouge', 'couleur', 5),
(9, 'vert', 'couleur', 4),
(10, 'carré', 'forme', 5),
(4, 'casserole', 'forme', 2),
(6, 'casserole', 'forme', 3),
(8, 'casserole', 'forme', 4),
(1, 'triangle', 'forme', 1),
(3, 'grand', 'taille', 1),
(13, 'petit', 'taille', 5);

-- --------------------------------------------------------

--
-- Structure de la table `nid`
--

CREATE TABLE `nid` (
  `n_id` int(11) NOT NULL,
  `n_name` varchar(128) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nid`
--

INSERT INTO `nid` (`n_id`, `n_name`, `b_id`) VALUES
(1, 'Nid 1', 1),
(2, 'Nid 2', 5),
(3, 'Nid 3', 2),
(4, 'Nid 4', 5),
(5, 'Nid 5', 2),
(6, 'Nid 6', 1),
(9, 'Nid 7', 9),
(10, 'Nid 8', 9),
(11, 'Nid 9', 9),
(12, 'Nid 10', 9);

-- --------------------------------------------------------

--
-- Structure de la table `shadock`
--

CREATE TABLE `shadock` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(128) DEFAULT NULL,
  `s_date_nid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `n_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `shadock`
--

INSERT INTO `shadock` (`s_id`, `s_name`, `s_date_nid`, `n_id`) VALUES
(21, 'Shadock 1', '2017-11-13 09:08:32', 1),
(22, 'Shadock 2', '2017-11-22 14:05:32', 1),
(23, 'Shadock 3', '2017-11-01 08:23:42', 1),
(24, 'Shadock 4', '2018-02-08 14:05:32', 2),
(25, 'Shadock 5', '2017-11-09 14:05:32', 2),
(26, 'Shadock 6', '2017-10-24 03:23:25', 2),
(27, 'Shadock 7', '2017-08-06 04:20:32', 2),
(28, 'Shadock 8', '2017-08-31 07:22:18', 2),
(29, 'Shadock 9', '2017-07-12 05:23:15', 3),
(30, 'Shadock 10', '2018-03-16 08:20:22', 3),
(31, 'Shadock 11', '2018-02-14 06:21:20', 4),
(32, 'Shadock 12', '2018-04-11 07:19:32', 4),
(33, 'Shadock 13', '2018-05-10 06:21:14', 4),
(34, 'Shadock 14', '2018-02-12 07:19:15', 4),
(35, 'Shadock 15', '2017-11-03 09:16:16', 5),
(36, 'Shadock 16', '2017-11-05 04:20:21', 5),
(37, 'Shadock 17', '2018-06-05 04:20:15', 5),
(38, 'Shadock 18', '2018-06-22 05:18:18', 5),
(39, 'Shadock 19', '2018-02-20 14:20:32', 5),
(40, 'Shadock 20', '2018-07-11 04:20:12', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `branche`
--
ALTER TABLE `branche`
  ADD PRIMARY KEY (`b_id`);

--
-- Index pour la table `branche_rel`
--
ALTER TABLE `branche_rel`
  ADD PRIMARY KEY (`b_id`,`b_id_branche`),
  ADD KEY `b_id_branche` (`b_id_branche`);

--
-- Index pour la table `caracteristique`
--
ALTER TABLE `caracteristique`
  ADD PRIMARY KEY (`c_name`),
  ADD UNIQUE KEY `c_name` (`c_name`),
  ADD KEY `c_name_2` (`c_name`);

--
-- Index pour la table `caracteristique_val`
--
ALTER TABLE `caracteristique_val`
  ADD PRIMARY KEY (`cv_id`),
  ADD UNIQUE KEY `UC_caracteristique` (`c_name`,`cv_value`,`n_id`),
  ADD KEY `cv_name` (`c_name`),
  ADD KEY `n_id` (`n_id`);

--
-- Index pour la table `nid`
--
ALTER TABLE `nid`
  ADD PRIMARY KEY (`n_id`),
  ADD KEY `b_id` (`b_id`);

--
-- Index pour la table `shadock`
--
ALTER TABLE `shadock`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `n_id` (`n_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `branche`
--
ALTER TABLE `branche`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `caracteristique_val`
--
ALTER TABLE `caracteristique_val`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `nid`
--
ALTER TABLE `nid`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `shadock`
--
ALTER TABLE `shadock`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `branche_rel`
--
ALTER TABLE `branche_rel`
  ADD CONSTRAINT `branche_rel_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `branche` (`b_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `branche_rel_ibfk_2` FOREIGN KEY (`b_id_branche`) REFERENCES `branche` (`b_id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `caracteristique_val`
--
ALTER TABLE `caracteristique_val`
  ADD CONSTRAINT `caracteristique_val_ibfk_1` FOREIGN KEY (`c_name`) REFERENCES `caracteristique` (`c_name`),
  ADD CONSTRAINT `caracteristique_val_ibfk_2` FOREIGN KEY (`n_id`) REFERENCES `nid` (`n_id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `nid`
--
ALTER TABLE `nid`
  ADD CONSTRAINT `nid_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `branche` (`b_id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `shadock`
--
ALTER TABLE `shadock`
  ADD CONSTRAINT `shadock_ibfk_1` FOREIGN KEY (`n_id`) REFERENCES `nid` (`n_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
