-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: astronomie
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('son','img','vid') NOT NULL,
  `lien` varchar(100) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `news_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_assets_news1_idx` (`news_id`),
  CONSTRAINT `fk_assets_news1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'img','imageid1.jpg','photographes de l\'éclipses',1),(2,'img','imageid2.jpg','Mars et la Lune avant l\'éclipse',2),(3,'img','imageid3.jpg','éclipse Mars et la Lune',3),(4,'img','imageid4.jpg','Lune',4),(5,'img','imageid5.jpg','Lune gros plan',5),(6,'img','imageid6.jpg','Sonde sur la Lune',6),(7,'son','assets/img5c07ff688d9b50.44499299.png',NULL,10),(8,'son','assets/img5c08003df380a6.59450032.jpg',NULL,14),(9,'son','assets/nouvelleimage.jpg',NULL,15),(10,'son','img5c12786c67528.jpg',NULL,10),(11,'son','img5c1278f08daeb.jpg',NULL,10),(12,'son','img5c1279fc95000.jpg',NULL,20);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categorie` varchar(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'decouverte','Les dernières découvertes dans l’astronomie.'),(2,'observation','Les données découvertes par les chercheurs.'),(3,'theorie','Les théories du monde de l’astronomie.'),(4,'fait divers',NULL),(5,'exploration','Les voyages spatiaux, humains ou sondes');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chercheurs`
--

DROP TABLE IF EXISTS `chercheurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chercheurs` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `nationnalite` varchar(45) DEFAULT NULL,
  `date_naissance` year(4) DEFAULT NULL,
  `organisme_id` smallint(5) unsigned DEFAULT NULL,
  `description` tinytext,
  PRIMARY KEY (`id`),
  KEY `fk_chercheurs_organismes1_idx` (`organisme_id`),
  CONSTRAINT `fk_chercheurs_organismes1` FOREIGN KEY (`organisme_id`) REFERENCES `organismes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chercheurs`
--

LOCK TABLES `chercheurs` WRITE;
/*!40000 ALTER TABLE `chercheurs` DISABLE KEYS */;
INSERT INTO `chercheurs` VALUES (1,'Galilée','','Italien',0000,NULL,'Astronome, physicien, ingénieur, Galileo Galilei est né à Pise. Il est, avec Descartes, l\'un des fondateurs de la mécanique moderne. Il inventa le thermomètre (1592) et introduisit en astronomie l\'usage de la lunette, ce qui lui permit, en 1609, d\'ef'),(2,'Kepler','Johannes','Allemand',0000,NULL,'Astronome, véritable créateur de l\'astronomie moderne, il étudia et confirma l\'héliocentrisme avancé par Copernic. Professeur de mathématiques, il fut poursuivi tant pour ces idées que pour sa religion (protestante). Il se réfugie à Prague vers 1'),(3,'Aristote','','Grec',0000,NULL,'Philosophe, son oeuvre encyclopédique a exercé une profonde influence sur la pensée scientifique occidentale. De la logique à la cosmologie en passant par ses grands ouvrages sur les animaux et son traité de Physique, l\'aristotélisme a fourni jusqu\''),(4,'Anaximandre','','Grec',0000,NULL,'Philosophe et Astronome, il aurait découvert l\'obliquité de l\'écliptique, et le premier, reconnu que le ciel paraît tourner autour de l\'étoile polaire.'),(5,'Copernic','Nicolas','Polonais',0000,NULL,'Astronome, Copernic fit ses études à Cracovie, puis dans les Universités italiennes de Bologne et Padoue. De retour à Frauenbourg, près de Dantzig, en 1506, il fit construire un observatoire. Après 25 ans d\'observations, il rédige un traité sur le'),(6,'Comte de Lagrange','Joseph Louis','Français',0000,NULL,'Astronome et Mathématicien français, né à Turin (Italie). Il enseigna les mathématiques. Il publie en 1788 un traité de Mécanique analytique, réunissant les résultats de ses calculs sur la stabilité du système solaire, et montrant que les inég'),(7,'Hubble','Edwin Powell','Américain',0000,NULL,'Astrophysicien,  Hubble étudia principalement les galaxies. En se basant sur le décalage vers le rouge des raies spectrales des galaxies, interprété comme un effet Doppler-Fizeau, il formule une loi empirique en 1929 selon laquelle les galaxies s\'élo'),(8,'Mours','Benoît','Français',NULL,6,'Chercheur et professeur français'),(9,'Democrite',NULL,'grec',NULL,NULL,'Philosophe grec'),(10,'FELDMANN','Jean-baptiste','français',NULL,7,'Spécialiste de la photographie en astronomie'),(11,'SACCO','Laurent','français',NULL,7,NULL);
/*!40000 ALTER TABLE `chercheurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exoplanets`
--

DROP TABLE IF EXISTS `exoplanets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exoplanets` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sys_planet_id` smallint(5) unsigned DEFAULT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `masse` decimal(10,10) unsigned DEFAULT NULL,
  `rayon` decimal(15,10) unsigned DEFAULT NULL,
  `periode-orbitale` decimal(15,10) unsigned DEFAULT NULL,
  `excentricite` decimal(12,10) unsigned DEFAULT NULL,
  `temperature-surface` decimal(7,2) DEFAULT NULL,
  `methode-decouverte` varchar(20) DEFAULT NULL,
  `annee-decouverte` year(4) DEFAULT NULL,
  `distance-soleil` decimal(10,4) unsigned DEFAULT NULL,
  `autre-info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_exoplanets_sys-planet1_idx` (`sys_planet_id`),
  CONSTRAINT `fk_exoplanets_sys-planet1` FOREIGN KEY (`sys_planet_id`) REFERENCES `sys_planet` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exoplanets`
--

LOCK TABLES `exoplanets` WRITE;
/*!40000 ALTER TABLE `exoplanets` DISABLE KEYS */;
INSERT INTO `exoplanets` VALUES (1,1,'Mercury',0.0001738742,0.0349015180,87.9700000000,0.2056366100,0.00,'',0000,0.0000,'Solar System'),(2,1,'Venus',0.0025637401,0.0865649100,224.7000000000,0.0067639900,0.00,'',0000,0.0000,'Solar System'),(3,1,'Earth',0.0031457007,0.0911302940,365.2422000000,0.0167316300,0.00,'',0000,0.0000,'Solar System'),(4,1,'Mars',0.0003379953,0.0484890790,686.9800000000,0.0933651100,0.00,'',0000,0.0000,'Solar System'),(5,1,'Jupiter',0.9999999999,1.0000000000,4332.8200000000,0.0485359000,0.00,'',0000,0.0000,'Solar System'),(6,1,'Saturn',0.2990000000,0.8329440000,10755.6700000000,0.0555082500,0.00,'',0000,0.0000,'Solar System'),(7,1,'Uranus',0.0457000000,0.3627750000,30687.1530000000,0.0468574000,0.00,'',0000,0.0000,'Solar System'),(8,1,'Neptune',0.0539530000,0.3522192500,60190.0300000000,0.0089543900,0.00,'',0000,0.0000,'Solar System'),(9,1,'Pluto',0.0000077581,0.0164379000,90553.0200000000,0.2488523800,0.00,'',1930,0.0000,'Solar System'),(10,NULL,'Kepler-1502 b',0.0000000000,0.2840000000,41.7083629000,0.0000000000,0.00,'transit',2016,0.0000,'Confirmed planets'),(11,NULL,'Kepler-500 b',0.0000000000,0.2300000000,8.5083244000,0.0000000000,0.00,'transit',2016,0.0000,'Confirmed planets'),(12,NULL,'Kepler-1048 b',0.0000000000,0.1440000000,6.9210102100,0.0000000000,0.00,'transit',2016,0.0000,'Confirmed planets'),(13,NULL,'Kepler-1545 b',0.0000000000,0.2410000000,163.6923490000,0.0000000000,0.00,'transit',2016,0.0000,'Confirmed planets'),(14,NULL,'Kepler-484 b',0.0000000000,0.2030000000,10.0455693100,0.0000000000,0.00,'transit',2016,0.0000,'Confirmed planets'),(15,NULL,'Kepler-149 b',0.0000000000,0.3836600000,29.1989430000,0.0000000000,0.00,'transit',2014,588.1200,'Confirmed planets'),(19,NULL,'Kepler-78b',NULL,0.0790000000,0.6773751600,NULL,NULL,'transit',2016,NULL,'Confirmed planets');
/*!40000 ALTER TABLE `exoplanets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galaxie`
--

DROP TABLE IF EXISTS `galaxie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galaxie` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `annee-decouverte` year(4) DEFAULT NULL,
  `constellation` varchar(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galaxie`
