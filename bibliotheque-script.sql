-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 30 déc. 2020 à 10:52
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
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `idPersonne` int(11) NOT NULL AUTO_INCREMENT,
  `idLivre` varchar(15) NOT NULL,
  PRIMARY KEY (`idPersonne`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`idPersonne`, `idLivre`) VALUES
(1, '9782811611699'),
(2, '9782723457897'),
(3, '9782811640569'),
(4, '2505006474'),
(5, '9782355929489'),
(6, '9782871294146'),
(7, '9782723488525'),
(8, '9782368522257'),
(9, '9782377170067'),
(10, '9782377171200'),
(11, '9782377171170'),
(12, '9782809484069');

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

DROP TABLE IF EXISTS `editeur`;
CREATE TABLE IF NOT EXISTS `editeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edition` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`id`, `edition`) VALUES
(1, 'Pika'),
(2, 'Glenat'),
(3, 'Kana'),
(4, 'ki-oon'),
(5, 'Kurokawa'),
(6, 'Ototo'),
(7, 'panini');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `libelle` (`libelle`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `libelle`) VALUES
(1, 'Shonen'),
(2, 'Seinen'),
(3, 'Shojo'),
(4, 'josei');

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

DROP TABLE IF EXISTS `manga`;
CREATE TABLE IF NOT EXISTS `manga` (
  `isbn` varchar(15) NOT NULL,
  `titre` varchar(500) NOT NULL,
  `editeur` int(11) NOT NULL,
  `annee` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `resumer` varchar(1500) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`isbn`, `titre`, `editeur`, `annee`, `genre`, `resumer`) VALUES
