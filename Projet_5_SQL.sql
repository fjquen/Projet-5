-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 04 déc. 2019 à 16:52
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog_project`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_news_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66727C19DE` (`category_news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`, `category_news_id`) VALUES
(1, 'En décembre 2019 sur Netflix : la liste complète des nouveautés', '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://www.leblogducinema.com/wp-content/uploads//2019/11/netflix-decembre-2019-1.jpg\" style=\"height:200px; width:400px\" /></p>\r\n\r\n<p>Le Tombeau des Lucioles, la saga Millenium, Marriage Story, The Witcher&hellip; Que nous r&eacute;serve&nbsp;Netflix&nbsp;pour ce mois de d&eacute;cembre 2019 ?</p>\r\n\r\n<h2>Films</h2>\r\n\r\n<p>01.12 :&nbsp;LE TOMBEAU DES LUCIOLES<br />\r\n01.12 : SONIC X<br />\r\n01.12 : DEAD KIDS<br />\r\n01.12 : L&rsquo;AMOUR C&rsquo;EST MIEUX &Agrave; DEUX<br />\r\n02.12 :&nbsp;MILLENIUM&nbsp;&ndash; La saga<br />\r\n03.12 : THE FIRST TEMPTATION OF CHRIST<br />\r\n05.12 : A CHRISTMAS PRINCE &ndash; THE ROYAL BABY<br />\r\n06.12 : MARRIAGE STORY<br />\r\n09.12 : UN NO&Euml;L CHEZ MAMILIA<br />\r\n13.12 : 6 UNDERGROUND<br />\r\n15.12 : SEX AND THE CITY 2<br />\r\n16.12 : RAY<br />\r\n16.12 : KING KONG<br />\r\n20.12 : LES DEUX PAPES<br />\r\n26.12 : THE APP<br />\r\n31.12 : DIVINES</p>\r\n\r\n<h2>S&eacute;ries</h2>\r\n\r\n<p>01.12 : FAIRY TAIL &ndash; Saison 7<br />\r\n05.12 : V WARS<br />\r\n05.12 : APACHE &ndash; LA VIE DE CARLOS TEVEZ<br />\r\n05.12 : HOME FOR CHRISTMAS<br />\r\n06.12 : TRIAD PRINCESS<br />\r\n06.12 : LA F&Ecirc;TE &Agrave; LA MAISON, 20 ANS APR&Egrave;S &ndash; Saison 5<br />\r\n06.12 : MAGIC FOR HUMANS &ndash; Saison 2<br />\r\n06.12 : VIRGIN RIVER<br />\r\n06.12 : TROIS NO&Euml;LS<br />\r\n06.12 : THE CHOSEN ONE &ndash; Saison 2<br />\r\n15.12 : STEVEN UNIVERSE &ndash; Saison 4<br />\r\n15.12 : LE MONDE INCROYABLE DE GUMBALL &ndash; Saisons 1 &agrave; 3<br />\r\n18.12 : SOUNDTRACK<br />\r\n20.12 :&nbsp;THE WITCHER<br />\r\n24.12 : PERDUS DANS L&rsquo;ESPACE &ndash; Saison 2<br />\r\n24.12 : CAROLE &amp; TUESDAY &ndash; Partie 2<br />\r\n26.12 :&nbsp;LE BAZAR DE LA CHARIT&Eacute;<br />\r\n26.12 : YOU &ndash; Saison 2<br />\r\n26.12 : FAST AND FURIOUS &ndash; SPY RACERS<br />\r\n27.12 : THE GIFT<br />\r\n30.12 : ALEXA ET KATIE &ndash; Saison 3<br />\r\n31.12 : SPECTROS<br />\r\n31.12 : LE VOISIN</p>\r\n\r\n<h2>Documentaires</h2>\r\n\r\n<p>06.12 : PAROLE DE TUEUR<br />\r\n10.12 : MICHELLE WOLF &ndash; THE JOKE SHOW<br />\r\n18.12 : DON&rsquo;T FUCK WITH CATS<br />\r\n19.12 : APR&Egrave;S LE RAID<br />\r\n24.12 : TERRACE HOUSE &ndash; TOKYO 2019-2020 &ndash; Partie 2</p>', 'https://www.leblogducinema.com/wp-content/uploads/2019/11/netflix-decembre-2019-1.jpg', '2019-12-04 05:14:45', 15),
(2, 'STAR WARS: L\'ASCENSION DE SKYWALKER', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;STAR WARS: L\'ASCENSION DE SKYWALKER&quot;\" src=\"http://t3.gstatic.com/images?q=tbn:ANd9GcS6nZAQOeN_ZKjvU6GRBeuwXT4xMMaHwKdil08HN-cvUzuok-U6\" style=\"height:370px; width:250px\" /></p>\r\n\r\n<p>La conclusion de la saga Skywalker. De nouvelles l&eacute;gendes vont na&icirc;tre dans cette bataille &eacute;pique pour la libert&eacute;.</p>', 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Star_Wars%2C_%C3%A9pisode_IX_-_L%27Ascension_de_Skywalker.svg', '2019-12-04 05:23:27', 14),
(3, 'JUMANJI: NEXT LEVEL', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;JUMANJI: NEXT LEVEL&quot;\" src=\"https://cdn-s-www.republicain-lorrain.fr/images/0f9d4dba-e62f-41e2-b4f0-10b32e6a3280/BES_06/illustration-projection-du-film-jumanji-next-level_1-1573639174.jpg\" style=\"height:371px; width:250px\" /></p>\r\n\r\n<p>L&#39;&eacute;quipe est de retour mais le jeu a chang&eacute;. Alors qu&#39;ils retournent dans Jumanji pour secourir l&#39;un des leurs, ils d&eacute;couvrent un monde totalement inattendu. Des d&eacute;serts arides aux montagnes enneig&eacute;es, les joueurs vont devoir braver des espaces inconnus et inexplor&eacute;s, afin de sortir du jeu le plus dangereux du monde.</p>', 'https://www.sortiraparis.com/images/80/1665/508570-jumanji-next-level-en-avant-premiere-au-grand-rex-de-paris-en-presence-de-dwayne.jpg', '2019-12-04 05:27:23', 14),
(4, 'The magicians saison 5 en Janvier 2020', '<p style=\"text-align:center\"><img alt=\"The Magicians\" src=\"http://fr.web.img5.acsta.net/c_210_280/pictures/19/12/03/09/11/1045083.jpg\" /></p>\r\n\r\n<p>La magie a &eacute;t&eacute; sauv&eacute;e ! Mais le co&ucirc;t a &eacute;t&eacute; terrible : Quentin Coldwater s&#39;est sacrifi&eacute; pour sauver ses amis et le monde. Julia, Alice, Eliot, Margo, Penny qui ont &eacute;t&eacute; ramen&eacute; &agrave; une vie normal sans aucun souvenir de ce qu&#39;ils &eacute;tait avant mais&nbsp;Bient&ocirc;t, une nouvelle menace appara&icirc;t : une apocalypse se profile. Les magiciens sont-ils suffisament puissants pour sauver le monde sans Quentin ?</p>', 'https://www.aficia.info/wp-content/uploads/2019/02/The-Magicians-%C2%A9-SyFy-770x404.jpg', '2019-12-04 05:39:04', 15);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(17, 'Action', 'que ça soit série, anime ou action c\'est la même chose une aventure une quête menant à la liberté et un changement pour les personnes à sauvé'),
(18, 'Horreur', 'Elle nous épouvantent et nous émerveille le divertissement horreur nous fais comme nous fais réfléchir sur le monde qui nous entoure un inconnue qui nous dégoute et nous dérange comme elle nous intéroge.'),
(19, 'Drame', 'Drame ou tragédie, ces genres ont énormément influencer le divertissement vidéographique, on peut en rire et en pleurer mais on s\'en sort toujours boulverser. '),
(20, 'Humour', 'Humour ');

-- --------------------------------------------------------

--
-- Structure de la table `category_news`
--

DROP TABLE IF EXISTS `category_news`;
CREATE TABLE IF NOT EXISTS `category_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_news`
--

INSERT INTO `category_news` (`id`, `title`, `description`) VALUES
(14, 'Film', 'Actu sur les films dans les salles'),
(15, 'Série', 'Production, acquisition, les séries nous tienne en haleine pas mal de temps mais aussi sont dans l\'actualité'),
(16, 'Anime', 'Actu sur les animes qui vont arriver en ce moment');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `signalement` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comment_critique`
--

DROP TABLE IF EXISTS `comment_critique`;
CREATE TABLE IF NOT EXISTS `comment_critique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `critique_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `signalement` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2D16022F24D1F1B` (`critique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `critique`
--

DROP TABLE IF EXISTS `critique`;
CREATE TABLE IF NOT EXISTS `critique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `note` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1F95032412469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `critique`
--

INSERT INTO `critique` (`id`, `title`, `content`, `image`, `created_at`, `category_id`, `note`) VALUES
(1, 'Joker', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;joker&quot;\" src=\"http://t0.gstatic.com/images?q=tbn:ANd9GcQzX-5nDWw-_V1mEaNgDgHDdozTyRCu6T6XAh4E7CjtjhAMKXzW\" style=\"height:339px; width:250px\" /></p>\r\n\r\n<p>JOKER ! Ce film a fait couler beaucoup d&#39;encre au fil des semaines et est all&eacute; jusqu&#39;&agrave; gagner un lion d&#39;or &agrave; la mostra de venise, detester comme adorer ce film n&#39;a laisser personne indiff&eacute;rent tant dans son sc&eacute;nario que dans le contexte actuel o&ugrave; nous simple spetacteur &eacute;voluons en ce moment m&ecirc;me. Est ce l&agrave; le vent de la r&eacute;volution que je sens souffler d&eacute;rri&egrave;re mon dos ou au contraire est ce la tempete de l&#39;anarchie qui m&#39;emportera dans les confins de la folie et de l&#39;anarchie dont la seul finalit&eacute; est une mauvaise blague dont le point de fin est un horrible rire.</p>', 'https://cdn.radiofrance.fr/s3/cruiser-production/2019/10/1d957e98-f6e7-4839-9219-e700c4b37fb6/838_801x410_joker.jpg', '2019-12-04 10:06:04', 19, 5),
(2, 'JUMANJI : BIENVENUE DANS LA JUNGLE', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;jumanji bienvenue dans la jungle&quot;\" src=\"http://img.over-blog-kiwi.com/0/95/30/84/20170920/ob_777dd7_ddfmuafw0aayt9c-jpg-large.jpeg\" style=\"height:370px; width:250px\" /></p>\r\n\r\n<p>Jumanji</p>', 'http://img.over-blog-kiwi.com/0/71/40/63/obpiclfgRhy.jpeg', '2019-12-04 10:20:06', 17, 3),
(3, 'shingeki no kyojin', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;shingeki no kyojin&quot;\" src=\"https://www.nautiljon.com/images/anime/00/43/shingeki_no_kyojin_3rd_season_part_2_8234.jpg?1561926338\" style=\"height:354px; width:250px\" /></p>\r\n\r\n<p>shingeki no kyojin</p>', 'http://ekladata.com/fs4Z-nYkseIdTPsB9LDoNej1qXo.jpg', '2019-12-04 10:23:38', 17, 5),
(4, 'Deadpool', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;deadpool&quot;\" src=\"https://is5-ssl.mzstatic.com/image/thumb/Video6/v4/b4/50/24/b4502411-68f2-793f-d6ad-d04ad6d1d683/pr_source.lsr/268x0w.png\" /></p>\r\n\r\n<p>Deadpool</p>', 'https://s1.1zoom.me/b5050/773/Deadpool_hero_Heroes_510289_1920x1080.jpg', '2019-12-04 10:38:07', 17, 5),
(5, 'Deadpool 2', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;deadpool 2&quot;\" src=\"https://images-na.ssl-images-amazon.com/images/I/71pNtXwR-aL._SL1200_.jpg\" style=\"height:250px; width:250px\" /></p>\r\n\r\n<p>Deadpool 2</p>', 'https://img.bfmtv.com/c/1000/600/a9f/ed4a213eed3ff9d43b3bd1545858b.jpeg', '2019-12-04 10:44:41', 17, 5),
(6, 'Africa no salaryman', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;africa no salaryman&quot;\" src=\"https://www.nautiljon.com/images/anime/00/12/africa_no_salaryman_tv_8621.jpg\" style=\"height:353px; width:250px\" /></p>\r\n\r\n<p>africa no salaryman</p>', 'http://anikawa.fr/uploads/big/africa-no-salaryman-en-adaptation-animee-zWVAmkwBP4.jpg', '2019-12-04 11:35:44', 20, 2),
(7, 'Gemini Man', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;gemini man&quot;\" src=\"http://t0.gstatic.com/images?q=tbn:ANd9GcT2R6AMxy6hLlr8KX8tQwISKI21RP4gZNZHefRxoecJGGXYjKwp\" style=\"height:313px; width:250px\" /></p>\r\n\r\n<p>Gemini Man</p>', 'http://fr.web.img6.acsta.net/r_640_360/newsv7/19/10/02/10/43/5281204.jpg', '2019-12-04 11:53:14', 17, 3),
(8, 'Suicide Squad', '<p style=\"text-align:center\"><img alt=\"Résultat de recherche d\'images pour &quot;suicid squad&quot;\" src=\"http://t3.gstatic.com/images?q=tbn:ANd9GcT7THN3wUyUSzZPDv7zCDBd989xm-QiXLhrurt-bdbZGcF5JcSp\" style=\"height:370px; width:250px\" /></p>\r\n\r\n<p>Suicide Squad</p>', 'http://fr.web.img5.acsta.net/r_640_360/newsv7/19/03/01/11/59/2669973.jpg', '2019-12-04 12:00:11', 17, 3);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191026170225', '2019-10-26 17:06:05'),
('20191026200754', '2019-10-26 20:08:30'),
('20191102100314', '2019-11-02 10:06:34'),
('20191102104819', '2019-11-02 10:50:18'),
('20191102155644', '2019-11-02 15:57:22'),
('20191103115500', '2019-11-03 11:56:45'),
('20191109144956', '2019-11-09 14:50:50'),
('20191109153423', '2019-11-09 15:34:55'),
('20191109154315', '2019-11-09 15:44:01'),
('20191109160936', '2019-11-09 16:10:01'),
('20191109171252', '2019-11-09 17:13:45'),
('20191109224623', '2019-11-09 22:47:12'),
('20191111162838', '2019-11-11 16:29:19'),
('20191111203718', '2019-11-11 20:37:48'),
('20191112083318', '2019-11-12 08:33:54'),
('20191112110143', '2019-11-12 11:03:02'),
('20191117175809', '2019-11-17 17:58:41'),
('20191120202936', '2019-11-20 20:33:51'),
('20191123114728', '2019-11-23 11:48:38'),
('20191124104221', '2019-11-24 10:42:53');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `roles`, `confirmation_token`, `enabled`) VALUES
(20, 'blogjeanfortoche@gmx.fr', 'joker', '$2y$13$38PvW.0e69kg266x3p15quSDw9I9CxIwlWTHMdCeVrgVS518GSfZu', 'a:0:{}', NULL, 1),
(21, 'fjquen@gmail.com', 'thanos', '$2y$13$JFkot.OitUBsz8S80qJ4JuuqcquTe3Sah6qL151vbyQFJGTuA/Hb.', 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', NULL, 1),
(31, 'pototron@gmx.fr', 'robin', '$2y$13$JJWPbAxP1UnUVVlGzkvMZ.Kp.JE4ydfm1lY/8pGlnD1NR9vJMGvrK', 'a:0:{}', NULL, 1),
(61, 'blogfortoche@gmx.fr', 'batwoman', '$2y$13$Ym51Zz6DmWyQIViGxIcU2uKjyZ1tU.TO.mikkdyGiakXJ6Dlds0ta', 'a:0:{}', NULL, 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66727C19DE` FOREIGN KEY (`category_news_id`) REFERENCES `category_news` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `comment_critique`
--
ALTER TABLE `comment_critique`
  ADD CONSTRAINT `FK_2D16022F24D1F1B` FOREIGN KEY (`critique_id`) REFERENCES `critique` (`id`);

--
-- Contraintes pour la table `critique`
--
ALTER TABLE `critique`
  ADD CONSTRAINT `FK_1F95032412469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