--

LOCK TABLES `galaxie` WRITE;
/*!40000 ALTER TABLE `galaxie` DISABLE KEYS */;
INSERT INTO `galaxie` VALUES (1,'Voie Lactée',1928,'Sagittaire','C\'est la galaxie hôte de la Terre et du Système solaire.'),(2,'Galaxie d’Andromède',0000,'Andromède','Egalement identifiée sous les numéros M31 et NGC 224. Située à environ 2,55 millions d\'années-lumière du Soleil, dans la constellation d\'Andromède.'),(3,'Galaxie de la Roue de chariot',1941,'Sculpteur','Elle tire son nom de sa ressemblance à une roue de charrette.'),(4,'Galaxie du Cigare',0000,'Grande Ourse','Aussi appelé M82. Considérée comme le fleuron des galaxies pour beaucoup d\'observateurs.'),(5,'Galaxie Comète',2007,'Sculpteur','La forme de comète est due à des forces de marée engendrées par l\'amas Abell 2667.'),(6,'Objet de Hoag',1950,'Serpent','L\'objet de Hoag prend la forme d\'un anneau presque parfait d\'étoiles bleues entourant un noyau plus ancien d\'étoiles jaunes.');
/*!40000 ALTER TABLE `galaxie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `int_chercheur_news`
--

DROP TABLE IF EXISTS `int_chercheur_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `int_chercheur_news` (
  `news_id` smallint(5) unsigned NOT NULL,
  `chercheur_id` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `unique-chercheur-news` (`news_id`,`chercheur_id`),
  KEY `fk_temp-chercheur-news_news1_idx` (`news_id`),
  KEY `fk_int-chercheur-news_chercheurs1_idx` (`chercheur_id`),
  CONSTRAINT `fk_int-chercheur-news_chercheurs1` FOREIGN KEY (`chercheur_id`) REFERENCES `chercheurs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_temp-chercheur-news_news1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `int_chercheur_news`
--

LOCK TABLES `int_chercheur_news` WRITE;
/*!40000 ALTER TABLE `int_chercheur_news` DISABLE KEYS */;
INSERT INTO `int_chercheur_news` VALUES (2,10),(4,9),(8,8),(10,11);
/*!40000 ALTER TABLE `int_chercheur_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `int_news_exop`
--

DROP TABLE IF EXISTS `int_news_exop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `int_news_exop` (
  `news_id` smallint(5) unsigned NOT NULL,
  `exop_id` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `unique-news-exop` (`news_id`,`exop_id`),
  KEY `fk_int-news-exop_news1_idx` (`news_id`),
  KEY `fk_int-news-exop_exoplanets1_idx` (`exop_id`),
  CONSTRAINT `fk_int-news-exop_exoplanets1` FOREIGN KEY (`exop_id`) REFERENCES `exoplanets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_int-news-exop_news1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `int_news_exop`
--

LOCK TABLES `int_news_exop` WRITE;
/*!40000 ALTER TABLE `int_news_exop` DISABLE KEYS */;
INSERT INTO `int_news_exop` VALUES (2,4),(10,19);
/*!40000 ALTER TABLE `int_news_exop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `categorie_id` smallint(5) unsigned DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `contenu` text NOT NULL,
  `date_publication` date NOT NULL,
  `presentation` tinytext,
  PRIMARY KEY (`id`),
  KEY `categorie` (`categorie_id`),
  FULLTEXT KEY `contenu` (`contenu`,`presentation`),
  CONSTRAINT `fk_news_categories1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Opportunity se réveillera-t-il après la tempête sur Mars ?',4,'Futura sciences','Le soir, quand on admire Mars au regard de braise — une braise particulièrement étincelante cet été —, tout paraît calme et paisible là-bas, à quelque 61 millions de kilomètres de la Terre. C\'est bien sûr une illusion car la Planète rouge est en train d\'essuyer une de ces immenses tempêtes de poussière dont elle a le secret. Elle a commencé modestement fin mai sous la forme d\'un petit front nuageux mais, en quelques jours, elle s\'est considérablement développée jusqu\'à englober toute la planète. Sous les yeux ébahis des orbiteurs, la surface de Mars s\'estompait sous un voile de poussière. Des images très impressionnantes.\nBonne nouvelle toutefois : la tempête est en train de s\'essouffler. Doucement, les particules en suspension retombent sur la surface. Et avec leur chute, l\'espoir renaît dans l\'équipe d\'Opportunity que le rover appelle à nouveau sa maison, la Terre. Pour l\'instant, toutefois, le ciel au-dessus du robot ne s\'est pas encore assez dissipé. Pour Opportunity, la lumière du Soleil est vitale — contrairement à Curiosity, en activité à plusieurs milliers de kilomètres de là — car il en a besoin pour recharger ses batteries.\nHélas, la tempête a tellement assombri le ciel que le rover, faute d\'un niveau d\'énergie suffisant, s\'est mis en hibernation. La dernière fois que les ingénieurs ont eu de ses nouvelles, c\'était le 10 juin. Ce jour-là, l\'opacité de l\'atmosphère, mesurée par un indice appelé tau, était de 10,8 alors que la moyenne est de 0,5. Pour le ranimer, ils estiment que cet indice doit rester au-dessous de 2,0. Or, actuellement, d\'après les estimations basées sur les observations de la sonde MRO du site du rover, tau a certes bien baissé mais il reste encore supérieur à 2,1 (avec des pics à 2,5). Il faut encore patienter...','2018-08-25','Quid de la tempête globale qui a obligé Opportunity à plonger en hibernation ? Le vaillant rover, actif depuis plus de 14 ans, va-t-il se remettre de ce long sommeil ? L\'équipe qui s\'en occupe a de bonnes raisons d\'être optimiste. Pour garder le '),(2,'27 juillet : Mars s’approche et la Lune s’éclipse',2,'Futura sciences','Il y a des dates qui marquent les esprits et celle du 27 juillet 2018 en fait indéniablement partie. Les amoureux des spectacles célestes n’auraient manqué pour rien au monde cette soirée. Pensez donc ! deux astres séparés de 7° apparents tenaient la vedette : la Lune, qui traversait le cône d’ombre terrestre en nous promettant de mettre ses plus beaux habits rouges, et Mars dont c’était la meilleure approche depuis 15 ans (à environ 58 millions de kilomètres). Tout s’annonçait donc pour le mieux… si ce n’est la météo. \nAprès trois semaines de ciel bleu et de fortes chaleurs, une perturbation s’était invitée et traversait tout le pays, ce qui a compromis fortement les observations.\nNous étions quelques-uns à nous retrouver au bord d’un plan d’eau à Montpont-en-Bresse, un lieu choisi pour son horizon EST dégagé (l’éclipse se produisait peu après le lever de la Lune). Le ciel s’était inexorablement couvert quelques heures plus tôt et nous espérions que les petites éclaircies annoncées sur les sites météo se confirmeraient.\nAprès avoir vu se lever la Lune colorée d’un rouge sombre pour assister à sa disparition derrière les nuages quelques minutes plus tard, il a fallu patienter jusqu’au moment du maximum vers 22h20 pour revoir notre satellite naturel accompagné par la Planète rouge. Le temps de faire quelques images et le rideau nuageux a tout recouvert.\nC’est seulement aux alentours de 23h que le ciel a fini par se dégager pour nous laisser admirer la sortie du cône d’ombre par la Lune. Alors que les images précédentes étaient prises avec des reflex Nikon (D3200 et D7100), la fin de l’éclipse a été immortalisée au bridge Finepix HS20 et son zoom de 720 mm de focale.\nLa prochaine éclipse de Lune visible en France aura lieu le 21 janvier 2019 et tous les astronomes espèrent qu’à cette occasion le ciel sera un peu plus clément qu’il ne l’a été ce 27 juillet !','2018-07-30','Beaucoup se souviendront de ce vendredi 27 juillet : l’opposition de la planète Mars coïncidait avec une éclipse totale de Lune, le tout dans les nuages… '),(3,'Nouvelle chute spectaculaire de météorite en Russie',4,'Futura sciences','Avec plus de 17 millions de km², la Russie est l’état dont le territoire est le plus vaste de la planète. C’est ce qui explique qu’on y observe un nombre important de grosses chutes météoritiques. Alors qu’on vient de commémorer le cent-dixième anniversaire de l’événement de la Toungouska et un peu plus de cinq ans après une incroyable explosion dans le ciel de Tcheliabinsk, une impressionnante chute de météorite s’est produite le jour du solstice d’été au-dessus de la région de Lipetsk, une ville située sur les bords de la rivière Voronej à 500 km au sud-est de Moscou.\nPlusieurs fragments ont déjà été ramassés dont un morceau de 550 grammes que l’on peut voir ici dans les mains de Evgenia Petrova, l’une des membres de l’équipe de l’Université Fédérale d’Oural.\nD’après les données fournies par le réseau de surveillance de la NASA, le bolide est entré dans l’atmosphère à une vitesse de 14 km/sec selon un angle de 79° et s’est désintégré à 27 km d’altitude, libérant une énergie équivalente à 3 kilotonnes de TNT (à comparer aux 500 kilotonnes de la météorite de Tcheliabinsk), ce qui correspond à un petit astéroïde de 4 mètres de diamètre.','2018-07-01','Le 21 juin la Russie a connu une nouvelle chute de météorite impressionnante dont plusieurs échantillons ont déjà été récoltés.'),(4,'D’où viennent les noms des formations lunaires ?',4,'Futura sciences','Si vous regardez une carte lunaire, vous serez sans doute surpris par certaines désignations comme le Marais de la Putréfaction, la Mer des Humeurs ou encore l’Océan des Tempêtes. D’où viennent donc ces noms et qui furent les premiers maîtres de la sélénographie, la science qui se consacre à l’étude des formations lunaires ?\nEn 450 avant notre ère, le philosophe grec Démocrite envisage l’existence des reliefs lunaires en imaginant « des montagnes élevées et des vallées creuses ». Il faut ensuite attendre 1603 pour trouver le premier dessin de la Lune effectué sans instrument par William Gilbert, mais la sélénographie prend véritablement son essor après l’invention de la lunette astronomique.\nEn juillet 1609 Thomas Harriot réalise le premier croquis de la Lune vue derrière une lunette grossissant une dizaine de fois, puis c’est au tour de Galilée en 1610. Ses dessins, de bien meilleure facture, sont publiés dans un célèbre ouvrage, Sidereus Nuncius.\nTrois cartes de la Lune vont ensuite poser les fondements de la nomenclature lunaire :\n  - La carte de Michel Florent Van Langrens en 1645 attribue aux plus importantes formations lunaires des noms issus de la royauté et ceux des saints catholiques (les petits cratères ont droit à des noms d’astronomes et de mathématiciens). Quant aux (fausses) mers lunaires elles reçoivent des noms latins de mers et d’océans terrestres.\n   - La carte d’Hévélius, publiée dans son Selenographia deux ans plus tard, ignore la nomenclature de Van Langrens : les formations lunaires portent les noms (grecs ou latins) des formations terrestres équivalentes.\n   - En 1651 paraît l’Almagestum Novum de Riccioli et Grimaldi. Les deux jésuites italiens choisissent la nomenclature toujours en usage aujourd’hui : pour les cratères des noms d’astronomes et de personnages célèbres, pour les « mers » des noms en latin en rapport avec la météorologie (Mers des Pluies, des Nuages ou du Froid) ou les traits de caractères (Mers des Humeurs, des Crises, de la Sérénité…).','2018-04-24','C’est au XVIIe siècle, avec l’apparition du télescope, que les astronomes vont donner des noms (toujours en usage) aux différentes formations lunaires.'),(5,'Une Super Lune, ça existe ou pas ?',3,'Futura sciences','En raison de son orbite elliptique, la Lune n’est pas toujours à la même distance de la Terre. Au plus près, le périgée, cette distance est de 356.700 km , au plus loin, l’apogée, la Lune se trouve à 406.300 km. Cette variation de distance induit automatiquement une variation du diamètre lunaire apparent qui oscille entre 29,5 minutes d’arc à l’apogée et 33,5 minutes d’arc au périgée, soit une différence de 12%. Au fil des lunaisons cette variation du diamètre apparent lunaire concerne donc toutes les phases de notre satellite naturel (croissant, Quartier, Lune gibbeuse…) sans que personne ne s’en émeuve… sauf quand le périgée coïncide avec la Pleine Lune (laquelle a lieu lors de l’alignement Soleil-Terre-Lune, un phénomène appelé syzygie).\nPour les astronomes cette coïncidence entre Pleine Lune et plus petite distance à la Terre est donc logiquement appelée phénomène de périgée-syzygie, un terme qui avouons-le n’est pas très sexy et ne risque pas d’inciter le grand public à lever les yeux au ciel.\nDepuis quelques années on a donc pris l’habitude de nommer Super Lune les 2 ou 3 plus grosses Pleines Lunes de l’année, lorsque notre satellite naturel est assez proche pour que son diamètre apparent dépasse 33 minutes d’arc. L’expression dérive de Supermoon, un terme employé par les médias scientifiques américains depuis longtemps et qu’on retrouve régulièrement dans les publications de la NASA (A Supermoon Trilogy) ou encore de l’ESO (Supermoon at La Silla).\nCe n’est donc qu’une expression, au même titre que « Soleil noir » désigne une éclipse totale de Soleil (et pourtant le Soleil n’est pas noir) ou encore « trou noir » qui désigne un objet céleste tellement compact que même la lumière ne peut s’en échapper (mais qui n’a rien d’un trou).\nCe qu’on peut regretter quand les médias généralistes parlent de Super Lune (on ne peut pas leur reprocher de parler sciences de temps en temps et de la rendre un peu plus accessible au grand public), ce n’est pas d’utiliser le terme mais de ne pas expliquer aux lecteurs que ce phénomène est imperceptible à l’oeil nu. En effet, même si une différence de taille de 12% n’est pas anodine, impossible quand on regarde une Super Lune de la comparer mentalement à une Pleine Lune à l’apogée observée six mois plus tôt. Ce comparatif n’est possible qu’à l’aide d’un montage photo comme ci-dessus.\nIl ne vous reste plus qu’a attendre les prochaines échéances (le 19 février 2019, diamètre apparent de la Lune  33,49 minutes d’arc puis le 08 avril 2020, diamètre apparent de la Lune : 33,47 minutes d’arc) pour vous faire votre propre opinion. En attendant je vous invite quand même à mettre le nez dehors à chaque Pleine Lune car c’est toujours un magnifique spectacle…','2018-01-17','Le débat refait surface régulièrement lorsque la Pleine Lune est proche de son périgée : peut-on parler de Super Lune ? Éléments de réponse.'),(6,'La Chine vise la Lune ',5,'Cité science','La Chine a lancé la semaine dernière un satellite de communication sur une orbite particulière : un point appelé Lagrange L2, d\'où il pourra communiquer à la fois avec la face cachée de la Lune et avec la Terre.\nCe lancement est le prélude à celui de la sonde lunaire Chang\'e 4 qui doit, à la fin de l’année, se poser dans le cratère Von Karman, situé près du pôle Sud, sur la face cachée de la Lune, caractérisée par peu de mers sombres de basalte et un amoncellement de cratères les uns sur les autres. \nCette sonde est le clone de celle qui, en décembre 2013, s’était posée sur la face visible de la Lune et avait déposé une petite automobile robotisée appelée Yutu. Chang\'e 4 devrait pouvoir fonctionner près d’une année sur la face cachée de la Lune, envoyant vers la Terre des informations sur la géologie du lieu et l\'environnement lunaire.\nCette mission est une grande première, car à ce jour, toutes les missions d\'exploration lunaire ont eu lieu sur la face visible de notre satellite. Le programme lunaire chinois est très ambitieux, et envisage même l\'arrivée de cosmonautes sur la Lune vers 2030.','2018-05-25','C’est parti ! La prochaine mission lunaire chinoise vient de débuter avec le lancement, le 21 mai dernier, d’un satellite devant relayer les données du futur atterrisseur Chang\'e 4.'),(7,'Tess à la recherche d\'exoplanètes',5,'Cité science','Lancé le 18 avril par une fusée Falcon 9 depuis la Californie, le satellite Tess pourrait bouleverser notre connaissance des exoplanètes, ces planètes qui tournent autour des étoiles autres que le Soleil. \nCe satellite de 350 kilogrammes sera positionné sur une orbite très lointaine, allant de 12 000 à 400 000 km de la Terre. Son télescope, de la taille d’un instrument d’amateur, scrutera les étoiles les plus brillantes de la voûte céleste à la recherche de minuscules diminutions d’éclat qui seraient dues au passage d’une planète devant son étoile. \nPar la méthode dite des transits, il doit observer près de 200 000 étoiles en deux ans, s’intéressant avant tout à celles semblables au Soleil. Sa mission est d\'identifier des planètes comparables à la Terre qui seront ensuite étudiées plus finement par le prochain télescope spatial américain, appelé James Webb Space, qui sera lancé en 2020. Pour cela, Tess sera capable d\'observer une portion considérable du Ciel : 85 % !','2018-04-20','Tess, un nouveau satellite chasseur d\'exoplanètes, a été lancé le 18 avril de la base de Vandenberg, en Californie. Au cours des deux prochaines années, il devrait observer 200 000 étoiles à la recherche de planètes hors du Système solaire.'),(8,'Une nouvelle onde gravitationnelle a été détectée',1,'Science et avenir','TRIO. Et de quatre ! Les grands interféromètres LIGO et Virgo viennent de nouveau de détecter les traces d\'une onde gravitationnelle, signature de la collision entre deux trous noirs. On observe un signal qui oscille, nous explique Benoît Mours, membres de l\'équipe Virgo au Laboratoire d\'Annecy de Physique des Particules. Plus les deux trous noirs se rapprochent l\'un de l\'autre, plus leur rotation l\'un autour de l\'autre est rapide. On observe alors une augmentation de la fréquence du signal, jusqu\'au moment où les deux trous noirs s\'effondrent l\'un sur l\'autre et fusionnent. À partir de la vitesse à laquelle ce signal augmente nous pouvons calculer les masses de chacun des trous noirs explique le chercheur.\nDans cette nouvelle détection, les mesures indiquent que l\'un des trous noirs avait une masse égale à 25 fois celle de notre soleil, et l\'autre, 31 fois. À l\'issue de cet impact, les deux trous noirs ont fusionné en un gigantesque corps céleste d\'une masse de 53 fois celle du soleil. Or la somme de 25 et de 31 est censée faire 56 et non 53. Les 3 masses solaires manquantes ont donc été transformés en énergie sous forme d\'ondes gravitationnelles. Ces dernières se sont propagées dans l\'espace pendant 1,8 milliards d\'années avant d\'arriver jusqu\'à nous. Une telle danse apocalyptique avait déjà été observée à trois reprise par les détecteurs LIGO en septembre puis décembre 2015 et en janvier 2017. Mais cette fois ce n\'est pas par deux mais par trois instruments que ce phénomène a été repéré, le 14 août 2017.\nC\'est le détecteur Advanced LIGO situé en Louisiane (États-Unis), qui l\'a repérée en premier suivie, puis 8 millièmes de seconde plus tard par celui situé dans l\'État de Washington. Le dispositif LIGO (Laser Interferometer Gravitational-Wave Observatory) est en effet composé de deux instruments. Enfin 6 millièmes de seconde plus tard, le signal est parvenu jusqu\'à l\'interféromètre Advanced Virgo situé près de Pise en Italie. C\'est la première détection qu\'effectue cet instrument depuis qu\'il est devenu opérationnel dans sa version avancée, depuis le 1er août 2017. Désormais, Virgo est équipé de miroirs plus lourds, de faisceaux plus gros, et d\'une instrumentation mieux isolée qui permet d\'améliorer sa sensibilité d\'un facteur pouvant aller jusqu\'à 10. On peut dores et déjà voir 2 à 3 fois plus loin qu\'avec le Virgo initial nous précise Benoît Mours.\nUne détection plus précise et de nouvelles données :\nCe bon résultat confirme le bon fonctionnement de l\'instrument Advanced Virgo, et ouvre la voie à une localisation bien plus précise des sources d\'ondes gravitationnelles précise le CNRS dans un communiqué. En effet, l\'utilisation de trois détecteur et non plus seulement deux a permis de circonscrire la zone d\'émission de ces ondes gravitationnelles d\'un facteur 10. Et l\'estimation de la distance à laquelle se trouve la source est aussi deux fois meilleure précise le CNRS. des informations précieuses qui vont permettre d\'essayer de voir s\'il a des contreparties optiques explique Benoît Mours. C\'est à dire si le phénomène s\'accompagne d\'un signal optique (un éjectat de matière chaude par exemple) que l\'on pourrait identifier à l\'aide de télescopes par exemple. Pour le moment, aucun signal optique n\'a toutefois été observé.\nAutre apport de l\'instrument Advanced Virgo : son orientation différente de celle des deux instruments LIGO, qui rend possible possible des tests plus poussés de la théorie de la relativité générale, élaborée par Albert Einstein. Certaines ondes se dilatent dans toutes les directions, elles sont dites scalaires. D\'autres, dites vectorielles progressent comme des vaguelettes à la surface de l\'eau, énumère Benoît Mours. Mais la théorie de la relativité veut que les ondes gravitationnelles soient tensorielles c\'est à dire qu\'elles dilatent l\'espace temps en s\'étendant d\'un côté, tout en le contractant de l\'autre. Disposer d\'instruments orientés différemment permet d\'apprécier cette subtile différence. Et l\'analyse des signaux de cette quatrième détection indiquent que c\'est effectivement le cas. \nCes résultats vont donner lieu à une publication cosignée par 76 scientifiques de six équipes du CNRS et d\'universités associées, à paraitre dans la revue Physical Review Letters. Ce nouvel évènement confirme que les couples de trous noirs sont relativement abondants et va contribuer à leur étude précise le CNRS. En attendant de nouvelles observations à l\'automne 2018, les premières données de ce réseau de trois détecteurs sont toujours en cours d\'analyse et devraient donner lieu prochainement à d\'autres annonces.','2017-09-27','Pour la première fois les trois grands interféromètres advanced Virgo et les deux instruments du LIGO ont repéré conjointement une onde gravitationnelle issue de la fusion de deux trous noirs il y a 1,8 milliards d\'années.'),(9,'Les étranges structures de la Nébuleuse Saturne',2,'Techno science','La somptueuse nébuleuse planétaire NGC 7009, par ailleurs baptisée Nébuleuse Saturne, apparaît constellée de mystérieuses bulles teintées de roses et de bleus éclatants, qui se détachent nettement sur fond noir. Cette image haute en couleurs a été acquise par MUSE, un instrument doté d\'une puissance élevée installé sur le Very Large Telescope (VLT) de l\'ESO, dans le cadre d\'une étude visant à cartographier, pour la première fois, la poussière emplissant une nébuleuse planétaire. Cette carte révèle la présence de structures complexes au sein même de la poussière - des enveloppes, un halo ainsi qu\'une mystérieuse ondulation. Elle permettra aux astronomes de mieux comprendre le processus à l\'origine des formes étranges et des symétries qu\'arborent les nébuleuses planétaires.\nEn réalité, les nébuleuses planétaires sont totalement distinctes des planètes. A l\'origine, la Nébuleuse Saturne était une étoile de faible masse, qui acheva son existence sous la forme d\'une géante rouge, expulsant ses enveloppes externes. De puissants vents stellaires ont éjecté cette matière que le rayonnement ultraviolet issu du noyau stellaire de température élevée a excitée, générant une nébuleuse circumstellaire constituée de poussière et de gaz chaud aux couleurs éclatantes. Au coeur de la Nébuleuse Saturne figure l\'étoile en fin de vie visible sur cette image, et sur le point de se changer en naine blanche (1).\nAfin de mieux comprendre les formes étranges qu\'arborent les nébuleuses planétaires, une équipe internationale d\'astronomes dirigée par Jeremy Walsh de l\'ESO a utilisé l\'instrument MUSE (Multi Unit Spectroscopic Explorer) dans le but de sonder les structures poussiéreuses de la Nébuleuse Saturne. MUSE est un instrument installé sur l\'un des quatre télescopes du Very Large Telescope à l\'Observatoire de Paranal de l\'ESO au Chili. La puissance dont il est doté lui permet, non seulement de générer une image de l\'objet observé, mais également de recueillir des informations concernant le spectre - ou la gamme de couleurs - de la lumière issue de cet objet en chacun des points de l\'image acquise.\nGrâce à MUSE, l\'équipe a pu générer les toutes premières cartographies optiques détaillées du gaz et de la poussière emplissant une nébuleuse planétaire (2). L\'image résultante de la Nébuleuse Saturne révèle l\'existence de nombreuses structures complexes, parmi lesquelles figurent une enveloppe interne de forme elliptique, une enveloppe externe, et un halo. Elle confirme également la présence de deux jets s\'étendant de part et d\'autre de l\'axe principal de la nébuleuse, et dont les extrémités forment des anses (du terme latin ansae désignant des poignées).\nCurieusement, l\'équipe a également découvert l\'existence d\'une structure en forme d\'onde au sein de la poussière, et dont l\'origine demeure en partie mystérieuse. La poussière emplit l\'intégralité de la nébuleuse. Toutefois, un pic de poussière a été observé sur le bord de l\'enveloppe interne, où elle semble être détruite. Plusieurs processus peuvent expliquer cette destruction. L\'enveloppe interne consiste essentiellement en une onde de choc en expansion, susceptible d\'éclater les grains au point de les faire disparaître, ou d\'élever la température au point d\'évaporer la poussière.\nCartographier le gaz et les structures de poussière emplissant les nébuleuses planétaires permettra d\'affiner notre compréhension de leur influence sur le cycle de vie et de mort des étoiles de faible masse, ainsi que de la diversité et de la complexité des formes qu\'elles arborent.\nLe potentiel de MUSE s\'étend bien au-delà des nébuleuses planétaires. Cet instrument doté d\'une sensibilité élevée est également capable d\'étudier la formation des étoiles et des galaxies au sein de l\'Univers jeune ainsi que de cartographier la distribution de la matière noire dans les amas de galaxies de l\'Univers jeune. En outre, MUSE a généré la toute première cartographie 3D des Piliers de la Création de la Nébuleuse de l\'Aigle (eso1518) et a fourni l\'image d\'une spectaculaire collision cosmique au sein d\'une galaxie voisine (eso1437).','2017-10-07',''),(10,'Kepler 78b : l\'exoplanète où l\'année dure 8,5 heures',2,'Futura sciences','Parmi le millier d\'exoplanètes découvertes depuis 1995, on trouve peu de géantes gazeuses dont les périodes orbitales sont inférieures à une journée terrestre. En effet, si près de leur étoile, les planètes subissent des forces de marée très élevées, ce qui ne favorise pas l\'existence de Jupiter chaudes. Les planètes rocheuses seraient plus résistantes, et on pourrait même s\'attendre à ce qu\'il existe davantage de superterres avec des périodes orbitales de moins de 24 heures que de géantes gazeuses du même genre.\nPour en avoir le cœur net, les astrophysiciens se sont mis à chercher des planètes rocheuses bouclant une orbite en quelques heures seulement, et ils en ont trouvé. L\'une des plus intéressantes vient juste d\'être découverte dans les données archivées des observations réalisées par Kepler. Elle se nomme Kepler 78b, et tourne autour d\'une étoile de type solaire à environ 700 années-lumière du Soleil en... 8,5 heures !\nMême si la Nasa a récemment déclaré que Kepler ne pouvait plus partir à la chasse aux exoplanètes [voir notre article du 19 août 2013, NDLR], bien des surprises nous attendent encore dans les données qu\'il a collectées en chassant des transits planétaires d\'exoterres et de superterres. Les variations de luminosité de presque 150.000 étoiles ont été patiemment surveillées par le télescope, et si 136 découvertes d\'exoplanètes ont été confirmées à ce jour, il en reste des milliers encore en attente (3.748 pour être précis). On n\'a pas fini d\'entendre parler de Kepler.\nPour l\'heure, l\'étude de Kepler 78b va se poursuivre. On sait déjà que sa période orbitale est l\'une des plus courtes connues pour une exoplanète rocheuse et l\'on peut déterminer une borne pour sa masse, qui doit être inférieure à sept fois celle de la Terre. L\'estimation la plus probable est que sa masse diffère peu de celle de notre planète, puisque son rayon est estimé à environ 1,16 fois celui de la Terre. En revanche, étant donné que le rayon de l\'orbite de Kepler 78b est seulement trois fois le rayon de l\'étoile Kepler 78, ce ne peut être une planète habitable. Elle est en rotation synchrone et sa face éclairée doit être portée à une température d\'au moins 2.300 K voire 3.100 K.','2013-08-22','Les astrophysiciens découvrent, depuis peu, des exoplanètes rocheuses qui orbitent en quelques heures seulement autour de leur étoile hôte. L\'une des dernières en date se trouvait cachée dans les archives des observations de Kepler, qui sont encore '),(11,'titre article exoploration ',5,'gfgdgdpikaaaachuuuuuuuuuuuuu ','pikachuuuuuuuuuuuuuuuuu','2018-11-15','lalalala lalalala'),(13,'dfsq',4,'fqs','','2018-12-13','fqs'),(14,'avec image',2,'dflkjq','contenu avec img','2018-12-06','pres avec image'),(15,'avec image 2',2,'kldmfsq','contenu 2','2018-12-13','pres 2'),(16,'nouvelle modif',4,'science magazine','les scientifiques ...','2018-06-18','nous avons découvert une nouvelle lune'),(18,'jeremy',NULL,NULL,'fdqfdqdsffqdfqds','2018-11-28','fdssfdfds'),(19,'avec image',NULL,NULL,'contenu avec img','2018-12-13','pres avec image'),(20,'avec image',NULL,NULL,'contenu avec img','2018-12-13','pres avec image');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organismes`
--

DROP TABLE IF EXISTS `organismes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organismes` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `description` tinytext,
  `acronyme` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organismes`
--

LOCK TABLES `organismes` WRITE;
/*!40000 ALTER TABLE `organismes` DISABLE KEYS */;
INSERT INTO `organismes` VALUES (1,'European Southern Observatory','L\'ESO est une organisation intergouvernementale européenne dans le domaine de l\'astrophysique au sol ; 15 états-membres, dont la France, contribuent en proportion de leur PIB. L\'ESO construit et gère un ensemble de télescopes au sol installés au Chi','ESO'),(2,'National Aeronautics and Space Administration','L\'agence gouvernementale qui est responsable de la majeure partie du programme spatial civil des États-Unis. Depuis sa création à la fin des années 1950, la NASA joue mondialement un rôle dominant dans le domaine du vol spatial habité, de l\'explorat','NASA'),(3,'Space Exploration Technologies Corporation','Fondée le 6 mai 2002 par l\'entrepreneur milliardaire Elon Musk (à l\'époque seulement millionnaire), il s\'agit de l\'un des deux prestataires privés à qui la NASA a confié un contrat de transport de fret vers la Station spatiale internationale (ISS) d','SpaceX'),(4,'European Spatial Agency','Agence spatiale intergouvernementale coordonnant les projets spatiaux menés en commun par une vingtaine de pays européens. Les activités de l\'agence couvrent l\'ensemble du domaine spatial : les sciences avec l\'astrophysique, l\'exploration du Système ','ESA'),(5,'','Roscosmos, officiellement l\'Entreprise d\'État pour les activités spatiales « Roscosmos » est l\'agence chargée du programme spatial civil russe .','ROSCOSMOS'),(6,'Laboratoire d’Annecy Physique des Particules',NULL,'LAPP'),(7,'Futura science','Média orienté vers l\'astronomie',NULL);
/*!40000 ALTER TABLE `organismes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_planet`
--

DROP TABLE IF EXISTS `sys_planet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_planet` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `galaxie_id` smallint(5) unsigned DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `age` decimal(10,6) unsigned DEFAULT NULL,
  `masse` decimal(8,6) unsigned DEFAULT NULL,
  `nb-planete` tinyint(3) unsigned DEFAULT NULL,
  `nb-satellite` tinyint(3) unsigned DEFAULT NULL,
  `demi-grand-axe` decimal(8,4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sys-planet_galaxie1_idx` (`galaxie_id`),
  CONSTRAINT `fk_sys-planet_galaxie1` FOREIGN KEY (`galaxie_id`) REFERENCES `galaxie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_planet`
--

LOCK TABLES `sys_planet` WRITE;
/*!40000 ALTER TABLE `sys_planet` DISABLE KEYS */;
INSERT INTO `sys_planet` VALUES (1,1,'Système Solaire',4.568000,1.001400,8,255,30.1000),(2,1,'Alpha Centauri',5.500000,2.130000,3,0,0.0400),(3,1,'Système de Liche',0.000000,0.000000,0,0,0.0000),(4,1,'Système HD 10180',0.000000,0.000000,9,0,3.4000),(5,1,'Système de Copernic',0.000000,0.000000,0,0,0.0000);
/*!40000 ALTER TABLE `sys_planet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 11:35:00
