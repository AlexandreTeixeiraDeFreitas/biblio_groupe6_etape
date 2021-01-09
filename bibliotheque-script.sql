-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 09 jan. 2021 à 19:14
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dt_naissance` varchar(11) CHARACTER SET utf8 NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `dt_naissance`, `lieu`, `photo`) VALUES
(1, 'Isayama', 'Hajime', '29/08/1986', 'Hita, Préfecture d\'Oita, Japon', '../img/Isayama_Hajime.jpg'),
(2, 'Akira', 'toriyama', '05/04/1955', 'Nagoya, Préfecture d\'Aichi, Japon', '../img/Akira_toriyama.jpg'),
(3, 'Hiro', 'Mashima', '03/05/1977', 'Nagano, Préfecture de Nagano, Japon', '../img/Hiro_Mashima.jpg'),
(4, 'Togashi', 'Yoshihiro', '27/04/1966', 'Shinjo, Préfecture de Yamagata, Japon', '../img/Togashi_Yoshihiro.jpeg'),
(5, 'Horikoshi', 'Kohei', '20/11/1986', 'Préfecture d\'Aichi, Japon', '../img/Horikoshi_Kohei.jpg'),
(6, 'Kishimoto', 'Masashi', '08/11/1974', 'Nagi, Préfecture d\'Okayama, Japon', '../img/kishimoto_masashi.jpg'),
(7, 'Oda', 'Eiichiro', '01/01/1975', 'Kumamoto, Préfecture de Kumamoto, Japon', '../img/Oda_Eiichiro.jpg'),
(8, 'Yusuke', 'Murata', '04/07/1978', 'Préfecture de Kumamoto, Japon', '../img/Yusuke_Murata.jpeg'),
(9, 'Tappei', 'Nagatsuki', '11/03/1987', 'Japon', '../img/Tappei_Nagatsuki.jpg'),
(10, 'Kawahara', 'Reki', '17/08/1974', 'Gunma', '../img/Kawahara_Reki.jpg'),
(11, 'Tsukushi', 'Akihito', '05/05/1979', '', '../img/tsukushi_akihito.jpg'),
(12, 'Gotoge', 'Koyoharu', '05/05/1989', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