('9782811611699', 'Attaque des Titans', 1, '07/10/2015', 1, 'Eren est un petit garçon rêvant de voyager dans le monde extérieur. Mais cela est impossible car il vit dans une ville fortifiée aux murailles dépassant les cinquante mètres de haut. Ces remparts sont nécessaires à la sécurité des habitants car ils sont les derniers représentants de l\'humanité, obligés de se cacher pour échapper aux titans qui ont massacré la majeure partie du genre humain un siècle plus tôt. Eren est têtu : il ne se doute pas de la violence des combats qui ont opposé les hommes aux titans. Il décide de poster sa candidature pour devenir éclaireur, car il s\'agit des seuls soldats autorisés à sortir de la ville pour en savoir plus sur les titans. Mais un beau jour, un géant parvient à détruire le mur qui protégeait la ville et ouvre la voie à plusieurs dizaines de ses congénères ! Eren assiste impuissant à la mort atroce de sa mère qui finit dévorée. Alors qu\'il fuit avec d\'autres survivants, il se jure de se venger et de détruire la race des titans jusqu\'à ce qu\'il n\'en reste plus un seul !!'),
('9782723457897', 'Dragon Ball Z - 1re partie: les Saïyens', 2, '16/04/2008', 1, 'Songoku a bien grandi. Après avoir vaincu Piccolo Junior lors du Tenkaichi Budokai, le célèbre tournoi d’arts martiaux, il était parti épouser Chichi pour lui donner un fils, Songohan. Père et fils vivent dans l’harmonie et le bonheur, jusqu’au jour où débarque un extraterrestre du nom de Raditz. Possédant une queue de singe, il se présente à Songoku comme son frère aîné, et lui demande de le suivre pour l’aider à envahir d’autres planètes et accomplir son destin. Mais Songoku refuse, ce qui provoque la colère de Raditz : pour le forcer à se rallier à lui, il kidnappe Songohan et menace de le tuer. Devant la force de cet adversaire, Songoku n’a d’autre choix que de faire équipe avec son ennemi juré, Piccolo… Cette collection propose un photomontage des scènes clefs des différents épisodes de cette série, mis en pages comme une véritable bande dessinée. Une occasion de revivre scène par scène les célèbres épisodes de cette série culte !'),
('9782811640569', 'Fairy Tail', 1, '27/06/2018', 1, 'Alors que Natsu avait réussi à mettre à jour les desseins de Zeleph et qu’on croyait la dernière bataille toucher à sa fin, le ciel s’est subitement fissuré ! Et alors qu’on croyait Acnologia prisonnier de l’interstice temporel dans lequel il avait été emprisonné, il a réapparu... Il est parvenu à dissocier son corps et son esprit, et c’est son corps qui commence à tout détruire autour de lui. Lucy et ses compagnons tentent alors le tout pour le tout !'),
('2505006474', 'Hunter X Hunter', 3, '18/03/2000', 1, 'Gon Freecs, 12 ans, vit sur une île reculée. Son père ayant disparu, il vit avec sa tante et sa grand-mère. Mais le jour où il apprend que son père, Jin Freecs, est un Hunter et qui plus est l\'un des meilleurs de son temps, il décide de se rendre au très réputé examen de Hunter pour décrocher le certificat de Hunter et ainsi pouvoir se mettre à la recherche de son père.'),
('9782355929489', 'My Hero Academia', 4, '14/04/2016', 1, 'Dans un monde où 80% de la population possède un super pouvoir appeler alter, les héros font partie de la vie quotidienne. Et les super vilains aussi ! Face à eux se dresse l\'invincible All Might, le plus puissant des héros ! Le jeune Izuku Midoriya en est un fan absolu. Il n\'a qu\'un rêve : entrer à la Hero Academia pour suivre les traces de son idole. Le problème, c\'est qu\'il fait partie des 20% qui n\'ont aucun pouvoir...'),
('9782871294146', 'Naruto', 3, '09/03/2002', 1, 'L\'histoire débute durant l\'adolescence de Naruto, autour de ses douze ans. Naruto va alors à l\'académie des ninjas. Cancre et farceur sont ses principaux traits de caractère. Puisque Kyûbi est scellé en lui, Naruto se fait rejeter par les habitants de Konoha. Son rêve est de devenir le Hokage pour enfin se faire reconnaitre à sa juste valeur. Naruto s\'entraine dur pour passer l\'examen de l\'académie et pour enfin devenir genin, le premier niveau des ninjas. Lorsqu\'il reçoit finalement son bandeau, symbole qu\'il est désormais un ninja, il se fait attribuer une équipe. Naruto fait partie de l\'équipe 7 aux côtés de Sakura Haruno, son amour d\'enfance, et Sasuke Uchiha, son éternel rival. Leur maître (sensei) se nomme Kakashi Hatake.'),
('9782723488525', 'One Piece - Édition originale:', 2, '03/07/2013', 1, 'Gloire, fortune et puissance, c\'est ce que possédait Gold Roger, le tout puissant roi des pirates, avant de mourir sur l\'échafaud. Mais ses dernières paroles ont éveillées bien des convoitises, et lança la fabuleuse \"ère de la piraterie\", chacun voulant trouver le fabuleux trésor qu\'il disait avoir laissé. Bien des années plus tard, Shanks, un redoutable pirate aux cheveux rouges, rencontre Luffy, un jeune garçon d\'une dizaine d\'années dans un petit port de pêche. Il veut devenir pirate et le rejoindre, mais Shanks lui répond qu\'il est trop jeune. Plus tard, Luffy avalera accidentellement le fruit Gomu Gomu qui rendra son corps élastique, mais aussi maudit par les eaux. Incapable de nager, Luffy ne veut pourtant pas renoncer à son rêve. Pour le consoler lorsqu\'il part, Shanks lui offre son chapeau. Luffy jure alors de le rejoindre un jour avec son propre équipage. A 17 ans, Luffy prend la mer dans une petite barque avec pour but de réunir un équipage de pirates, mais de pirates pas comme les autres, qui devront partager sa conception un peu étrange de la piraterie. L\'aventure est lancée.'),
('9782368522257', 'One Punch Man', 5, '14/01/2016', 2, 'Saitama est un jeune homme sans emploi et sans réelle perspective d\'avenir, jusqu\'au jour où il décide de prendre sa vie en main. Son nouvel objectif : devenir un super-héros. Il s\'entraîne alors sans relâche pendant trois ans et devient si puissant qu\'il est capable d\'éliminer ses adversaires d\'un seul coup de poing. On le surnomme désormais One-Punch Man. Mais rapidement, l\'euphorie du succès cède place à l\'ennui, car lorsqu\'on est si fort, les victoires perdent de leur saveur...'),
('9782377170067', 'Re:Zero Premier arc : Une journée à la capitale :', 6, '15/04/2017', 2, 'Invoqué dans un autre monde, Subaru a à peine le temps de s\'y habituer qu\'il tombe nez à nez avec des bandits qui lui donnent du fil à retordre. Heureusement, une mystérieuse jeune fille s\'interpose et les met en déroute. Soulagé, Subaru se promet d\'aider sa sauveuse à retrouver un objet qu\'on lui a dérobé. Malheureusement, cette résolution lui fait vivre une aventure bien plus périlleuse que prévu. Ces péripéties lui révèlent alors un pouvoir inattendu : sa mort enclenche un retour dans le temps lui permettant ainsi de changer la situation à son avantage. Seulement, au fur et à mesure des boucles, il va se rendre compte que ce pouvoir est en réalité bien plus contraignant que ce qu\'il pensait...'),
('9782377171200', 'Sword Art Online - Project Alicization, Tome 1', 6, '15/06/2018', 1, 'Kirito se retrouve livré à lui-même après s’être réveiller dans l’Underworld, un mystérieux monde virtuel. Incapable de rejoindre la réalité, il fait la connaissance d’Eugeo, un jeune habitant du village de Rulid rongé par les remords suite à la disparition de son amie d’enfance, Alice. A la recherche de réponses et d’une porte de sortie, les deux garçons se lancent dans une périlleuse quête aux enjeux bien plus importants qu’ils ne pouvaient l’imaginer'),
('9782377171170', 'Made in abyss, Tome 1', 6, '18/05/2018', 2, 'Rico, une enfant élevée dans un orphelinat au bord de l\'Abyss, a toujours rêvé d\'explorer le gouffre comme sa mère, une exploratrice réputée mais disparue depuis plusieurs années. Malheureusement, elle doit se limiter au premier niveau, car elle est encore peu expérimentée. Un jour, elle croise par hasard la route de Légu, un robot qui semble venir des profondeurs de l\'Abyss. Cette découverte, conjointe à une \"lettre de sa mère\", la décide à franchir le pas et à débuter sa descente.'),
('9782809484069', 'Demon Slayer, Tome 1', 7, '18/09/2019', 1, 'Depuis les temps anciens, il existe des rumeurs concernant des démons mangeurs d\'hommes qui se cachent dans les bois. Pour cette raison, les citadins locaux ne s\'y aventurent jamais la nuit. La légende raconte aussi qu\'un tueur de démons déambule la nuit, chassant ces démons assoiffés de sang. Pour le jeune Tanjirou, ces rumeurs vont bientôt devenir sa dure réalité ...');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) DEFAULT NULL,
  `dt_naissance` varchar(11) CHARACTER SET utf8 NOT NULL,
  `lieu` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `dt_naissance`, `lieu`) VALUES
