-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: agilityperu_production
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.10.2

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'adriel@kosmka.com','$2a$10$XqmjBfH/jGGfMGFB46lcZuX5xQ4TE.P9l.dC.HJEC2ChtuLqTNubS',NULL,NULL,NULL,5,'2014-02-12 22:02:10','2014-02-12 20:29:49','190.236.52.247','190.236.52.247','2014-02-10 22:27:39','2014-02-12 22:02:10'),(2,'adriel@kosmyka.com','$2a$10$vCCzmENIPVybd1quoJ8m/OB5XysEEhz73kJTSNIkV0.NWETyWb04a',NULL,NULL,NULL,2,'2014-02-11 04:12:07','2014-02-11 00:14:05','190.222.98.51','190.222.98.51','2014-02-11 00:14:05','2014-02-11 04:12:07'),(3,'paul@kosmyka.com','$2a$10$tTlqiozFLII/8rT3574L9Oi5Kc7LVsEbdIQmM9DMiQ9HQy8x/n4OC',NULL,NULL,NULL,8,'2014-02-19 23:33:45','2014-02-18 15:39:58','190.232.86.8','190.232.86.8','2014-02-11 03:19:18','2014-02-19 23:33:45'),(4,'agilcanperu@hotmail.com','$2a$10$5Bh8o7/EGsZ/TfRStN0XuuxF1juCQ9.vajbIXfAtPLyVkEKL1etFu',NULL,NULL,NULL,4,'2014-02-21 15:56:41','2014-02-21 01:50:51','200.41.111.33','190.222.232.121','2014-02-18 15:52:58','2014-02-21 15:56:41');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auspiciadores`
--

DROP TABLE IF EXISTS `auspiciadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auspiciadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auspiciadores`
--

LOCK TABLES `auspiciadores` WRITE;
/*!40000 ALTER TABLE `auspiciadores` DISABLE KEYS */;
INSERT INTO `auspiciadores` VALUES (4,'4.png','Agilcan Perú','','','2014-02-06 15:39:22','2014-02-06 16:25:26'),(5,'5.png','Aventura Canina','','','2014-02-06 15:39:38','2014-02-06 16:25:33'),(6,'6.png','Prana Clínica Veterinaria','','','2014-02-06 15:40:04','2014-02-06 16:25:40'),(7,'7.png','Ev En Vivo','','','2014-02-06 15:40:20','2014-02-06 16:25:45'),(8,'logo-kosmyka-twitter.jpg','Kosmyka','','http://www.kosmyka.com','2014-02-06 15:41:40','2014-02-06 16:26:25'),(9,'jump.jpg','Jump Agility','','','2014-02-06 16:27:54','2014-02-06 16:27:54'),(10,'dicopet.jpg','DICOPET','','http://www.dicopet.com/','2014-02-18 15:49:07','2014-02-18 15:49:17'),(11,'logo_elite_k9.jpg','ELITE K-9','','http://www.elite-k9.org/','2014-02-18 15:49:40','2014-02-21 05:30:29'),(12,'logo_la_casa_bellota.jpg','La Casa de Bellota','<p>Hospedaje Canino Oficial del XIV Campeonato de Agility Las Am&eacute;ricas y El Caribe. Per&uacute; 2014</p>','www.lacasadebellota.com.pe','2014-02-21 05:28:38','2014-02-21 05:28:38'),(13,'logo_asty.jpg','ESCUELA CANINA ASTY','','https://www.facebook.com/ESCUELACANINAASTY','2014-02-21 05:33:16','2014-02-21 05:33:16'),(14,'logo_tu_pata.jpg','TU PATA','','https://www.facebook.com/tupata?fref=ts','2014-02-21 05:34:06','2014-02-21 05:34:06'),(15,'logo_melissa_thereliz.jpg','Fotografía Melissa Thereliz','','https://www.facebook.com/fotografia.melissathereliz?fref=ts','2014-02-21 05:35:10','2014-02-21 05:35:10'),(16,'logo_hills_y_slogan.jpg','Hill´s','','','2014-02-21 05:36:25','2014-02-21 05:36:25'),(17,'logo_frontline.jpg','Frontline','','','2014-02-21 05:37:14','2014-02-21 05:37:14');
/*!40000 ALTER TABLE `auspiciadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'Preguntas Generales:','','info@kcp.com.pe','consultas@kcp.com.pe','2014-02-12 19:43:30','2014-02-12 19:43:30'),(2,'Inscripciones y transferencias','Verónica Moya, Administradora Kennel Club Peruano','info@kcp.com.pe','','2014-02-12 19:44:48','2014-02-12 19:44:48'),(3,'Soporte Temas alojamiento y transporte local:','Rose Marie Toth, Comisión Nacional de Agility','rosemarietoth@hotmail.com','','2014-02-12 19:45:43','2014-02-12 19:45:43'),(4,'Comision Auspiciadores','Jose Isla Jimenez, Comisión Nacional de Agility','joseislakimenez@hotmail.com','','2014-02-12 19:46:40','2014-02-12 19:46:40'),(5,'Coordinación con Jueces',' Verónica Moya, Administradora Kennel Club Peruano','info@kcp.com.pe','','2014-02-12 19:47:35','2014-02-12 19:47:35'),(6,'Uniformes Delegación Perú',' Jessica García','jessicavgarcia@gmail.com','','2014-02-12 19:48:14','2014-02-12 19:48:14');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costos`
--

DROP TABLE IF EXISTS `costos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costos`
--

LOCK TABLES `costos` WRITE;
/*!40000 ALTER TABLE `costos` DISABLE KEYS */;
INSERT INTO `costos` VALUES (1,'Campeonato de Agility de las Américas y el Caribe FCI + Abierto AyC','<p>Primer perro:150 USD</p>\r\n<p>Segundo perro:130 USD</p>\r\n<p>Tercer perro: 80 USD</p>','2014-02-12 15:51:57','2014-02-12 15:51:57'),(2,'Campeonato de Agility de las Américas y el Caribe FCI + Abierto AyC','<p>Primer perro: 110 USD</p>\r\n<p>Segundo perro: 90 USD</p>\r\n<p>Tercer perro:&nbsp;&nbsp; 70 USD</p>','2014-02-12 15:52:37','2014-02-12 15:52:37'),(3,'Especial Grado 1','<p>50 USD por perro</p>','2014-02-12 15:52:51','2014-02-12 15:52:51'),(4,'Cierre de Inscripciones','<p><span lang=\"ES-PE\" style=\"font-size: 10.5pt; font-family: Calibri; color: #313131;\">Primera fecha de cierre de inscripciones: 28 de Febrero 2014</span> </p>\r\n<p><span lang=\"ES-PE\" style=\"font-size: 10.5pt; font-family: Calibri; color: #313131;\">Segunda fecha de cierre de inscripciones: 15 de Marzo del 2014 (esta inscripci&oacute;n tiene un costo adicional de 10%)</span></p>\r\n<p><span lang=\"ES-PE\" style=\"font-size: 10.5pt; line-height: 115%; font-family: Calibri; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi; color: #313131; mso-ansi-language: ES-PE; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"><span lang=\"ES-PE\" style=\"font-size: 10.5pt; line-height: 115%; font-family: Calibri; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi; color: #313131; mso-ansi-language: ES-PE; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Las duplas que en el Especial Grado 1 pasen a Grado 2 podr&aacute;n inscribirse al &ldquo;A&amp;C FCI&rdquo; y al &ldquo;Open&rdquo; luego de finalizado ese Campeonato. Tendr&aacute;n que realizar su inscripci&oacute;n y pago ese mismo</span> d&iacute;a&nbsp;</span><span lang=\"ES-PE\" style=\"font-size: 10.5pt; line-height: 115%; font-family: Calibri; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi; color: #313131; mso-ansi-language: ES-PE; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">al Comit&eacute; Organizador del Evento.</span></p>','2014-02-12 15:53:13','2014-02-12 22:05:22'),(6,'BANCO SCOTIABANK','<p><span lang=\"ES\">C&oacute;digo Interbancario Cuenta en D&oacute;lares: 009-040-000000174841-77</span></p>\r\n<p><span lang=\"ES\">C&oacute;digo SWIFT BSUDPEPL</span></p>\r\n<p><span lang=\"ES\">A nombre de KENNEL CLUB PERUANO</span></p>\r\n<p><span lang=\"ES\">Direcci&oacute;n:&nbsp; Av. Mariscal Miller N&deg; 2649, Lince</span></p>\r\n<p><span lang=\"ES\">Tel&eacute;fonos:&nbsp; 051 1 4411367 / 4411247 / 4411207</span></p>\r\n<p>&nbsp;</p>','2014-02-12 22:09:53','2014-02-19 23:34:46'),(7,'WESTER UNION','<p><span lang=\"ES\">A nombre de nuestro trabajador DOMINGO PLACIDO MANTARI AYBAR</span></p>\r\n<p><span lang=\"ES\">Documento de Identidad: 07025639</span></p>\r\n<p><span lang=\"ES\">Direcci&oacute;n:&nbsp; Av. Mariscal Miller N&deg; 2649, Lince</span></p>\r\n<p><span lang=\"ES\">Tel&eacute;fonos:&nbsp; 051 1 4411367 / 4411247 / 4411207</span></p>\r\n<p>&nbsp;</p>','2014-02-12 22:11:24','2014-02-19 23:36:27');
/*!40000 ALTER TABLE `costos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duplas`
--

DROP TABLE IF EXISTS `duplas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duplas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `registro_genealogico` varchar(255) DEFAULT NULL,
  `raza` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `grado` varchar(255) DEFAULT NULL,
  `tatuaje_microchip` varchar(255) DEFAULT NULL,
  `fotografia` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `especial_g1` tinyint(1) DEFAULT NULL,
  `open_ac` tinyint(1) DEFAULT NULL,
  `ac_oficial` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duplas`
--

LOCK TABLES `duplas` WRITE;
/*!40000 ALTER TABLE `duplas` DISABLE KEYS */;
INSERT INTO `duplas` VALUES (1,'CHASKA ','Perú','','Mestiza','Crema','Hembra','Medium','G1','94100004028130','pizap.com10.78569517936557531392958347514.jpg','2010-10-05',7,'2014-02-21 05:14:29','2014-02-21 05:24:20',1,0,0),(2,'Amaru Alqu Sumaq','Perú','KCP-RD-16092/09','Border Collie','Negro /blanco','Macho','Large','G1','941000012096237','AMARU.jpg','2009-03-10',8,'2014-02-21 16:33:53','2014-02-21 16:33:53',1,0,0),(4,'HELEN DECIDES - KINA','Perú','','BORDER COLLIE','BLANCO Y NEGRO','Hembra','Large','G2','','foto_kina_valla_2.jpg','2012-02-15',9,'2014-02-21 17:08:50','2014-02-21 19:00:43',0,1,1);
/*!40000 ALTER TABLE `duplas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guias`
--

DROP TABLE IF EXISTS `guias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dupla_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guias`
--

LOCK TABLES `guias` WRITE;
/*!40000 ALTER TABLE `guias` DISABLE KEYS */;
INSERT INTO `guias` VALUES (1,'AUGUSTO','BARRIOS ARIAS','Ca. Pietro Marchand N° 399 Dpto. 102','986995757','agilcanperu@hotmail.com','4','2014-02-21 18:59:05','2014-02-21 18:59:05');
/*!40000 ALTER TABLE `guias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteles`
--

DROP TABLE IF EXISTS `hoteles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoteles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteles`
--

LOCK TABLES `hoteles` WRITE;
/*!40000 ALTER TABLE `hoteles` DISABLE KEYS */;
INSERT INTO `hoteles` VALUES (1,'Miraflores Colon Hotel','<p>Katherina Zelaya Ramirez<br /> Jefa de Reservas<br /> Miraflores Col&oacute;n Hotel ****<br /> Direccion: Jr. Colon 600 Esq. c/ Juan Fanning - Miraflores<br /> Telefonos: 6100 - 900 / 444 - 2000<br /> Fax: 242 - 4691<br /> RPC: 981232395</p>','reservas@miraflorescolonhotel.com','www.miraflorescolonhotel.com','2014-02-12 19:35:07','2014-02-12 19:35:07'),(2,' Hotel Leon de Oro','<p>Milagros Z&uacute;&ntilde;iga La Riva <br /> Jefe de reservas<br /> Direcci&oacute;n: Av. La Paz N&deg; 930, Miraflores &ndash; Lima<br /> Tel&eacute;fono: (511) 242 - 6200</p>','reservas@leondeoroperu.com','http://www.leondeoroperu.com','2014-02-12 19:36:11','2014-02-12 19:36:11'),(3,' Hostels F1','<p>Direcci&oacute;n:Av.Alcanfores 690 - Miraflores (entre Av. Benavides y Av. 28 de julio)<br /> Telefonos:(511)445-0484 /9488-32288 /990357222</p>','reservas@f1hostelsperu.com','www.f1hostelsperu.com','2014-02-12 19:36:56','2014-02-12 19:36:56'),(4,' B&B Wasi','<p>Bed &amp; Breakfast Miraflores Wasi</p>\r\n<p>Bed &amp; Breakfast Miraflores Wasi Independencia en</p>\r\n<p>www.bedandbreakfastmiraflores.com</p>','','www.mirafloreswasi.com','2014-02-12 19:39:14','2014-02-12 19:39:40'),(5,' Cecilia Salas','<p>Gerente Comercial<br /> Direcci&oacute;n: Independencia 387 Miraflores. Lima. Per&uacute;.<br /> Tel&eacute;fono (51 1) 4473600</p>','cecilia@conocechile.cl','','2014-02-12 19:41:41','2014-02-12 19:41:41'),(6,'La Casa de Bellota','','','www.lacasadebellota.com.pe','2014-02-18 15:40:39','2014-02-18 15:40:39');
/*!40000 ALTER TABLE `hoteles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jueces`
--

DROP TABLE IF EXISTS `jueces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jueces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jueces`
--

LOCK TABLES `jueces` WRITE;
/*!40000 ALTER TABLE `jueces` DISABLE KEYS */;
INSERT INTO `jueces` VALUES (1,'Jozef_Van_Eester.jpg','Jozef van Eester, Bélgica. Juez del Agility World Champinship Luxemburgo 2014','<p>Para empezar me gustar&iacute;a dar las gracias a la organizaci&oacute;n de la Am&eacute;rica y Caribe de la convocatoria para el juzgamiento en el Per&uacute;. <br /> <br /> Tengo 59 a&ntilde;os y me gradu&eacute; como t&eacute;cnico en electr&oacute;nica en 1974. Tuve mi primer contacto con el Agility en 1982 y desde ese momento, quede totalmente enganchado a este deporte. Mi primer perro era un perro de caza, mi siguiente perro fue un Tervuren y despu&eacute;s tuve 2 Border Collie . <br /> <br /> Debido a mi pasi&oacute;n por este deporte, asist&iacute; a un seminario de jueces, con Peter Lewis y John Gilbert, en 1991. Ese mismo a&ntilde;o pas&eacute; los ex&aacute;menes de jueces en B&eacute;lgica y al poco tiempo me convert&iacute; en un juez de Agility internacional. <br /> <br /> Durante mi carrera como corredor (18 a&ntilde;os) y de juez (22 a&ntilde;os), he sido invitado a varios pa&iacute;ses europeos; juzgada muchos campeonatos nacionales, como el Campeonato Juvenil en 2007 y la Eurocopa de 2013. <br /> <br /> Me encanta competir y juzgar en Agility y me encanta ver a los perros realizan en la medida de sus posibilidades. Estoy seguro de que va a ser un gran y emocionante evento y espero sorprender a los competidores con cursos desafiantes. Estoy con muchas ganas de verlos all&iacute;!</p>','2014-02-12 15:41:51','2014-02-12 15:41:51'),(2,'TAMAS2.jpg','Tamás Tráj','<p>Naci en Gyor en 1988. Ser alumno de Budapest Business School, actualmente vivo en Budapest , capital de Hungr&iacute;a. <br /><br />Llegu&eacute; a conocer a el Agility en 2001 , visitando una sesi&oacute;n de entrenamiento con mi primer perro, Bizsu , un caniche miniatura. Estoy muy agradecido por ella, para llegar a conocer este maravilloso deporte, que m&aacute;s tarde se convirti&oacute; en parte de mi vida, trajo experiencias extraordinarias y un mont&oacute;n de amigos . Mi segunda bruja perro, un collie de frontera entr&oacute; en mi vida en el a&ntilde;o 2007 . La experiencia con un perro grande se tradujo en un mundo completamente diferente, lleno de nuevos retos. Llegu&eacute; t&iacute;tulos National Champion y fue miembro del equipo h&uacute;ngaro en numerosas ocasiones, tanto en el EO y los Campeonatos del Mundo. <br /><br />Adem&aacute;s de correr con mis perros, me relaciono con el Agility de muchas otras maneras . Yo era el entrenador del equipo de la agilidad en Gyor entre 2007-2012, la Teamleader entre 2009-2012 y tambi&eacute;n fue miembro del Comit&eacute; H&uacute;ngaro de Agility entre 2010-2012 . Actualmente poseo capacitaciones en numerosos clubes en Budapest. <br /><br />Yo so&ntilde;aba con ser juez desde mis primeros a&ntilde;os de competici&oacute;n, as&iacute; que estaba encantado de tener la oportunidad de iniciar la educaci&oacute;n, y finalmente convertido en un juez de Agility internacional en 2012 . Mi objetivo principal es la construcci&oacute;n de cursos t&eacute;cnicos y r&aacute;pidos que los dos perros y gu&iacute;as disfrutan, y que son realmente emocionantes para los espectadores y los aficionados tambi&eacute;n. Personalmente, estoy muy feliz de ver las soluciones t&eacute;cnicas brillantes y corre muy en&eacute;rgicos en mis cursos . Fue un verdadero honor para m&iacute; que se solicitar&aacute;n para juzgar en el FCI European Open 2014 en mi pa&iacute;s de origen y conocer a los mejores manipuladores de todo el mundo en el ring.</p>','2014-02-12 15:49:05','2014-02-12 15:49:05'),(3,'dog_juez_agility.jpg','Jueces FCI','','2014-02-21 14:57:39','2014-02-21 14:57:39');
/*!40000 ALTER TABLE `jueces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mensaje` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` VALUES (1,'Animalcine','fxk9audiovisuales@gmail.com','998297705','Somos una productora audiovisual  que nació  con el fin de especializarse en archivar material audiovisual referido a  flora y fauna. nos gustaría colaborar en el evento en tales fines nos ponemos a su disposición con nuestro personal profesional en comunicaciones para entrevistas a participantes y grabación del evento. de ya contar con gente en ello, entonces nos gustaría que nos brinden facilidades y nos acrediten para cubrir de manera periodística. Así mismo nos informen cómo figurar con esta u otra marca relacionada al mundo canino como auspiciadores del evento. quedamos de ustedes. Gracias por la atención.','2014-02-20 03:22:07','2014-02-20 03:22:07'),(2,'Animalcine','fxk9audiovisuales@gmail.com','998297705','Somos una productora audiovisual  que nació  con el fin de especializarse en archivar material audiovisual referido a  flora y fauna. nos gustaría colaborar en el evento en tales fines nos ponemos a su disposición con nuestro personal profesional en comunicaciones para entrevistas a participantes y grabación del evento. de ya contar con gente en ello, entonces nos gustaría que nos brinden facilidades y nos acrediten para cubrir de manera periodística. Así mismo nos informen cómo figurar con esta u otra marca relacionada al mundo canino como auspiciadores del evento. quedamos de ustedes. Gracias por la atención.','2014-02-20 03:22:19','2014-02-20 03:22:19'),(3,'Animalcine producciones','fxk9audiovisuales@gmail.com','998297705','Somos una productora audiovisual  que nació  con el fin de especializarse en archivar material audiovisual referido a  flora y fauna. nos gustaría colaborar en el evento en tales fines nos ponemos a su disposición con nuestro personal profesional en comunicaciones para entrevistas a participantes y grabación del evento. de ya contar con gente en ello, entonces nos gustaría que nos brinden facilidades y nos acrediten para cubrir de manera periodística. Así mismo nos informen cómo figurar con esta u otra marca relacionada al mundo canino como auspiciadores del evento. quedamos de ustedes. Gracias por la atención.','2014-02-20 03:23:51','2014-02-20 03:23:51'),(4,'','','','','2014-02-20 17:21:39','2014-02-20 17:21:39');
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `contenido` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (2,'Se CONFIRMA a los jueces del XIV CAMPEONATO DE AGILITY LAS AMERICAS Y EL CARIBE 2014','Jozef_Van_eester_y_Tamas_Traj.png','2014-01-17','<p><span lang=\"NL\">El Kennel Club Peruano y la Comisi&oacute;n Organizadora del A&amp;C 2014, se complacen en confirmar la presencia de los jueces:</span></p>\r\n<p><span lang=\"NL\">-<strong> Josef van Eester</strong>,</span><span lang=\"NL\"> B&eacute;lgica, Juez principal del Agility World Championship Luxemburgo 2014</span></p>\r\n<p><span lang=\"NL\">- <strong>Tam&aacute;s Tr&aacute;j</strong></span><span lang=\"NL\">, Hungr&iacute;a. Juez del European Open Hungr&iacute;a 2014</span></p>\r\n<p><span lang=\"NL\">Los esperamos y les enviamos un afectuoso saludo de&nbsp;bienvenida a nuestro Continente.</span></p>','2014-02-12 17:51:33','2014-02-12 17:53:26'),(3,'Director de la Competencia del XIV Campeonato de Las Américas y El Caribe 2014','ARTUR_PIRES.jpg','2014-02-01','<p>Es un enorme placer y orgullo confirmar la presencia del Sr. Artur Pires como Director de la Competencia de AGILITY A&amp;C 2014, sin duda su presencia nos otorga la mayor confianza y seguridad para el desarrollo de una excelente competencia.</p>\r\n<p><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.0.$end:0:$4:0\">Es con gran orgullo que he recibido y aceptado la invitaci&oacute;n a ser el Director de la Competencia de Las Am&eacute;ricas y El Caribe Per&uacute; 2014.</span><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3\"><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0\"><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$1:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$3:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$4:0\">S&eacute; lo mucho que la Comunidad Agilitera de Per&uacute; dese este evento y sent&iacute; toda esa emoci&oacute;n durante el fin de semana que tuve el placer de estar all&iacute; para juzgar sus pruebas, as&iacute; que acept&eacute; el reto.</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$5:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$7:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$8:0\">En los &uacute;ltimos a&ntilde;os han cambiado muchas cosas en el Agility Peruano, del cual soy testigo; ahora es la oportunidad del gran cambio, de la uni&oacute;n para organizar un gran campeonato y recibir a nuestros Agilitistas amigos de otros pa&iacute;ses en nuestra casa, y hacerlos sentir tan bien como si estuvieran en la suya.</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$9:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$11:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$12:0\">Tenemos dos grandes jueces mundiales, que seguramente nos van a deslumbrar con grandes pistas y juzgamientos, tenemos el local de la competencia, ahora el resto nos queda a todos nosotros por hacer.; menciono a todos porque contamos con su apoyo y disponibilidad a partir de ahora hasta el final del evento.</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$13:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$14:0\">Somos una sola comunidad de Agility Peruano y esta ser&aacute; la bandera que todos tenemos que llevar con orgullo.</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$15:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$17:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$18:0\">Para los competidores de otros pa&iacute;ses, les digo que estamos comprometidos en hacer una buena competencia, y para ello contamos con todos ustedes y sus compa&ntilde;eros inseparables, las estrellas del Campeonato, sus perros.</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$19:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$21:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$22:0\">Per&uacute; est&aacute; haciendo todos los esfuerzos para que sea una de las mejores competencias de Am&eacute;ricas y El Caribe, ser&aacute; un gran evento con los mejores competidores y canes de Am&eacute;rica, nadie puede faltar.</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$23:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$25:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$26:0\">Bienvenidos a todos los que estar&aacute;n all&iacute; para entregarles lo mejor que me sea posible.</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$27:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$29:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$30:0\">Un d&iacute;a tuve un sue&ntilde;o que est&aacute;bamos organizando un Am&eacute;ricas y El Caribe con m&aacute;s competidores que un campeonato del mundo, era un reconocimiento de que el Agility de las Am&eacute;ricas hab&iacute;a llegado a la cima. Espero que cada uno de estos campeonatos pueda servir para que mi sue&ntilde;o alg&uacute;n d&iacute;a se convierta en realidad.</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$31:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$33:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$34:0\">Un abrazo grande de su amigo</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$35:0\" /><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$37:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$38:0\">Artur Pires</span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$39:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$40:0\">Juez de Agility CBKC y FCI </span><br data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$41:0\" /><span data-reactid=\".3x.1:3:1:$comment417661265035125_1097906:0.0.$right.0.$left.0.0.0:3.0.3.0.$end:0:$42:0\">Director de Am&eacute;ricas y El Caribe Per&uacute; 2014</span></span></span></p>','2014-02-12 17:52:09','2014-02-12 17:52:09');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizadores`
--

DROP TABLE IF EXISTS `organizadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizadores`
--

LOCK TABLES `organizadores` WRITE;
/*!40000 ALTER TABLE `organizadores` DISABLE KEYS */;
INSERT INTO `organizadores` VALUES (1,'Comisión Nacional de Agility','<p><span lang=\"ES-TRAD\">Representante Escuela Canina Asty:&nbsp;<em>Antonio Aguilar</em></span></p>\r\n<p><span lang=\"ES-TRAD\">Representante Club Elite K-9:&nbsp;<em>Gustavo Villavicencia</em></span></p>','2014-02-10 22:28:28','2014-02-12 19:58:57'),(2,'Comisión Organizadora Las Américas y el Caribe 2014','<p><span lang=\"ES-TRAD\">Lic. Augusto Barrios</span></p>\r\n<p><span lang=\"ES-TRAD\">Vet. Doris Reategui B.&nbsp;</span></p>\r\n<p><span lang=\"ES-TRAD\">Rocio del Solar B.</span></p>\r\n<p><span lang=\"ES-TRAD\">Rosemarie Toth.</span></p>\r\n<p><span lang=\"ES-TRAD\">Ursula Aguilar F.</span></p>','2014-02-12 06:36:53','2014-02-12 06:37:06'),(3,'Comisiones de Soporte AyC 2014','<p><span lang=\"ES-TRAD\">Eillen Quezada B.</span></p>\r\n<p><span lang=\"ES-TRAD\">Jos&eacute; Luis Ugarte S.</span></p>\r\n<p><span lang=\"ES-TRAD\">Mari Lanatta</span></p>\r\n<p><span lang=\"ES-TRAD\">Milagros Pumarica M.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span lang=\"ES-TRAD\">Dise&ntilde;o Web:&nbsp; <em>www.kosmyka.com</em></span></p>\r\n<p><span lang=\"ES-TRAD\">Fotos:&nbsp;&nbsp;<em>Fotografia Melissa Thereliz</em></span></p>\r\n<p><span lang=\"ES-TRAD\">Dise&ntilde;o del Logo:&nbsp;&nbsp;<em>Gustavo Panta Vera</em></span></p>','2014-02-12 06:37:49','2014-02-12 06:38:00');
/*!40000 ALTER TABLE `organizadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programas`
--

DROP TABLE IF EXISTS `programas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programas`
--

LOCK TABLES `programas` WRITE;
/*!40000 ALTER TABLE `programas` DISABLE KEYS */;
INSERT INTO `programas` VALUES (1,'Jueves 3','<p>Revision Veterianaria</p>\r\n<p>Reconocimiento Pista</p>\r\n<p>Ceremonia Inauguracion</p>\r\n<p>Agility Grado 1</p>\r\n<p>Agility Grado 1</p>','2014-02-12 19:10:54','2014-02-12 19:11:17'),(3,'Viernes 4','<p><span lang=\"EN-US\">Jumping Equipos Open</span></p>\r\n<p><span lang=\"EN-US\">Jumping Individual Open</span></p>\r\n<p><span lang=\"EN-US\">Agility Equipos Open</span></p>','2014-02-12 19:14:35','2014-02-12 19:14:44'),(4,'Sabado 5','<p><span lang=\"EN-US\">Agility Individual Open</span> </p>\r\n<p><span lang=\"EN-US\">Jumping Individual A&amp;C</span></p>\r\n<p>Jumping Equipos A&amp;C</p>','2014-02-12 19:15:34','2014-02-12 19:15:46'),(5,'Domingo 6','<p>Agility Individual A&amp;C</p>\r\n<p>Agility Equipos A&amp;C</p>\r\n<p>Gran Jumping</p>\r\n<p>Ceremonia Clausura y Premiacion</p>\r\n<p>Cocktail de Despedida</p>','2014-02-12 19:16:23','2014-02-12 19:16:23');
/*!40000 ALTER TABLE `programas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reglamentos`
--

DROP TABLE IF EXISTS `reglamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reglamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reglamentos`
--

LOCK TABLES `reglamentos` WRITE;
/*!40000 ALTER TABLE `reglamentos` DISABLE KEYS */;
INSERT INTO `reglamentos` VALUES (1,'1. COMPETENCIAS','<p>Se realizaran las siguientes competencias: <br /> 1-Especial Grado 1 <br /> 2-Abierto de Agility de las Am&eacute;ricas y el Caribe (&ldquo;Open&rdquo;)<br /> 3-Campeonato de Agility de las Am&eacute;ricas y el Caribe FCI. (&ldquo;A&amp;C FCI&rdquo;)<br /> 4-Especial &ldquo;Gran Jumping de las Am&eacute;ricas&rdquo;.</p>\r\n<p>&nbsp;</p>\r\n<p>Especial Grado 1: Ser&aacute; la primera competencia a llevarse a cabo. Podr&aacute;n participar todas las duplas que compitan como Grado 1 en su pa&iacute;s, con perros homologados o no homologados. Esta competencia constar&aacute; de 2 pruebas individuales de agility y no incluir&aacute; jumping ni pruebas por equipos. No podr&aacute;n participar perros iniciantes.</p>\r\n<p>&nbsp;</p>\r\n<p>Abierto de Agility de las Am&eacute;ricas y el Caribe (Open): Se realizara a cabo despu&eacute;s de la Competencia Especial de Grado 1. Podr&aacute;n participar todas las duplas que compitan en grado 2 o 3 en sus respectivos pa&iacute;ses, con perros homologados o no homologados. Las pruebas del &ldquo;Open&rdquo; ser&aacute;n individuales y por equipos. <br /> <br /> Campeonato de Agility de las Am&eacute;ricas y el Caribe FCI (A&amp;C FCI):<br /> Podr&aacute;n participar todas las duplas que compitan en grado 2 &oacute; 3 en sus respectivos pa&iacute;ses. Solo pueden participar los perros que est&eacute;n homologados, es decir, perros con pedigr&iacute; que tienen que estar inscriptos en el Registro Geneal&oacute;gico de la organizaci&oacute;n reconocida por la FCI de su pa&iacute;s. Las pruebas del &ldquo;A&amp;C FCI&rdquo; ser&aacute;n individuales y por equipos.</p>\r\n<p>Especial Gran Jumping de las Am&eacute;ricas. Prueba individual de jumping en el cual podr&aacute;n participar todas las duplas inscritas en las competencias anteriores, en Grado 2 y Grado 3, con perros homologados y no homologados. <br /> <br /> En todas las competencias se correr&aacute;n las tres categor&iacute;as de la FCI (Mini, Medium y Large).<br /> De acuerdo a las condiciones estipuladas en el Reglamento de la FCI, en cualquiera de las competencias estipuladas, solo pueden participar perros con una edad m&iacute;nima de 18 meses. <br /> En todas la pruebas solo se utilizar&aacute;n obst&aacute;culos homologados.<br /> Las fechas y horarios se determinaran en el &ldquo;programa&rdquo; de cada d&iacute;a.</p>','2014-02-12 19:01:51','2014-02-12 19:01:51'),(2,'2. PRUEBAS INDIVIDUALES','<p>Especial de Grado 1: Incluir&aacute; 2 pruebas individuales de Agility, para cada categor&iacute;a, que contara con obst&aacute;culos de contacto y podr&aacute; contar con una mesa, siempre y cuando dicha mesa tenga contador electr&oacute;nico.</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;A&amp;C FCI&rdquo; y &ldquo;Open&rdquo;: Ambas competencias constar&aacute;n de dos pruebas. La primera prueba ser&aacute; una pista de jumping que no incluir&aacute; obst&aacute;culos de contacto ni mesa. La segunda prueba ser&aacute; una pista de agility que contar&aacute; con obst&aacute;culos de contacto y podr&aacute; contar con una mesa, siempre y cuando dicha mesa tenga contador electr&oacute;nico.</p>\r\n<p>Especial Gran Jumping: Incluir&aacute; 1 prueba individual de jumping, para cada categor&iacute;a, que no incluir&aacute; obst&aacute;culos de contacto ni mesa.</p>','2014-02-12 19:02:38','2014-02-12 19:02:38'),(3,'3. PRUEBAS POR EQUIPO','<p>Para el &ldquo;A&amp;C FCI&rdquo; y el &ldquo;Open&rdquo; se realizara una competencia por equipos que constar&aacute; de dos pruebas. La primera prueba ser&aacute; una pista de jumping que no incluir&aacute; obst&aacute;culos de contacto ni mesa. La segunda ser&aacute; una pista de agility que contar&aacute; con obst&aacute;culos de contacto y podr&aacute; contar con una mesa, siempre y cuando dicha mesa tenga contador electr&oacute;nico.</p>\r\n<p>&nbsp;</p>\r\n<p>En el &ldquo;Open&rdquo; podr&aacute;n participar un n&uacute;mero ilimitado de equipos por categor&iacute;a por cada pa&iacute;s. Se aceptar&aacute;n equipos mixtos, es decir, equipos integrados por duplas de distintos pa&iacute;ses. Estos equipos mixtos deben inscribirse <strong>hasta el 31 de marzo de 2014.</strong> Esto ser&aacute; solo aplicable a los pa&iacute;ses que no cuenten con la cantidad de duplas suficientes para formar equipo. Ej. Si el pa&iacute;s X tiene 16 perros Large los 4 equipos deber&aacute;n pertenecer al mismo pa&iacute;s. Esta opci&oacute;n es para alentar a aquellos pa&iacute;ses que no cuentan con muchas duplas en determinadas categor&iacute;as y que de otro modo solo podr&iacute;an correr por individual. Un perro podr&aacute; correr solo para un equipo. Los equipos deben inscribirse <strong>hasta el 31 de marzo de 2014.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>En el &ldquo;A&amp;C FCI&rdquo; cada pa&iacute;s podr&aacute; seleccionar a un solo equipo para que lo represente en cada categor&iacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p>En ambas competencias un equipo estar&aacute; compuesto por cuatro duplas, competencias que se regir&aacute;n por la normativa actualizada de la FCI. El m&iacute;nimo de duplas que se aceptar&aacute;n por equipo ser&aacute; de tres en cuyo caso se considerar&aacute; una carrera con eliminaci&oacute;n.</p>\r\n<p>Para determinar al equipo ganador en cada uno de estos campeonatos se sumar&aacute;n los resultados de ambas pruebas, es decir, del jumping y del agility, de las tres mejores duplas que componen cada equipo.</p>','2014-02-12 19:03:20','2014-02-12 19:59:14'),(4,'4. CATEGORIAS','<p>Todas las Competencias constaran de las siguientes categor&iacute;as:<br /> 4.1 Mini o perros peque&ntilde;os, menos de 35 cent&iacute;metros<br /> 4.2 Medium o perros medianos, desde 35 cent&iacute;metros y menos de 43 cent&iacute;metros.<br /> 4.3 Large o perros grandes, 43 cent&iacute;metros y m&aacute;s</p>','2014-02-12 19:03:51','2014-02-12 19:03:51'),(5,' 5. RECORRIDO DE PERRO BLANCO EN PRUEBA','<p>Previo al comienzo de las pruebas y una vez que el juez ha determinado el Tiempo Est&aacute;ndar, el juez podr&aacute; solicitar que un perro no inscrito en dicha prueba realice la pista.</p>','2014-02-12 19:05:24','2014-02-12 19:05:24'),(6,'6. INSCRIPCIONES','<p>Cada participante podr&aacute; realizar su inscripci&oacute;n directamente en el sitio oficial del Am&eacute;ricas y el Caribe 2014.</p>\r\n<p><strong>Cierre de Inscripciones:</strong></p>\r\n<p>Primera fecha de cierre de Inscripciones: <strong>28 de Febrero de 2014</strong></p>\r\n<p>Segundo fecha de cierre de Inscripciones: <strong>15 de marzo de 2014</strong> (esta inscripci&oacute;n tiene un costo adicional de 10%)</p>\r\n<p>Las duplas que en el Campeonato Grado 1 pasen a Grado 2 podr&aacute;n inscribirse al &ldquo;A&amp;C FCI&rdquo; y al &ldquo;Open&rdquo; luego de finalizado ese Campeonato. Tendr&aacute;n que realizar su inscripci&oacute;n y pago ese mismo dia al Comit&eacute; Organizador del Evento.</p>\r\n<p><strong>Forma de Pago:</strong></p>\r\n<p>Dep&oacute;sito a la Cuenta Corriente CCI<br /> Para completar su inscripci&oacute;n dede <strong>enviar la constancia</strong> de deposito a: info@agilityperu2014.com</p>\r\n<p><strong>A trav&eacute;s de VISA:</strong></p>\r\n<p>Los pagos para la inscripci&oacute;n a trav&eacute;s de VISA, podr&aacute; realizarlo a partir del 01 de febrero de 2014</p>','2014-02-12 19:05:49','2014-02-12 19:06:18'),(7,'7. EQUIPAMIENTO DE PISTA','<p>En las competencias se podr&aacute;n utilizar los siguientes obst&aacute;culos de agility debidamente homologados: saltos simples, un salto doble, un salto largo, muro, mesa*, puente, llanta, rampa, slalom, t&uacute;nel abierto o r&iacute;gido, t&uacute;nel ciego o flexible, balanc&iacute;n.</p>\r\n<p>Nota*: la mesa se utilizar&aacute; s&oacute;lo si cuenta con un contador electr&oacute;nico. De no ser as&iacute;, no se incluir&aacute; la mesa.</p>','2014-02-12 19:06:52','2014-02-12 19:06:52'),(8,'8. SUPERFICIE','<p>La superficie sobre la cual se desarrollar&aacute;n las competencias ser&aacute; gras natural o gras artificial.</p>','2014-02-12 19:07:09','2014-02-12 19:07:09'),(9,'9. UNIFORMES','<p>En todas las competencias las delegaciones representativas, tanto individuales como por equipos deber&aacute;n llevar el uniforme oficial de cada pa&iacute;s, as&iacute; como en el desfile de apertura y cierre del evento. En la pista los gu&iacute;as deben llevar obligatoriamente las pecheras con el n&uacute;mero que les proveer&aacute; la organizaci&oacute;n.</p>','2014-02-12 19:07:34','2014-02-12 19:07:34'),(10,' 10. REVISION VETERINARIA','<p>Todos los perros deber&aacute;n pasar por una revisi&oacute;n veterinaria antes del inicio de las competencias. En dicha revisi&oacute;n veterinaria se verificar&aacute; la validez de la vacuna antirr&aacute;bica. Se verificar&aacute; el microchip o tatuaje tanto para los perros homologados como no homologados sean de grado 1, 2 &oacute; 3. Se proceder&aacute; a medir la altura a la cruz de todos los perros en competencia.</p>\r\n<p>En las competencias no se aceptar&aacute;n perros enfermos, heridos o hembras en per&iacute;odo de gestaci&oacute;n. Las perras en celo podr&aacute;n competir siempre y cuando se mantengan separadas del resto de los perros participantes y que compitan en &uacute;ltimo lugar de cada prueba.</p>','2014-02-12 19:08:06','2014-02-12 19:08:06'),(11,'11. JUECES','<p>Los jueces designados son responsables de juzgar las pistas. Todas las decisiones de los jueces son definitivas e inapelables. Los jueces podr&aacute;n solicitar la ayuda de un juez auxiliar para juzgar la zona de contacto de subida de la pasarela. En caso de que el juez auxiliar marque una falta, &eacute;sta deber&aacute; ser confirmada por el Juez para ser admitida.</p>','2014-02-12 19:08:25','2014-02-12 19:08:25'),(12,'12. PREMIACION','<p>El comit&eacute; organizador debe cumplir y llevar a cabo todas las normas y regulaciones de la FCI que enumeran todos los deberes y responsabilidades del comit&eacute; organizador.</p>\r\n<p>&nbsp;</p>\r\n<p>La premiaci&oacute;n se realizar&aacute; en base a cada competencia, por cada categor&iacute;a y en cada prueba. Se premiar&aacute; a quienes hayan ocupado del primer (1er) al tercer (3er) lugar.</p>\r\n<p>&nbsp;</p>\r\n<p>Competencia se entiende por: &ldquo;Campeonato de Agility de las Am&eacute;ricas y el Caribe FCI&rdquo; (A&amp;C FCI), &ldquo;Abierto de Agility de las Am&eacute;ricas y el Caribe&rdquo; (Open), &ldquo;Especial Grado 1&rdquo; y &ldquo;Especial Gran Jumping&rdquo;. Categor&iacute;as se entiende por perros peque&ntilde;os (mini), medianos (medium) y grandes (large). Pruebas se entienden por jumping y agility, tanto en forma individual como por equipos.</p>\r\n<p>&nbsp;</p>\r\n<p>En el &ldquo;A&amp;C FCI&rdquo; y el &ldquo;Open&rdquo; los ganadores de cada competencia ser&aacute;n determinados mediante la sumatoria de los resultados de las pruebas de agility y jumping respectivamente. Si hubiere un empate en el primer lugar se realizar&aacute; una tercera pista de desempate. En estas competencias individuales se premiar&aacute; a quienes ocupen del primer (1er) al tercer (3er) lugar en todas las categor&iacute;as. Adicionalmente, se premiara a quienes ocupen del primer (1er) al tercer (3er) lugar en cada una de las pruebas individualmente (jumping y agility) en cada categor&iacute;a. En la prueba de equipos se premiar&aacute; a los equipos que ocupen del primer (1er) al tercer (3er) lugar en cada una de las categor&iacute;as. Se premiara a las 4 duplas de cada equipo que sube a podio.</p>\r\n<p>&nbsp;</p>\r\n<p>En Especial Grado 1 se premiar&aacute; a quienes ocupen del primer (1er) al tercer (3er) lugar en las dos pruebas individuales de agility en todas las categor&iacute;as.</p>\r\n<p>En el Especial Gran Jumping se premiar&aacute;n las duplas que ocupen del primer (1er) al tercer (3er) lugar en cada categor&iacute;a.</p>','2014-02-12 19:08:51','2014-02-12 19:08:51'),(13,'13. CASOS ESPECIALES','<p>Todos los casos especiales ser&aacute;n resueltos por el Comit&eacute; Organizador del evento</p>','2014-02-12 19:09:12','2014-02-12 19:09:12');
/*!40000 ALTER TABLE `reglamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitos`
--

DROP TABLE IF EXISTS `requisitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisitos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(255) DEFAULT NULL,
  `contenido` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitos`
--

LOCK TABLES `requisitos` WRITE;
/*!40000 ALTER TABLE `requisitos` DISABLE KEYS */;
INSERT INTO `requisitos` VALUES (1,'CANADA ','<p><span lang=\"EN-US\">- VACCINES: RABIES (CERTIFICATE). Additional:&nbsp; DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS (Certificate)</span></p>\r\n<p><span lang=\"EN-US\">- DEWORM (HEARTWORMS INCLUDED)&nbsp; AND EXTERNAL (30 days previous to departure)</span></p>\r\n<p><span lang=\"EN-US\">- CERTIFICATE OF HEALTH EXAMINATION FOR SMALL ANIMALS</span></p>','2014-02-12 19:25:21','2014-02-12 19:25:31'),(2,'USA','<p><span lang=\"EN-US\">-VACCINES: RABIES (CERTIFICATE). Additional:&nbsp; DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS&nbsp; (CERTIFICATE).</span> </p>\r\n<p><span lang=\"EN-US\">- DEWORM (HEARTWORMS INCLUDED)&nbsp; AND EXTERNAL (30 days previous to departure)</span></p>\r\n<p><span lang=\"EN-US\">- USDA ANIMAL &amp; PLANT HEALTH ISPECTION SERVICE&nbsp; - CERTIFICATE OF HEALTH EXAMINATION FOR SMALL ANIMALS</span></p>','2014-02-12 19:26:10','2014-02-12 19:26:24'),(3,'MEXICO','<p><span lang=\"es\">- VACUNAS:&nbsp; RABIA (CERTIFICADO).&nbsp;&nbsp;</span>Adicionalmente:&nbsp;&nbsp;<span lang=\"es\">DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS</span></p>\r\n<p><span lang=\"es\">- DESPARASITACI&Oacute;N INTERNA Y EXTERNA (30 di&aacute;s antes del embarque)</span></p>\r\n<p><span lang=\"es\">- CAJAS DE TRANSPORTE DESINFECTADAS PREVIO AL EMBARQUE (certificado).</span></p>\r\n<p><span lang=\"es\">- CERTIFICADO ZOOSANITARIO DE EXPORTACI&Oacute;N (Secretaria de Agricultura, Ganader&iacute;a, Desarrollo Rural, Pesca y Alimentaci&oacute;n)</span></p>','2014-02-12 19:26:47','2014-02-12 19:27:23'),(4,' EL SALVADOR','<p><span lang=\"es\">- VACUNAS:&nbsp; RABIA (CERTIFICADO).&nbsp;&nbsp;</span>Adicionalmente:&nbsp;&nbsp;<span lang=\"es\">DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS</span></p>\r\n<p><span lang=\"es\">- DESPARASITACI&Oacute;N INTERNA Y EXTERNA (30 di&aacute;s antes del embarque)</span> </p>\r\n<p><span lang=\"es\">- CAJAS DE TRANSPORTE DESINFECTADAS PREVIO AL EMBARQUE (certificado).</span></p>\r\n<p><span lang=\"es\">- CERTIFICADO ZOOSANITARIO DE EXPORTACI&Oacute;N (Ministerio de Agricultura y Ganader&iacute;a)</span></p>','2014-02-12 19:28:20','2014-02-12 19:28:41'),(5,'COLOMBIA','<p><span lang=\"es\">- VACUNAS:&nbsp; RABIA (CERTIFICADO).&nbsp;&nbsp;</span>Adicionalmente:&nbsp;&nbsp;<span lang=\"es\">&nbsp;DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS</span> </p>\r\n<p><span lang=\"es\">- DESPARASITACI&Oacute;N INTERNA Y EXTERNA (30 di&aacute;s antes del embarque)</span></p>\r\n<p><span lang=\"es\">- CERTIFICADO DE INSPECCI&Oacute;N SANITARIA DE ANIMALES&nbsp; (Instituto Colombiano Agropecuario )</span></p>','2014-02-12 19:29:50','2014-02-12 19:30:19'),(6,'CHILE','<p><span lang=\"es\">- VACUNAS:&nbsp; RABIA (CERTIFICADO).&nbsp; Adicionalmente:&nbsp; DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS</span></p>\r\n<p><span lang=\"es\">- DESPARASITACI&Oacute;N INTERNA Y EXTERNA (30 di&aacute;s antes del embarque)</span></p>\r\n<p><span lang=\"es\">- CERTIFICADO ZOOSANITARIO DE EXPORTACI&Oacute;N (Ministerio de Agricultura &ndash; Servicio Agr&iacute;cola y Ganadero).</span></p>','2014-02-12 19:31:07','2014-02-12 19:31:15'),(7,'VENEZUELA','<p><span lang=\"es\">- VACUNAS:&nbsp; RABIA (CERTIFICADO).&nbsp; Adicionalmente:&nbsp; DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS</span></p>\r\n<p><span lang=\"es\">- DESPARASITACI&Oacute;N INTERNA Y EXTERNA (30 di&aacute;s antes del embarque)</span></p>\r\n<p><span lang=\"es\">- PERMISO SANITARIO DE EXPORTACI&Oacute;N (Ministerio del Poder Popular para la Agricultura y Tierras,&nbsp; Instituto Nacional de Salud Agr&iacute;cola Integral).</span></p>\r\n<p><span lang=\"es\">- CERTIFICADO DE INSPECCI&Oacute;N ZOOSANITARIO.</span></p>','2014-02-12 19:31:40','2014-02-12 19:31:54'),(8,'BRASIL','<p><span lang=\"es\">- VACUNAS: &nbsp;RABIA (CERTIFICADO).&nbsp; Adicionalmente:&nbsp; DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS</span></p>\r\n<p><span lang=\"es\">- DESPARASITACI&Oacute;N INTERNA Y EXTERNA (30 di&aacute;s antes del embarque)</span></p>\r\n<p><span lang=\"es\">- CERTIFICADO ZOOSANITARIO INTERNACIONAL (Ministerio Da Agricultura, Pecuaria e Abastecimento, Secretaria de Defesa Agropecuaria)</span></p>','2014-02-12 19:32:23','2014-02-12 19:32:33'),(9,'ARGENTINA','<p><span lang=\"es\">- VACUNAS:&nbsp; RABIA (CERTIFICADO).&nbsp; Adicionalmente:&nbsp; DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS</span> </p>\r\n<p><span lang=\"es\">- DESPARASITACI&Oacute;N INTERNA Y EXTERNA (30 di&aacute;s antes del embarque)</span></p>\r\n<p><span lang=\"es\">- CERTIFICADO VETERINARIO INTERNACIONAL (Servicio Nacional de Sanidad y Calidad Agroalimentaria, Ministerio de Agricultura, Ganader&iacute;a y Pesca)</span></p>','2014-02-12 19:32:57','2014-02-12 19:33:08'),(10,'URUGUAY','<p><span lang=\"es\">- VACUNAS:&nbsp; RABIA (CERTIFICADO).&nbsp; Adicionalmente:&nbsp; DISTEMPER, PARVOVIRUS, PARAINFLUENZA, LEPTOSPIROSIS,&nbsp; CORONAVIRUS, HEPATITIS</span></p>\r\n<p><span lang=\"es\">- DESPARASITACI&Oacute;N INTERNA Y EXTERNA (30 di&aacute;s antes del embarque)</span></p>\r\n<p><span lang=\"es\">- CERTIFICADO SANITARIO OFICIAL PARA CIRCULACI&Oacute;N DE CANINOS (Divisi&oacute;n de Sanidad Animal del Ministerio de Ganader&iacute;a, Agricultura y Pesca)</span></p>','2014-02-12 19:34:04','2014-02-12 19:34:04');
/*!40000 ALTER TABLE `requisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140131220634'),('20140131225837'),('20140203191419'),('20140203204604'),('20140203221932'),('20140204193113'),('20140204201522'),('20140204202918'),('20140204204206'),('20140204210051'),('20140204214143'),('20140204220806'),('20140204224745'),('20140205191519'),('20140205213415'),('20140207203358'),('20140208214632'),('20140208225159'),('20140210162535'),('20140210195706'),('20140213201240'),('20140213215102'),('20140213215103');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (3,'LOGO_A_C_HILLS_FRONTLINE_2014.jpg','Copa Hill´s','2014-02-21 04:10:29','2014-02-21 13:22:37'),(12,'ORGANIZADO_POR_A_C.png','','2014-02-21 06:12:29','2014-02-21 06:12:29'),(13,'AUSPICIADO_POR_A_C.png','','2014-02-21 06:49:10','2014-02-21 06:49:10'),(22,'CAMPO_GRAFICO_FOTO_A_C_2014_V6.png','','2014-02-21 13:21:35','2014-02-21 13:29:35'),(23,'CAMPO_web_PANORAMICA_LOGO_LA_MOLINA.png.jpg','','2014-02-21 13:45:40','2014-02-21 14:14:57'),(24,'jueces_slide.jpg','','2014-02-21 14:07:57','2014-02-21 14:10:16'),(32,'slide_jack.png','','2014-02-21 14:20:34','2014-02-21 14:37:18'),(33,'slide_perros_3.jpg','','2014-02-21 14:21:40','2014-02-21 14:34:30'),(34,'slide_perros_1.jpg','','2014-02-21 14:40:38','2014-02-21 14:40:38'),(35,'slide_perros_2.jpg','','2014-02-21 14:42:30','2014-02-21 14:44:36');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streamings`
--

