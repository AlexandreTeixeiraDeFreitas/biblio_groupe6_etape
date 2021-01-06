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
('9782811611699', 'Attaque des Titans', 1, '07/10/2015', 1, 'Eren est un petit garcon revant de voyager dans le monde exterieur. Mais cela est impossible car il vit dans une ville fortifiee aux murailles depassant les cinquante metres de haut. Ces remparts sont necessaires a la securite des habitants car ils sont les derniers representants de l\'humanite, obliges de se cacher pour echapper aux titans qui ont massacre la majeure partie du genre humain un siecle plus tot. Eren est tetu : il ne se doute pas de la violence des combats qui ont oppose les hommes aux titans. Il decide de poster sa candidature pour devenir eclaireur, car il s\'agit des seuls soldats autorises a sortir de la ville pour en savoir plus sur les titans. Mais un beau jour, un geant parvient a detruire le mur qui protegeait la ville et ouvre la voie a plusieurs dizaines de ses congeneres ! Eren assiste impuissant a la mort atroce de sa mere qui finit devoree. Alors qu\'il fuit avec d\'autres survivants, il se jure de se venger et de detruire la race des titans jusqu\'a ce qu\'il n\'en reste plus un seul !!'),
('9782723457897', 'Dragon Ball Z - 1re partie: les Saïyens', 2, '16/04/2008', 1, 'Songoku a bien grandi. Apres avoir vaincu Piccolo Junior lors du Tenkaichi Budokai, le celebre tournoi d arts martiaux, il etait parti epouser Chichi pour lui donner un fils, Songohan. Pere et fils vivent dans l harmonie et le bonheur, jusqu au jour ou debarque un extraterrestre du nom de Raditz. Possedant une queue de singe, il se presente a Songoku comme son frere aine, et lui demande de le suivre pour l aider a envahir d autres planetes et accomplir son destin. Mais Songoku refuse, ce qui provoque la colere de Raditz : pour le forcer a se rallier a lui, il kidnappe Songohan et menace de le tuer. Devant la force de cet adversaire, Songoku n a d autre choix que de faire equipe avec son ennemi jure, Piccolo... Cette collection propose un photomontage des scenes clefs des differents episodes de cette serie, mis en pages comme une veritable bande dessinee. Une occasion de revivre scene par scene les celebres episodes de cette serie culte !'),
('9782811640569', 'Fairy Tail', 1, '27/06/2018', 1, 'Alors que Natsu avait reussi a mettre a jour les desseins de Zeleph et qu on croyait la derniere bataille toucher a sa fin, le ciel s est subitement fissure ! Et alors qu on croyait Acnologia prisonnier de l interstice temporel dans lequel il avait ete emprisonne, il a reapparu... Il est parvenu a dissocier son corps et son esprit, et c est son corps qui commence a tout detruire autour de lui. Lucy et ses compagnons tentent alors le tout pour le tout !'),
('2505006474', 'Hunter X Hunter', 3, '18/03/2000', 1, 'Gon Freecs, 12 ans, vit sur une ile reculee. Son pere ayant disparu, il vit avec sa tante et sa grand-mere. Mais le jour ou il apprend que son pere, Jin Freecs, est un Hunter et qui plus est l\'un des meilleurs de son temps, il decide de se rendre au tres repute examen de Hunter pour decrocher le certificat de Hunter et ainsi pouvoir se mettre a la recherche de son pere.'),
('9782355929489', 'My Hero Academia', 4, '14/04/2016', 1, 'Dans un monde ou 80% de la population possede un super pouvoir appeler alter, les heros font partie de la vie quotidienne. Et les super vilains aussi ! Face a eux se dresse l\'invincible All Might, le plus puissant des heros ! Le jeune Izuku Midoriya en est un fan absolu. Il n\'a qu\'un reve : entrer a la Hero Academia pour suivre les traces de son idole. Le probleme, c\'est qu\'il fait partie des 20% qui n\'ont aucun pouvoir...'),
('9782871294146', 'Naruto', 3, '09/03/2002', 1, 'L\'histoire debute durant l\'adolescence de Naruto, autour de ses douze ans. Naruto va alors a l\'academie des ninjas. Cancre et farceur sont ses principaux traits de caractere. Puisque Kyubi est scelle en lui, Naruto se fait rejeter par les habitants de Konoha. Son reve est de devenir le Hokage pour enfin se faire reconnaitre a sa juste valeur. Naruto s\'entraine dur pour passer l\'examen de l\'academie et pour enfin devenir genin, le premier niveau des ninjas. Lorsqu\'il recoit finalement son bandeau, symbole qu\'il est desormais un ninja, il se fait attribuer une equipe. Naruto fait partie de l\'equipe 7 aux cotes de Sakura Haruno, son amour d\'enfance, et Sasuke Uchiha, son eternel rival. Leur maitre (sensei) se nomme Kakashi Hatake.'),
('9782723488525', 'One Piece - Édition originale:', 2, '03/07/2013', 1, 'Gloire, fortune et puissance, c\'est ce que possedait Gold Roger, le tout puissant roi des pirates, avant de mourir sur l\'echafaud. Mais ses dernieres paroles ont eveillees bien des convoitises, et lanca la fabuleuse \"ere de la piraterie\", chacun voulant trouver le fabuleux tresor qu\'il disait avoir laisse. Bien des annees plus tard, Shanks, un redoutable pirate aux cheveux rouges, rencontre Luffy, un jeune garcon d\'une dizaine d\'annees dans un petit port de peche. Il veut devenir pirate et le rejoindre, mais Shanks lui repond qu\'il est trop jeune. Plus tard, Luffy avalera accidentellement le fruit Gomu Gomu qui rendra son corps elastique, mais aussi maudit par les eaux. Incapable de nager, Luffy ne veut pourtant pas renoncer a son reve. Pour le consoler lorsqu\'il part, Shanks lui offre son chapeau. Luffy jure alors de le rejoindre un jour avec son propre equipage. A 17 ans, Luffy prend la mer dans une petite barque avec pour but de reunir un equipage de pirates, mais de pirates pas comme les autres, qui devront partager sa conception un peu etrange de la piraterie. L\'aventure est lancee.'),
('9782368522257', 'One Punch Man', 5, '14/01/2016', 2, 'Saitama est un jeune homme sans emploi et sans reelle perspective d\'avenir, jusqu\'au jour ou il decide de prendre sa vie en main. Son nouvel objectif : devenir un super-heros. Il s\'entraine alors sans relache pendant trois ans et devient si puissant qu\'il est capable d\'eliminer ses adversaires d\'un seul coup de poing. On le surnomme desormais One-Punch Man. Mais rapidement, l\'euphorie du succes cede place a l\'ennui, car lorsqu\'on est si fort, les victoires perdent de leur saveur...'),
('9782377170067', 'Re:Zero Premier arc : Une journée à la capitale :', 6, '15/04/2017', 2, 'Invoque dans un autre monde, Subaru a a peine le temps de s\'y habituer qu\'il tombe nez a nez avec des bandits qui lui donnent du fil a retordre. Heureusement, une mysterieuse jeune fille s\'interpose et les met en deroute. Soulage, Subaru se promet d\'aider sa sauveuse a retrouver un objet qu\'on lui a derobe. Malheureusement, cette resolution lui fait vivre une aventure bien plus perilleuse que prevu. Ces peripeties lui revelent alors un pouvoir inattendu : sa mort enclenche un retour dans le temps lui permettant ainsi de changer la situation a son avantage. Seulement, au fur et a mesure des boucles, il va se rendre compte que ce pouvoir est en realite bien plus contraignant que ce qu\'il pensait...'),
('9782377171200', 'Sword Art Online - Project Alicization, Tome 1', 6, '15/06/2018', 1, 'Kirito se retrouve livré à lui-même après s’être réveiller dans l’Underworld, un mystérieux monde virtuel. Incapable de rejoindre la réalité, il fait la connaissance d’Eugeo, un jeune habitant du village de Rulid rongé par les remords suite à la disparition de son amie d’enfance, Alice. A la recherche de réponses et d’une porte de sortie, les deux garçons se lancent dans une périlleuse quête aux enjeux bien plus importants qu’ils ne pouvaient l’imaginer'),
('9782377171170', 'Made in abyss, Tome 1', 6, '18/05/2018', 2, 'Rico, une enfant elevee dans un orphelinat au bord de l Abyss, a toujours reve d explorer le gouffre comme sa mere, une exploratrice reputee mais disparue depuis plusieurs annees. Malheureusement, elle doit se limiter au premier niveau, car elle est encore peu experimentee. Un jour, elle croise par hasard la route de Legu, un robot qui semble venir des profondeurs de l Abyss. Cette decouverte, conjointe a une lettre de sa mere, la decide a franchir le pas et a debuter sa descente.'),
('9782809484069', 'Demon Slayer, Tome 1', 7, '18/09/2019', 1, 'Depuis les temps anciens, il existe des rumeurs concernant des demons mangeurs d\'hommes qui se cachent dans les bois. Pour cette raison, les citadins locaux ne s\'y aventurent jamais la nuit. La legende raconte aussi qu\'un tueur de demons deambule la nuit, chassant ces demons assoiffes de sang. Pour le jeune Tanjirou, ces rumeurs vont bientot devenir sa dure realite ...');


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