(1, 'Isayama', 'Hajime', '29/08/1986', 'Hita, Préfecture d\'Oita, Japon'),
(2, 'Akira', 'toriyama', '05/04/1955', 'Nagoya, Préfecture d\'Aichi, Japon'),
(3, 'Hiro', 'Mashima', '03/05/1977', 'Nagano, Préfecture de Nagano, Japon'),
(4, 'Togashi', 'Yoshihiro', '27/04/1966', 'Shinjo, Préfecture de Yamagata, Japon'),
(5, 'Horikoshi', 'Kohei', '20/11/1986', 'Préfecture d\'Aichi, Japon'),
(6, 'Kishimoto', 'Masashi', '08/11/1974', 'Nagi, Préfecture d\'Okayama, Japon'),
(7, 'Oda', 'Eiichiro', '01/01/1975', 'Kumamoto, Préfecture de Kumamoto, Japon'),
(8, 'Yusuke', 'Murata', '04/07/1978', 'Préfecture de Kumamoto, Japon'),
(9, 'Tappei', 'Nagatsuki', '11/03/1987', 'Japon'),
(10, 'Kawahara', 'Reki', '17/08/1974', 'Gunma'),
(11, 'Tsukushi', 'Akihito', '05/05/1979', ''),
(12, 'Gotoge', 'Koyoharu', '05/05/1989', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