DROP TABLE IF EXISTS `streamings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streamings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_embed` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streamings`
--

LOCK TABLES `streamings` WRITE;
/*!40000 ALTER TABLE `streamings` DISABLE KEYS */;
/*!40000 ALTER TABLE `streamings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,1,'Dupla',NULL,NULL,'tags','2014-02-21 05:14:29'),(2,1,2,'Dupla',NULL,NULL,'tags','2014-02-21 16:33:53'),(4,1,4,'Dupla',NULL,NULL,'tags','2014-02-21 17:08:50');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Perú');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportes`
--

DROP TABLE IF EXISTS `transportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transportes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportes`
--

LOCK TABLES `transportes` WRITE;
/*!40000 ALTER TABLE `transportes` DISABLE KEYS */;
INSERT INTO `transportes` VALUES (1,'Taxi Remisse Panaka','<p>(511) 445 6986<br /> (511) 994465898 / (511) 990850023<br /> (98) 106*4056 / (99) 831*3188</p>','informes@panakaperu.com','http://www.panakaperu.com','2014-02-12 18:16:50','2014-02-12 18:17:04');
/*!40000 ALTER TABLE `transportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicaciones`
--

DROP TABLE IF EXISTS `ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ubicaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lugar` varchar(255) DEFAULT NULL,
  `direccion` text,
  `descripcion` text,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `imagen1` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL,
  `imagen3` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES (1,'Estadio Municipal de La Molina','Avenida La Molina, Las Lagunas, La Molina','Capacidad: 5000 personas',NULL,NULL,'5032.jpg','pTIp0.jpg','Estadio_de_La_Molina_2_Club_Atletico_Minero.jpg','2014-02-10 22:21:01','2014-02-12 15:35:26');
/*!40000 ALTER TABLE `ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_usuarios_on_email` (`email`),
  UNIQUE KEY `index_usuarios_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'vspirolazzi@hotmail.com','$2a$10$IAAT5IF8TJgoRBNnL/B1/.2Skm9hyUBarPT761o.0YLEBN.QXwHR6','Victoria','Spirolazzi','Lacar 266','','Villa La Angostura','Argentina',NULL,NULL,NULL,1,'2014-02-20 03:45:49','2014-02-20 03:45:49','191.97.28.135','191.97.28.135','2014-02-20 03:45:49','2014-02-20 03:45:49'),(2,'azul.agility@gmail.com','$2a$10$7G34NgR5UDWOwmq9PqnGWOsHRdsEFOszu6OjlcRuCILrgxSs1zQVu','Ana María','Zuluaga Velásquez','Cra48 # 12 sur-70','(57) 3164229622','Medellín','Colombia',NULL,NULL,NULL,1,'2014-02-20 03:59:27','2014-02-20 03:59:27','181.129.153.53','181.129.153.53','2014-02-20 03:59:27','2014-02-20 03:59:27'),(3,'sdcampillay@hotmail.com','$2a$10$kAAFZuelfSRy.xXo/DgUBebSnF57fFXW6ZkE3p2jZ4tZJ/jPytNYG','Sergio Daniel','Campillay','Pte Roca 2968','+543424732335','Santa Fe','Argentina',NULL,NULL,NULL,1,'2014-02-20 12:38:29','2014-02-20 12:38:29','201.253.39.7','201.253.39.7','2014-02-20 12:38:28','2014-02-20 12:38:29'),(4,'lu.spinelli14@hotmail.com','$2a$10$8jXdM0CIkFu3XQIifFPEVu7duGFmTuuQqxgNI.KjxRoKdtjaBYsGK','Luciana ','Spinelli Louzada','Rua Marcelo Muller, 287 - Jd. Independência ','11 2371-9832','São Paulo','Brasil',NULL,NULL,NULL,2,'2014-02-20 18:50:28','2014-02-20 13:48:41','189.102.146.66','189.102.146.66','2014-02-20 13:48:41','2014-02-20 18:50:28'),(5,'jdoc8212@hotmail.com','$2a$10$da56Nk/5uD/BwjHLoz2.IOh3YOYLzKw5YJ4L5dBFegVnzeZ9qD/IC','Jason David ','Ortiz Cañon','Calle 69 A # ))-15','2232405','Bogota','Colombia',NULL,NULL,NULL,1,'2014-02-20 16:08:06','2014-02-20 16:08:06','186.30.200.115','186.30.200.115','2014-02-20 16:08:06','2014-02-20 16:08:06'),(6,'tiago@parquecanino.com.br','$2a$10$U4gNQ47NWObmaCY0/xY7Yuv422Hng9Zakl1vGjd9lXbmosAZY0POG','Tiago','Rocha Vieira','Rua Surucuã 173','55 (11) 4243-1054','Cotia','Brasil',NULL,NULL,NULL,1,'2014-02-21 01:56:22','2014-02-21 01:56:22','179.97.153.15','179.97.153.15','2014-02-21 01:56:22','2014-02-21 01:56:22'),(7,'lvelezmorogc@gmail.com','$2a$10$JuG9rwcy3a.Gg0BBjEVzpec2tCfubiZTIm56jpW4B8/aYs8HzkNs2','Lorena ','Velezmoro','Neisser Llacsa No 181 Mirfalores','997977233','Lima','Perú',NULL,NULL,NULL,1,'2014-02-21 05:09:21','2014-02-21 05:09:21','201.230.186.236','201.230.186.236','2014-02-21 05:09:21','2014-02-21 05:09:21'),(8,'dorisreategui@hotmail.com','$2a$10$wbzAYs/XKeFCsQv6TOKXAey2mcWi3EGjyRAo3gumheKkKEqyc4JkG','Doris','Reategui','EL cascajal 626 Casuarinas','5606179','LIma','Perú',NULL,NULL,NULL,1,'2014-02-21 16:25:55','2014-02-21 16:25:55','190.235.45.150','190.235.45.150','2014-02-21 16:25:55','2014-02-21 16:25:55'),(9,'agilcanperu@hotmail.com','$2a$10$/r6CZkqBSAbunrOKwNuZU./JL8XctHvXhpGLFT.TMENIPwgdImlim','AUGUSTO','BARRIOS','Ca. Pietro Marchand N° 399 Dpto.102 - San Borja','986995757','Lima','Perú',NULL,NULL,NULL,1,'2014-02-21 17:04:36','2014-02-21 17:04:36','190.222.232.121','190.222.232.121','2014-02-21 17:04:36','2014-02-21 17:04:36'),(10,'paul@kosmyka.xom','$2a$10$4irzVhkewdsSZ2u5l8.1ee1pqWphvjGnZ.fDHFaU.m8kPurALGi1e','Paul','Sutcliffe','Montero Rosas 1252 Dpt.201','951754033','Lima','Perú',NULL,NULL,NULL,1,'2014-02-21 17:28:23','2014-02-21 17:28:23','190.234.137.13','190.234.137.13','2014-02-21 17:28:23','2014-02-21 17:28:23'),(11,'o0.sasaki@gmail.com','$2a$10$LYyMYWqRH1QBAnxfWqahd.QB6H3/DE8lqbmm5sAw2.ooxvy24Im3a','Oscar','Sasaki','','12345678','lima','Perú',NULL,NULL,NULL,1,'2014-02-21 18:29:17','2014-02-21 18:29:17','190.234.137.13','190.234.137.13','2014-02-21 18:29:17','2014-02-21 18:29:17');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visas`
--

DROP TABLE IF EXISTS `visas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visas`
--

LOCK TABLES `visas` WRITE;
/*!40000 ALTER TABLE `visas` DISABLE KEYS */;
INSERT INTO `visas` VALUES (1,'Africa','africa.jpg','2014-02-12 19:21:28','2014-02-12 19:21:28'),(2,'America central y el caribe','america.jpg','2014-02-12 19:21:57','2014-02-12 19:23:24'),(3,'Europa','europa.jpg','2014-02-12 19:22:30','2014-02-12 19:22:30'),(4,'Oceania','oceania.jpg','2014-02-12 19:22:51','2014-02-12 19:22:51'),(5,'America del sur','america-sur.jpg','2014-02-12 19:23:44','2014-02-12 19:23:44'),(6,'Asia','asia.jpg','2014-02-12 19:23:57','2014-02-12 19:24:34');
/*!40000 ALTER TABLE `visas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-21 20:31:35
