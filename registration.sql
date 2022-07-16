-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 16 juil. 2022 à 18:43
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
-- Base de données : `commande`
--
CREATE DATABASE IF NOT EXISTS `commande` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `commande`;

-- --------------------------------------------------------

--
-- Structure de la table `commandee`
--

CREATE TABLE `commandee` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `secret`
--

CREATE TABLE `secret` (
  `id` int(11) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commandee`
--
ALTER TABLE `commandee`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `secret`
--
ALTER TABLE `secret`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commandee`
--
ALTER TABLE `commandee`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secret`
--
ALTER TABLE `secret`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données : `commandes`
--
CREATE DATABASE IF NOT EXISTS `commandes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `commandes`;

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
--
-- Base de données : `magasin`
--
CREATE DATABASE IF NOT EXISTS `magasin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `magasin`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` mediumint(9) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `age`, `adresse`, `ville`, `mail`) VALUES
(1, 'toure', 'Aichatou', 60, 'BanforaRue du bandji', 'Banfora', 'dao@aichatou.com'),
(2, 'tou', 'Awa', 25, 'rue de la liberte', 'Bobo', 'tou@gmail.com'),
(3, 'Coulibaly', 'Saydou', 20, 'rue de la joie', 'orodara', 'jus@gmail.com'),
(4, 'Kone', 'Amandine', 22, 'porte35', 'Gaoua', 'koneamandine@gmail.com'),
(5, 'tou', 'Herdogan', 23, 'rue du bonheur', 'Abidjan', 'herman@gmail.com'),
(6, 'Toure', 'Alta gracia', 26, 'paris porte 12', 'Paris', 'amie@gmail.com'),
(7, 'Egemen', 'Yaguiz', 43, 'rue de l\'esperance', 'Los Angeles', 'yaguizchou@gmail.com'),
(8, 'Shankiran', 'Fasilet', 55, 'rue de la joie', 'Ankara', 'brasdefer@gmail.com'),
(9, 'Gara', 'Neima', 15, 'rue de la renaissance', 'Russie', 'russe@gmail.com'),
(10, 'Soulama', 'Amidou', 18, 'rue de la fraternite', 'Yamoussoukro', 'amidou@gmail.com'),
(11, 'Kabore', 'Salif', 26, 'avenir', 'Koudougou', 'pinpin@gmail.com'),
(12, 'Toe', 'Sophie', 47, 'amour', 'Orodara', 'chou@gmail.com'),
(13, 'Toe', 'Sophie', 47, 'amour', 'Orodara', 'chou@gmail.com'),
(14, 'Sawadogo', 'Anne', 56, 'Rue du courage', 'Paris', 'paris@gmail.com'),
(15, 'Toe', 'Sophie', 47, 'amour', 'Orodara', 'chou@gmail.com');

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
  MODIFY `id_client` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Déchargement des données de la table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'mo', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"commande\",\"commandes\",\"magasin\",\"phpmyadmin\",\"registration\",\"sport\",\"suggestion\",\"test\",\"video\",\"zakat\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure de la table @TABLE@\",\"latex_structure_continued_caption\":\"Structure de la table @TABLE@ (suite)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenu de la table @TABLE@\",\"latex_data_continued_caption\":\"Contenu de la table @TABLE@ (suite)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Déchargement des données de la table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'client', 'table', 'commandes', ''),
('root', 'joueur', 'table', 'sport', '');

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"registration\",\"table\":\"users\"},{\"db\":\"commandes\",\"table\":\"client\"},{\"db\":\"suggestion\",\"table\":\"consultant\"},{\"db\":\"magasin\",\"table\":\"client\"},{\"db\":\"commande\",\"table\":\"commandee\"},{\"db\":\"commande\",\"table\":\"secret\"},{\"db\":\"sport\",\"table\":\"joueurs\"},{\"db\":\"video\",\"table\":\"user\"},{\"db\":\"sport\",\"table\":\"club\"},{\"db\":\"sport\",\"table\":\"coatch_personnel\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-07-16 16:10:42', '{\"Console\\/Mode\":\"show\",\"lang\":\"fr\",\"NavigationWidth\":219,\"Console\\/Height\":91.00200000000001}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `registration`
--
CREATE DATABASE IF NOT EXISTS `registration` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registration`;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Mounira', 'womounira@gmail.com', '94f88406690ddb814fa5c7d707e85e073b1e7b968e864f470fc3b7cf6c1e310b'),
(2, 'ami', 'ami@gmail.com', '5152cc21067154b896fa141c722693c01a0a71e777b36b563413a48cedac7183'),
(3, 'mounira', 'mounira@gmail.com', 'a60c61865b40ea589c151a1d03d151bb9e4bcb90c01829ebc038613fe8c7f9c2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de données : `sport`
--
CREATE DATABASE IF NOT EXISTS `sport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sport`;

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

CREATE TABLE `club` (
  `id_club` int(11) NOT NULL,
  `nom_club` varchar(255) NOT NULL,
  `president` varchar(255) NOT NULL,
  `discipline` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `club`
--

INSERT INTO `club` (`id_club`, `nom_club`, `president`, `discipline`) VALUES
(1, '', '', '0'),
(7, 'diademe', 'diarra', 'BASKET'),
(13, 'rcb', 'soul', 'FOOT');

-- --------------------------------------------------------

--
-- Structure de la table `coatch_personnel`
--

CREATE TABLE `coatch_personnel` (
  `id_coatch` int(11) NOT NULL,
  `nom_coatch` varchar(255) NOT NULL,
  `prenom_coatch` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `specialite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `coatch_personnel`
