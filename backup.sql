-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: controlpedidos
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add supervisor',7,'add_supervisor'),(26,'Can change supervisor',7,'change_supervisor'),(27,'Can delete supervisor',7,'delete_supervisor'),(28,'Can view supervisor',7,'view_supervisor'),(29,'Can add cliente',8,'add_cliente'),(30,'Can change cliente',8,'change_cliente'),(31,'Can delete cliente',8,'delete_cliente'),(32,'Can view cliente',8,'view_cliente'),(33,'Can add producto',9,'add_producto'),(34,'Can change producto',9,'change_producto'),(35,'Can delete producto',9,'delete_producto'),(36,'Can view producto',9,'view_producto'),(37,'Can add vendedor',10,'add_vendedor'),(38,'Can change vendedor',10,'change_vendedor'),(39,'Can delete vendedor',10,'delete_vendedor'),(40,'Can view vendedor',10,'view_vendedor'),(41,'Can add pedidos',11,'add_pedidos'),(42,'Can change pedidos',11,'change_pedidos'),(43,'Can delete pedidos',11,'delete_pedidos'),(44,'Can view pedidos',11,'view_pedidos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'ventas','cliente'),(11,'ventas','pedidos'),(9,'ventas','producto'),(7,'ventas','supervisor'),(10,'ventas','vendedor');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-15 15:32:33.844669'),(2,'auth','0001_initial','2023-12-15 15:32:34.148872'),(3,'admin','0001_initial','2023-12-15 15:32:34.225602'),(4,'admin','0002_logentry_remove_auto_add','2023-12-15 15:32:34.232601'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-15 15:32:34.242601'),(6,'contenttypes','0002_remove_content_type_name','2023-12-15 15:32:34.295157'),(7,'auth','0002_alter_permission_name_max_length','2023-12-15 15:32:34.333765'),(8,'auth','0003_alter_user_email_max_length','2023-12-15 15:32:34.345776'),(9,'auth','0004_alter_user_username_opts','2023-12-15 15:32:34.353770'),(10,'auth','0005_alter_user_last_login_null','2023-12-15 15:32:34.384877'),(11,'auth','0006_require_contenttypes_0002','2023-12-15 15:32:34.386873'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-15 15:32:34.394871'),(13,'auth','0008_alter_user_username_max_length','2023-12-15 15:32:34.405871'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-15 15:32:34.414875'),(15,'auth','0010_alter_group_name_max_length','2023-12-15 15:32:34.426871'),(16,'auth','0011_update_proxy_permissions','2023-12-15 15:32:34.433873'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-15 15:32:34.445871'),(18,'sessions','0001_initial','2023-12-15 15:32:34.468668'),(19,'ventas','0001_initial','2023-12-15 15:32:34.476379'),(20,'ventas','0002_cliente','2023-12-15 15:32:34.486377'),(21,'ventas','0003_producto','2023-12-15 15:32:34.494378'),(22,'ventas','0004_vendedor','2023-12-15 15:32:34.528967'),(23,'ventas','0005_pedido','2023-12-15 15:32:34.668959'),(24,'ventas','0006_alter_pedido_cantidad_alter_pedido_total','2023-12-15 15:32:35.313831'),(25,'ventas','0007_rename_pedido_pedidos','2023-12-15 15:32:35.332143');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_cliente`
--

DROP TABLE IF EXISTS `ventas_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_cliente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `DPI` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_cliente`
--

LOCK TABLES `ventas_cliente` WRITE;
/*!40000 ALTER TABLE `ventas_cliente` DISABLE KEYS */;
INSERT INTO `ventas_cliente` VALUES (1,'Javier','Avalos',789,45698,'gautemala'),(2,'Sergio','Maldonado',78965,4632,'guatemala'),(3,'Jhonatan','Muñoz',7894,458963,'guatemala');
/*!40000 ALTER TABLE `ventas_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_pedidos`
--

DROP TABLE IF EXISTS `ventas_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_pedidos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Fecha` datetime(6) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Cliente_id` bigint(20) NOT NULL,
  `Producto_id` bigint(20) NOT NULL,
  `Total` int(11) NOT NULL,
  `Vendedor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ventas_pedido_Cliente_id_d934bc00_fk_ventas_cliente_id` (`Cliente_id`),
  KEY `ventas_pedido_Producto_id_993e7086_fk_ventas_producto_id` (`Producto_id`),
  KEY `ventas_pedido_Vendedor_id_5d63db04_fk_ventas_vendedor_id` (`Vendedor_id`),
  CONSTRAINT `ventas_pedido_Cliente_id_d934bc00_fk_ventas_cliente_id` FOREIGN KEY (`Cliente_id`) REFERENCES `ventas_cliente` (`id`),
  CONSTRAINT `ventas_pedido_Producto_id_993e7086_fk_ventas_producto_id` FOREIGN KEY (`Producto_id`) REFERENCES `ventas_producto` (`id`),
  CONSTRAINT `ventas_pedido_Vendedor_id_5d63db04_fk_ventas_vendedor_id` FOREIGN KEY (`Vendedor_id`) REFERENCES `ventas_vendedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_pedidos`
--

LOCK TABLES `ventas_pedidos` WRITE;
/*!40000 ALTER TABLE `ventas_pedidos` DISABLE KEYS */;
INSERT INTO `ventas_pedidos` VALUES (1,'2023-12-15 18:13:35.128086',5,1,1,5,1),(2,'2023-12-15 18:19:26.006003',3,1,1,450,1),(3,'2023-12-15 18:20:10.742238',3,1,1,450,1),(4,'2023-12-15 18:50:19.913916',2,1,3,2000,1),(5,'2023-12-15 19:00:27.127079',5,2,4,250,8),(6,'2023-12-15 19:01:30.803916',2,1,3,2000,1);
/*!40000 ALTER TABLE `ventas_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_producto`
--

DROP TABLE IF EXISTS `ventas_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `NombreProducto` varchar(100) NOT NULL,
  `DescProducto` varchar(100) NOT NULL,
  `PrecioProducto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_producto`
--

LOCK TABLES `ventas_producto` WRITE;
/*!40000 ALTER TABLE `ventas_producto` DISABLE KEYS */;
INSERT INTO `ventas_producto` VALUES (1,'Mochila','Para laptop',150),(2,'Tablet','Windows 11',1500),(3,'Celular','Nuvo',1000),(4,'Taza','Nueva',50);
/*!40000 ALTER TABLE `ventas_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_supervisor`
--

DROP TABLE IF EXISTS `ventas_supervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_supervisor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `DPI` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_supervisor`
--

LOCK TABLES `ventas_supervisor` WRITE;
/*!40000 ALTER TABLE `ventas_supervisor` DISABLE KEYS */;
INSERT INTO `ventas_supervisor` VALUES (1,'Manuel','Estrada',12345,0,''),(2,'fsd','ds',1245,1245,''),(3,'fsd','ds',1245,1245,''),(4,'jhonatan','galiano',1245,1245,''),(5,'jhonatan','galiano',1245,1245,''),(6,'carlos','montes',1245,1245,''),(7,'carlos','montes',1245,1245,''),(8,'norman','els',1245,1245,''),(9,'nielso','cr7',1245,1245,''),(10,'lionel','messi',1245,1245,''),(11,'fdsa','fdas',1245,1245,''),(12,'fdsa','fdas',1245,1245,''),(13,'fdsa','fdas',1245,1245,''),(14,'Jhonatan','Muñoz',1245,1245,''),(15,'Jhonatan','Galiano',372811,553599,'gautemala'),(16,'Cristiano','Ronaldo',123466,456987,'Guatemala');
/*!40000 ALTER TABLE `ventas_supervisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_vendedor`
--

DROP TABLE IF EXISTS `ventas_vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_vendedor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `DPI` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `supervisor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ventas_vendedor_supervisor_id_6b7d598f_fk_ventas_supervisor_id` (`supervisor_id`),
  CONSTRAINT `ventas_vendedor_supervisor_id_6b7d598f_fk_ventas_supervisor_id` FOREIGN KEY (`supervisor_id`) REFERENCES `ventas_supervisor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_vendedor`
--

LOCK TABLES `ventas_vendedor` WRITE;
/*!40000 ALTER TABLE `ventas_vendedor` DISABLE KEYS */;
INSERT INTO `ventas_vendedor` VALUES (1,'Carlos','Morales',789,45632,'santa rosa',1),(3,'Lionel','Messi',456,2321,'argentina',2),(7,'Jhonatan','Muñoz',7894,458963,'Guatemala',2),(8,'Danny','Marro',12345,12345,'Guatemala',10);
/*!40000 ALTER TABLE `ventas_vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15 15:52:52
