-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 16 juil. 2022 à 18:38
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `commandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` mediumint(9) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Sexe` varchar(30) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Ville` varchar(30) NOT NULL,
  `Num_Tel` int(11) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Marque_commandée` varchar(30) NOT NULL,
  `Date_commandée` varchar(50) NOT NULL,
  `Montantunitaire` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `Nom`, `Prenom`, `Sexe`, `Adresse`, `Ville`, `Num_Tel`, `Mail`, `Marque_commandée`, `Date_commandée`, `Montantunitaire`) VALUES
(1, 'Kabore', 'ami', 'feminin', 'rue-du-courage', 'banfora', 102587, 'mouni@gmail.com', 'rav4', '12/5/2021', 0),
(2, 'kibora', 'dyhb', 'mhf', 'rue  de la liberte', 'Paris', 147852, 'mo@gmail.com', 'dfghjkl', '2022-07-07', 0),
(3, 'Sawadogo', 'Sophie', 'feminin', 'amour', 'Orodara', 147852, 'chou@gmail.com', 'dfghjkl', '2022-07-12', 0),
(4, 'toureudy', 'Anne', 'feminin', 'Rue du courage', 'Paris', 147852, 'mo@gmail.com', 'ehilea', '2022-07-04', 0),
(5, 'traore', 'Minata', 'feminin', 'rue de lavenue', 'Dubai', 78459612, 'dubai@gmail.com', 'rav4', '2022-07-26', 0),
(6, 'Dao', 'Aïchatou', 'feminin', 'Sect 15', 'Banfora', 78963215, 'aicha@gmail.com', 'lexus', '2022-07-06', 0),
(7, 'Dao', 'Aïchatou', 'feminin', 'Sect 15', 'Banfora', 78963215, 'aicha@gmail.com', 'lexus', '2022-07-06', 0),
(8, 'ks', 'mimi', 'feminin', 'amour', 'Orodara', 147852, 'chou@gmail.com', 'lexus', '2022-07-06', 0),
(9, 'ks', 'mimi', 'feminin', 'amour', 'Orodara', 147852, 'chou@gmail.com', 'lexus', '2022-07-06', 0),
(10, 'Toe', 'sdfghjk', 'masculin', 'Sect 15', 'Orodara', 78963215, 'chou@gmail.com', 'qsdfghjkl', '2022-08-07', 0),
(11, 'Toe', 'sdfghjk', 'masculin', 'Sect 15', 'Orodara', 78963215, 'chou@gmail.com', 'qsdfghjkl', '2022-08-07', 0),
(12, 'Toe', 'sdfghjk', 'masculin', 'Sect 15', 'Orodara', 78963215, 'chou@gmail.com', 'qsdfghjkl', '2022-08-07', 0),
(14, 'rtyijhjg', 'dsb', 'feminin', 'dfghjk', 'Koudougou', 78963215, 'aicha@gmail.com', 'lexus', '2022-07-12', 0),
(15, 'ks', 'mimi', 'feminin', 'amour', 'Orodara', 147852, 'chou@gmail.com', 'lexus', '2022-07-06', 478965),
(16, 'ks', 'mimi', 'feminin', 'amour', 'Orodara', 147852, 'chou@gmail.com', 'lexus', '2022-07-06', 478965),
(17, 'ykfvhj', 'sdfghjk', 'feminin', 'Sect 15', 'Dubai', 147852, 'aicha@gmail.com', 'lexus', '2022-07-19', 478965),
(18, 'tou', 'Sophie', 'feminin', 'Sect 15', 'Orodara', 147852, 'aicha@gmail.com', 'lexus', '2022-07-18', 478965),
(19, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(20, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(21, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(22, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(23, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(24, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(25, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(26, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(27, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(28, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(29, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(30, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(31, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(32, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(33, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(34, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(35, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(36, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(37, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(38, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(39, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(40, 'sanou', 'estelle', 'feminin', 'sect14', 'Koudougou', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(41, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(42, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(43, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(44, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(45, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(46, 'sanou', 'estelle', 'feminin', 'sect14', 'dori', 75487500, 'dori@gmail.com', 'lexus', '2022-07-27', 752563256),
(47, 'Sawadogo', 'marie', 'feminin', 'sect12', 'dori', 78191236, 'marie@gmail.com', 'rav4', '2022-07-11', 14587),
(48, 'tou', 'Sophie', 'feminin', 'Sect 15', 'Orodara', 147852, 'aicha@gmail.com', 'lexus', '2022-07-18', 478965),
(49, 'Kabore', 'cherif', 'masculin', 'sect25', 'bobo', 78495678, 'cherif@gmail.com', 'toyota', '2022-07-04', 125478),
(50, 'tou', 'cherif', 'masculin', 'Rue du courage', 'Orodara', 895421, 'h@gmail.com', 'rav4', '2022-07-11', 435555555),
(51, 'Toe', 'cherif', 'masculin', 'Sect 15', 'Orodara', 78963215, 'h@gmail.com', 'lexus', '2022-07-11', 478965),
(52, 'Toe', 'cherif', 'masculin', 'Sect 15', 'Orodara', 78963215, 'h@gmail.com', 'lexus', '2022-07-11', 478965),
(53, 'fofana', 'abou', 'masculin', 'Sect 15', 'Banfora', 78963215, 'ddd@gmail.com', 'rav4', '2022-07-12', 1),
(54, 'traore', 'Sophie', 'masculin', 'Sect 15', 'Paris', 78963215, 'h@gmail.com', 'lexus', '2022-06-27', 1),
(55, 'Dao', 'cherif', 'masculin', 'Sect 15', 'Banfora', 75487500, 'h@gmail.com', 'lexus', '2022-06-28', 1),
(56, 'tou', 'cherif', 'masculin', 'Sect 15', 'Orodara', 78963215, 'h@gmail.com', 'lexus', '2022-07-01', 0),
(57, 'tou', 'cherif', 'masculin', 'Sect 15', 'Banfora', 78963215, 'h@gmail.com', 'rav4', '2022-07-11', 1),
(58, 'Toe', 'ABIBA', 'feminin', 'sect12', 'Orodara', 75487500, 'h@gmail.com', 'lexus', '2022-08-03', 1),
(59, 'traore', 'sdfghjk', 'feminin', 'dfghjk', 'Banfora', 147852, 'aicha@gmail.com', 'dfghjkl', '2022-07-12', 1),
(60, 'Toe', 'ABIBA', 'feminin', 'Sect 15', 'dori', 147852, 'h@gmail.com', 'lexus', '2022-06-28', 0),
(61, 'traore', 'mimi', 'feminin', 'sect12', 'Orodara', 147852, 'aicha@gmail.com', 'rav4', '2022-07-19', 1),
(62, 'traore', 'ABIBA', 'masculin', 'amour', 'Orodara', 147852, 'aicha@gmail.com', 'rav4', '2022-07-05', 1),
(63, 'Soulama', 'Oumar', 'masculin', 'yopougon rue 19e', 'Abidjan', 56897412, 'oumarsoul@gmail.com', 'Mazda', '2022-06-27', 478965),
(64, 'Soulama', 'Oumar', 'masculin', 'yopougon rue 19e', 'Abidjan', 56897412, 'oumarsoul@gmail.com', 'Mazda', '2022-06-27', 600000),
(65, 'Poda', 'Junior', 'masculin', 'sect 23', 'bobo', 56932145, 'junior@gmail.com', 'range rover', '2022-06-28', 20000000),
(66, 'traore', 'cherif', 'masculin', 'Sect 15', 'Banfora', 78963215, 'mo@gmail.com', 'rav4', '2022-07-05', 1),
(67, 'traore', 'cherif', 'feminin', 'Sect 15', 'Banfora', 78963215, 'h@gmail.com', 'lexus', '2022-07-06', 478965),
(68, 'Dao', 'Sophie', 'feminin', 'Sect 15', 'Abidjan', 78963215, 'aicha@gmail.com', 'lexus', '2022-07-26', 478965),
(69, 'Sory', 'Emmanuel', 'masculin', 'ouaga1', 'bobo', 77254825, 'chou@gmail.com', 'lexus', '2022-08-05', 125478),
(70, 'Toe', 'ABIBA', 'feminin', 'Sect 15', 'Banfora', 78963215, 'h@gmail.com', 'rav4', '2022-07-26', 20000000),
(71, 'traore', 'sdfghjk', 'feminin', 'amour', 'Orodara', 78963215, 'h@gmail.com', 'lexus', '2022-07-26', 14587),
(72, 'Dao', 'Emmanuel', 'masculin', 'Sect 15', 'Dubai', 78963215, 'chou@gmail.com', 'qsdfghjkl', '2022-07-26', 20000000),
(73, 'traore', 'sdfghjk', 'feminin', 'Sect 15', 'Banfora', 78963215, 'h@gmail.com', 'lexus', '2022-07-26', 14587),
(74, 'sangare', 'armel', 'masculin', 'bobo2', 'bobo', 77254825, 'paris@gmail.com', 'lexus', '2022-07-20', 124587),
(75, 'dfcghj', 'sdfghj', 'dfghjk', 'dfghj', 'sdfghjk', 0, 'marie@gmail.com', 'ghjk', '2022-07-06', 0),
(76, 'dfghj', 'sdfghjk', 'ghjk', 'dfghjk', 'dfghjk', 0, 'chou@gmail.com', 'dfghj', '2022-07-27', 0),
(77, 'traore', 'ABIBA', 'feminin', 'amour', 'Orodara', 78963215, 'marie@gmail.com', 'lexus', '2022-07-26', 125478),
(78, 'Dao', 'cherif', 'feminin', 'Sect 15', 'Banfora', 147852, 'h@gmail.com', 'lexus', '2022-07-27', 14587),
(79, 'traore', 'cherif', 'feminin', 'Sect 15', 'Banfora', 78963215, 'h@gmail.com', 'lexus', '2022-07-19', 125478),
(80, 'Dao', 'Sophie', 'feminin', 'bobo2', 'dori', 78963215, 'aicha@gmail.com', 'lexus', '2022-08-06', 478965),
(81, 'traore', 'cherif', 'masculin', 'Sect 15', 'Banfora', 78963215, 'aicha@gmail.com', 'lexus', '2022-07-20', 20000000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