--

INSERT INTO `coatch_personnel` (`id_coatch`, `nom_coatch`, `prenom_coatch`, `sexe`, `specialite`) VALUES
(1, 'fredo', 'maiga', 'MASCULIN', 'physique');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id_joueur` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Tel` int(11) NOT NULL,
  `Sexe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`id_joueur`, `nom`, `prenom`, `email`, `Tel`, `Sexe`) VALUES
(1, 'jnk,l', 'hj', 'll@hjkl', 2585665, 'MASCULIN'),
(2, 'gfhj', 'lkml*', 'll@hjkl', 741, '');

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `id_joueur` int(11) NOT NULL,
  `nom_joueur` varchar(255) NOT NULL,
  `prenom_joueur` varchar(255) NOT NULL,
  `taille` int(11) NOT NULL,
  `poids` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`id_joueur`, `nom_joueur`, `prenom_joueur`, `taille`, `poids`) VALUES
(1, '', '', 0, 0),
(2, 'azerty', 'sdfghjkl', 12, 75),
(3, 'vbjk', 'jklm', 5, 6),
(4, 'azerty', 'sdfghjkl', 12, 6),
(5, 'azerty', 'sdfghjkl', 12, 75),
(6, 'azerty', 'sdfghjkl', 12, 75),
(7, '', '', 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id_club`),
  ADD UNIQUE KEY `nom_club` (`nom_club`);

--
-- Index pour la table `coatch_personnel`
--
ALTER TABLE `coatch_personnel`
  ADD PRIMARY KEY (`id_coatch`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id_joueur`);

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id_joueur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `club`
--
ALTER TABLE `club`
  MODIFY `id_club` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `coatch_personnel`
--
ALTER TABLE `coatch_personnel`
  MODIFY `id_coatch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de données : `suggestion`
--
CREATE DATABASE IF NOT EXISTS `suggestion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `suggestion`;

-- --------------------------------------------------------

--
-- Structure de la table `consultant`
--

CREATE TABLE `consultant` (
  `Identifiant` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Sexe` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Profession` varchar(30) NOT NULL,
  `Adresse` varchar(30) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `Num-tel` int(11) NOT NULL,
  `Messages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `consultant`
--

INSERT INTO `consultant` (`Identifiant`, `Nom`, `Prenom`, `Sexe`, `Age`, `Profession`, `Adresse`, `Mail`, `Num-tel`, `Messages`) VALUES
(1, 'tou', 'Sophie', 'feminin', 25, 'enseignant', 'amour', 'chou@gmail.com', 147852, '	zedfghjkTapez ici votre messages'),
(2, 'coulibaly', 'antoinette', 'feminin', 12, 'retraite', 'rue de lavenue', 'antoinette@gmail.com', 70189952, '	c\'est un bon site felicitation a vousTapez ici votre messages'),
(3, 'dfjjhghhhhhhc', 'sdfg', 'wxfg', 12, 'enseignant', 'wdvxfgf', 'rftgyhu@gmail.com', 98410, '	Tapez ici votre cvbn,bvcvbnkjfdxmessages'),
(4, 'traore', 'cherif', 'masculin', 47, '', 'dfghjk', 'h@gmail.com', 78963215, '	fgholguivhdx'),
(5, 'traore', 'cherif', 'masculin', 47, '', 'dfghjk', 'h@gmail.com', 78963215, '	fgholguivhdx'),
(6, 'traore', 'cherif', 'masculin', 47, '', 'dfghjk', 'h@gmail.com', 78963215, '	fgholguivhdx'),
(7, 'sangare', 'armel', 'masculin', 45, '', 'bobo2', 'amoi@gmail.com', 78495632, 'grefgiugfrbhjkfnlkjvj');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `consultant`
--
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`Identifiant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `consultant`
--
ALTER TABLE `consultant`
  MODIFY `Identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `adresse`, `message`, `sexe`) VALUES
(1, 'yero', 'yerodiallo@gmail.com', 'aucun merci', 'masculin'),
(2, 'dfghj', 'aws@sdfghj', 'MESSAGE', 'MASCULIN'),
(3, 'qsdfghjk', 'azertyui@wxcvbn', 'MESSAGE', 'FEMININ'),
(4, '', '', 'MESSAGE', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adresse` (`adresse`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de données : `video`
--
CREATE DATABASE IF NOT EXISTS `video` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `video`;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_coatch` int(11) NOT NULL,
  `nom_coatch` varchar(255) NOT NULL,
  `prenom_coatch` varchar(255) NOT NULL,
  `specialite` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_coatch`, `nom_coatch`, `prenom_coatch`, `specialite`, `sexe`) VALUES
(1, 'yero', 'diallo', 'physique', 'MASCULIN'),
(3, 'souley', 'diallo', 'physique', 'MASCULIN'),
(4, 'souley', 'sdfghj', 'physique', 'FEMININ'),
(5, 'souley', 'sdfghj', 'physique', 'FEMININ'),
(6, 'souley', 'sdfghj', 'physique', 'FEMININ'),
(7, 'souley', 'sdfghj', 'physique', 'FEMININ'),
(8, 'fredo', 'maiga', 'physique', 'MASCULIN');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_coatch`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_coatch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Base de données : `zakat`
--
CREATE DATABASE IF NOT EXISTS `zakat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zakat`;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `code`, `date`) VALUES
(0, 'dfgh', 'dfgh', '2021-02-01 21:01:14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
