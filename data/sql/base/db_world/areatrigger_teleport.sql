/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `areatrigger_teleport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = UTF8MB4 */;
CREATE TABLE `areatrigger_teleport` 
(
  `ID` MEDIUMINT unsigned NOT NULL DEFAULT 0,
  `Name` text DEFAULT NULL,
  `target_map` SMALLINT unsigned NOT NULL DEFAULT 0,
  `target_position_x` float NOT NULL DEFAULT 0,
  `target_position_y` float NOT NULL DEFAULT 0,
  `target_position_z` float NOT NULL DEFAULT 0,
  `target_orientation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `name` (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=UTF8MB4 ROW_FORMAT=FIXED COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `areatrigger_teleport` WRITE;
/*!40000 ALTER TABLE `areatrigger_teleport` DISABLE KEYS */;
INSERT INTO `areatrigger_teleport` VALUES 
(45,'Scarlet Monastery - Graveyard (Entrance)',189,1688.99,1053.48,18.6775,0.00117),
(78,'DeadMines Entrance',36,-16.4,-383.07,61.78,1.86),
(101,'Stormwind Stockades Entrance',34,54.23,0.28,-18.34,6.26),
(107,'Stormwind Vault Entrance',35,-0.91,40.57,-24.23,0),
(109,'Stormwind Vault Instance',0,-8653.45,606.19,91.16,0),
(119,'DeadMines Instance Start',0,-11208.3,1672.52,24.66,4.55217),
(121,'Deadmines Instance End',0,-11339.4,1571.16,100.56,0),
(145,'Shadowfang Keep Entrance',33,-229.135,2109.18,76.8898,1.267),
(194,'Shadowfang keep - Entrance',0,-232.796,1568.28,76.8909,4.398),
(226,'The Barrens - Wailing Caverns',1,-740.059,-2214.23,16.1374,5.68),
(228,'The Barrens - Wailing Caverns',43,-163.49,132.9,-73.66,5.83),
(242,'Razorfen Kraul Instance Start',1,-4464.92,-1666.24,81.8928,4.28827),
(244,'Razorfen Kraul Entrance',47,1943,1544.63,82,1.38),
(257,'Blackphantom Deeps Entrance',48,-151.89,106.96,-39.87,4.53),
(259,'Blackphantom Deeps Instance Start',1,4247.74,745.879,-24.5299,4.5828),
(286,'Uldaman Entrance',70,-226.8,49.09,-46.03,1.39),
(288,'Uldaman Instance Start',0,-6066.73,-2955.63,209.776,3.20443),
(322,'Gnomeregan Instance Start',0,-5163.33,927.623,257.188,0),
(324,'Gnomeregan Entrance',90,-332.22,-2.28,-150.86,2.77),
(442,'Razorfen Downs Entrance',129,2592.55,1107.5,51.29,4.74),
(444,'Razorfen Downs Instance Start',1,-4658.12,-2526.35,81.492,1.25978),
(446,'Altar of Atal\'Hakkar Entrance',109,-319.24,99.9,-131.85,3.19),
(448,'Altar Of Atal\'Hakkar Instance Start',0,-10175.1,-3995.15,-112.9,2.95938),
(503,'Stockades Instance',0,-8764.83,846.075,87.4842,3.77934),
(523,'Gnomeregan Train Depot Entrance',90,-736.51,2.71,-249.99,3.14),
(525,'Gnomeregan Train Depot Instance',0,-4858.27,756.435,244.923,0),
(527,'Teddrassil - Ruth Theran',1,8786.36,967.445,30.197,3.39632),
(542,'Teddrassil - Darnassus',1,9945.13,2616.89,1316.46,4.61446),
(602,'Scarlet Monastery - Graveyard (Exit)',0,2913.92,-802.404,160.333,3.50405),
(604,'Scarlet Monastery - Cathedral (Exit)',0,2906.14,-813.772,160.333,1.95739),
(606,'Scarlet Monastery - Armory (Exit)',0,2884.45,-822.01,160.333,1.95268),
(608,'Scarlet Monastery - Library (Exit)',0,2870.9,-820.164,160.333,0.387856),
(610,'Scarlet Monastery - Cathedral (Entrance)',189,855.683,1321.5,18.6709,0.001747),
(612,'Scarlet Monastery - Armory (Entrance)',189,1610.83,-323.433,18.6738,6.28022),
(614,'Scarlet Monastery - Library (Entrance)',189,255.346,-209.09,18.6773,6.26656),
(702,'Stormwind - Wizard Sanctum Room',0,-9015.76,874.94,148.62,5.211),
(704,'Stormwind - Wizard Sanctum Tower Portal',0,-9018.56,887.664,29.63,5.346),
(882,'Uldaman Instance End',0,-6620.48,-3765.19,266.226,3.13531),
(902,'Uldaman Exit',70,-214.02,383.607,-38.7687,0.5),
(922,'Zul\'Farrak Instance Start',1,-6796.49,-2890.77,8.88063,3.30496),
(924,'Zul\'Farrak Entrance',209,1213.52,841.59,8.93,6.09),
(943,'Leap of Faith - End of fall',1,-5187.47,-2804.32,-8.375,5.76),
(1064,'Onyxia\'s Lair - Dustwallow Instance',1,-4747.17,-3753.27,49.8122,0.713271),
(1466,'Blackrock Mountain - Searing Gorge Instance?',230,458.32,26.52,-70.67,4.95),
(1468,'Blackrock Spire - Searing Gorge Instance (Inside)',229,78.5083,-225.044,49.839,5.1),
(1470,'Blackrock Spire - Searing Gorge Instance',0,-7524.19,-1230.13,285.743,2.09544),
(1472,'Blackrock Dephts - Searing Gorge Instance',0,-7179.63,-923.667,166.416,1.84097),
(2166,'Deeprun Tram - Ironforge Instance (Inside)',0,-4838.95,-1318.46,501.868,1.42372),
(2171,'Deeprun Tram - Stormwind Instance (Inside)',0,-8364.57,535.981,91.7969,2.24619),
(2173,'Deeprun Tram - Stormwind Instance',369,68.3006,2490.91,-4.29647,3.12192),
(2175,'Deeprun Tram - Ironforge Instance',369,69.2542,10.257,-4.29664,3.09832),
(2214,'Stratholme - Eastern Plaguelands Instance',329,3593.15,-3646.56,138.5,5.33),
(2216,'Stratholme - Eastern Plaguelands Instance',329,3395.09,-3380.25,142.702,0.1),
(2217,'Stratholme - Eastern Plaguelands Instance',329,3395.09,-3380.25,142.702,0.1),
(2221,'Stratholme - Eastern Plaguelands Instance (Inside)',0,3235.46,-4050.6,108.45,1.93522),
(2226,'Ragefire Chasm - Ogrimmar Instance (Inside)',1,1813.49,-4418.58,-18.57,1.78),
(2230,'Ragefire Chasm - Ogrimmar Instance',389,3.81,-14.82,-17.84,4.39),
(2406,'Shadowfang - South Fall Target',0,-276.241,1652.68,77.5589,3.14159),
(2407,'Shadowfang - South Fall Target',0,-276.241,1652.68,77.5589,3.14159),
(2408,'Shadowfang Front Fall Exit Target',0,-225.34,1556.53,93.0454,4.71239),
(2409,'Shadowfang Front Fall Exit Target',0,-225.34,1556.53,93.0454,4.71239),
(2410,'Shadowfang - North Fall Target',0,-181.26,1580.65,97.4466,6.28319),
(2411,'Shadowfang - North Fall Target',0,-181.26,1580.65,97.4466,6.28319),
(2530,'Hall of Legends - Ogrimmar (Inside)',1,1637.32,-4242.7,56.1827,4.1927),
(2534,'Stormwind (Inside) - Champions Hall',0,-8762.45,403.062,103.902,5.34463),
(2547,'Scholomance - Exit Porch Target 001',0,1399.42,-2574.59,107.786,6.28319),
(2548,'Scholomance - Exit Porch Target 001',0,1399.42,-2574.59,107.786,6.28319),
(2549,'Scholomance - Exit Porch Target 001',0,1399.42,-2574.59,107.786,6.28319),
(2567,'Scholomance Entrance',289,196.37,127.05,134.91,6.09),
(2568,'Scholomance Instance',0,1275.05,-2552.03,90.3994,3.6631),
(2606,'Alterac Valley - Horde Exit',0,534.868,-1087.68,106.119,3.35758),
(2608,'Alterac Valley - Alliance Exit',0,98.432,-182.274,127.52,5.02654),
(2848,'Onyxia\'s Lair Entrance',249,29.1607,-71.3372,-8.18032,4.58),
(2886,'The Molten Bridge',409,1096,-467,-104.6,3.64),
(2890,'Molten Core Entrance, Inside',230,1115.35,-457.35,-102.7,0.5),
(3126,'Maraudon',1,-1186.98,2875.95,85.7258,1.78443),
(3131,'Maraudon',1,-1471.07,2618.57,76.1944,0),
(3133,'Maraudon',349,1019.69,-458.31,-43.43,0.31),
(3134,'Maraudon',349,752.91,-616.53,-33.11,1.37),
(3183,'Dire Maul',429,44.4499,-154.822,-2.71201,0),
(3184,'Dire Maul',429,-201.11,-328.66,-2.72,5.22),
(3185,'Dire Maul',429,9.31119,-837.085,-32.5305,0),
(3186,'Dire Maul',429,-62.9658,159.867,-3.46206,3.14788),
(3187,'Dire Maul',429,31.5609,159.45,-3.4777,0.01),
(3189,'Dire Maul',429,255.249,-16.0561,-2.58737,4.7),
(3190,'Dire Maul',1,-3831.79,1250.23,160.223,0),
(3191,'Dire Maul',1,-3747.96,1249.18,160.217,3.15827),
(3193,'Dire Maul',1,-3520.65,1077.72,161.138,1.5009),
(3194,'Dire Maul',1,-3737.48,934.975,160.973,3.13864),
(3195,'Dire Maul',1,-3980.58,776.193,161.006,0),
(3196,'Dire Maul',1,-4030.21,127.966,26.8109,0),
(3197,'Dire Maul',1,-3577.67,841.859,134.594,0),
(3528,'The Molten Core Window Entrance',409,1096,-467,-104.6,3.64),
(3529,'The Molten Core Window(Lava) Entrance',409,1096,-467,-104.6,3.64),
(3726,'Blackwing Lair - Blackrock Mountain - Eastern Kingdoms',469,-7673.03,-1106.08,396.651,0.703353),
(3728,'Blackrock Spire, Unknown',229,174.74,-474.77,116.84,3.2),
(3928,'Zul\'Gurub Entrance ',309,-11916.1,-1230.53,92.5334,4.71867),
(3930,'Zul\'Gurub Exit ',0,-11916.3,-1208.37,92.2868,1.61792),
(3948,'Arathi Basin Alliance Out',0,-1198,-2533,22,0),
(3949,'Arathi Basin Horde Out',0,-817,-3509,73,0),
(4006,'Ruins Of Ahn\'Qiraj (Inside)',1,-8418.5,1505.94,31.8232,0),
(4008,'Ruins Of Ahn\'Qiraj (Outside)',509,-8429.74,1512.14,31.9074,2.58),
(4010,'Ahn\'Qiraj Temple (Outside)',531,-8231.33,2010.6,129.331,0.929912),
(4012,'Ahn\'Qiraj Temple (Inside)',1,-8242.67,1992.06,129.072,4.03066),
(4131,'Karazhan, Main (Entrance)',532,-11100,-2003.98,49.8927,0.577268),
(4135,'Karazhan, Service (Entrance)',532,-11040.1,-1996.85,94.6837,2.20224),
(4145,'The Shattered Halls (Exit)',530,-311.16,3082.1,-3.71,4.92),
(4147,'The Blood Furnace (Exit)',530,-303.506,3164.82,31.7425,5.24025),
(4149,'Magtheridon\'s Lair (Exit)',530,-313.679,3088.35,-116.502,2.05307),
(4150,'Hellfire Ramparts (Entrance)',543,-1355.24,1641.12,68.2491,0.6687),
(4151,'The Shattered Halls (Entrance)',540,-40.8716,-19.7538,-13.8065,1.11133),
(4152,'The Blood Furnace (Entrance)',542,-3.9967,14.6363,-44.8009,4.88748),
(4153,'Magtheridon\'s Lair (Entrance)',544,187.843,35.9232,67.9252,4.79879),
(4156,'Naxxramas (to frostwyrm lair)',533,3500.87,-5339.03,145,1.34),
(4233,'Eversong Woods - Duskwither UP Target',530,9331.49,-7812.27,136.569,5.23599),
(4267,'Eversong Woods - Duskwither DOWN Target',530,9334.03,-7880.02,74.9095,2.35619),
(4297,'Hellfire Ramparts (Exit)',530,-360.671,3071.9,-15.0977,5.14274),
(4304,'Hellfire Ramparts - Omor Exit Target',530,-233.33,3199.71,-50,0.785398),
(4311,'Battle Of Mount Hyjal, Alliance Base (Entrance)',534,4954,-1886.2,1326,0.13),
(4312,'Battle Of Mount Hyjal, Horde Base (Entrance)',534,5497.33,-2971.14,1537.63,2.832),
(4313,'Battle Of Mount Hyjal, Night Elf Base (Entrance)',534,5152.33,-3364.4,1644.74,6.2),
(4319,'Caverns Of Time, Battle Of Mount Hyjal (Entrance) ',534,4259.61,-4233.77,868.199,2.53),
(4320,'Caverns Of Time, Black Morass (Entrance)',269,-1496.24,7034.7,32.5619,1.75699),
(4321,'Caverns Of Time, Old Hillsbrad Foothills (Entrance)',560,2741.87,1315.25,14.0423,2.96016),
(4322,'Caverns Of Time, Black Morass (Exit)',1,-8765.66,-4175,-209.863,5.53463),
(4323,'Caverns Of Time, Battle Of Mount Hyjal (Exit)',1,-8177.5,-4183,-168,4.5),
(4324,'Caverns Of Time, Old Hillsbrad Foothills (Exit)',1,-8334.98,-4055.32,-207.737,3.27431),
(4352,'Outland To Dark Portal',0,-11877.7,-3204.49,-18.49,0.23),
(4354,'Dark Portal To Outland',530,-248.149,921.875,84.3885,1.58415),
(4363,'The Underbog (Entrance)',546,9.71391,-16.2008,-2.75334,5.57082),
(4364,'The Steamvault (Entrance)',545,-13.8425,6.7542,-4.2586,0),
(4365,'The Slave Pens (Entrance)',547,120.101,-131.957,-0.801547,1.47574),
(4366,'The Steamvault (Exit)',530,816.59,6934.67,-80.5446,4.53174),
(4367,'The Underbog (Exit)',530,777.089,6763.45,-72.0662,2.72453),
(4379,'The Slave Pens (Exit)',530,719.508,6999.34,-73.0743,4.52702),
(4386,'Sunstrider Isle to Eastern Plaguelands',0,3476.36,-4493.36,137.49,2.25566),
(4397,'Shadow Labyrinth (Exit)',530,-3645.06,4943.62,-101.048,6.27058),
(4399,'Sethekk Halls (Exit)',530,-3361.96,4660.41,-101.048,1.65638),
(4401,'Mana Tombs (Exit)',530,-3079.81,4943.04,-101.047,3.16432),
(4403,'Auchenai Crypts (Exit)',530,-3362.22,5225.77,-101.049,4.67224),
(4404,'Auchenai Crypts (Entrance)',558,-21.8975,0.16,-0.1206,0.0353412),
(4405,'Mana Tombs (Entrance)',557,0.0191,0.9478,-0.9543,3.03164),
(4406,'Sethekk Halls (Entrance)',556,-4.6811,-0.0930796,0.0062,0.0353424),
(4407,'Shadow Labyrinth (Entrance)',555,0.488033,-0.215935,-1.12788,3.15888),
(4409,'Eastern Plaguelands To Sunstrider Isle',530,6123,-7005,138,5),
(4416,'Serpentshrine Cavern (Entrance)',548,2.5343,-0.022318,821.727,0.004512),
(4418,'Serpentshrine Cavern (Exit)',530,827.011,6865.47,-63.7844,3.06507),
(4436,'Karazhan, Main (Exit)',0,-11112.9,-2005.89,49.3307,4.02516),
(4455,'The Mechanar (Exit)',530,3312.09,1331.89,505.559,2.00554),
(4457,'The Eye (Exit)',530,3087.31,1373.79,184.643,1.52918),
(4459,'The Botanica (Exit)',530,3413.65,1483.32,182.838,2.54432),
(4461,'The Arcatraz (Exit)',530,2862.41,1546.09,252.161,0.805457),
(4467,'The Botanica (Entrance)',553,40.0395,-28.613,-1.1189,2.35856),
(4468,'The Arcatraz (Entrance)',552,-1.23165,0.0143459,-0.204293,0.0157123),
(4469,'The Mechanar (Entrance)',554,-28.906,0.680314,-1.81282,0.0345509),
(4470,'The Eye (Entrance)',550,-10.8021,-1.15045,-2.42833,6.22821),
(4487,'Battle Of Mount Hyjal (Exit)',1,-8177.5,-4183,-168,4.5),
(4520,'Karazhan, Service (Exit)',0,-11034.8,-2003.8,92.98,0),
(4523,'Socrethar\'s Seat To Mainland',530,4773.76,3451.27,105.15,3.84),
(4534,'Gruul\'s Lair (Exit)',530,3549.8,5085.97,2.46332,2.25742),
(4535,'Gruul\'s Lair (Entrance)',565,62.7842,35.462,-3.9835,1.41844),
(4561,'Invasion Point, Cataclysm (Return Point)',530,-3278.63,2831.31,123.01,1.56),
(4562,'Invasion Point, Cataclysm (Return Point)',530,-3278.63,2831.31,123.01,1.56),
(4598,'Black Temple (Entrance)',564,96.4462,1002.35,-86.9984,6.15675),
(4612,'The Botanica',530,3407.11,1488.48,182.838,2.50112),
(4614,'The Mechanar',530,2869.89,1552.76,252.159,0.733993),
(4619,'Black Temple (Exit)',530,-3653.51,317.493,36.1671,6.24941),
(4738,'Zul\'Aman (Entrance)',568,120.7,1776,43.46,4.7713),
(4739,'Zul\'Aman (Exit)',530,6851.5,-7997.68,192.36,1.56688),
(4741,'Utgarde Pinnacle (exit)',571,1228.09,-4862.45,41.248,3.443),
(4743,'Utgarde Keep (exit)',571,1237.2,-4859.27,218.283,0.274),
(4745,'Utgarde Keep (entrance)',574,153.789,-86.548,12.551,0.304),
(4747,'Utgarde Pinnacle (entrance)',575,584.117,-327.974,110.138,3.122),
(4885,'Magisters\' Terrace (Exit)',530,12884.6,-7336.17,65.48,1.09),
(4887,'Magisters\' Terrace (Entrance)',585,7.09,-0.45,-2.8,0.05),
(4889,'Sunwell Plateau (Entrance)',580,1790.65,925.67,15.15,3.1),
(4891,'Sunwell Plateau (Exit)',530,12560.8,-6774.59,15.08,6.25),
(4917,'Arena - Nagrand - Teleport Target - Game On',559,4054.57,2923.23,13.8179,0),
(4919,'Arena - Bladesedge - Teleport Target - Game On',562,6238.89,264.155,0.894302,0),
(4921,'Arena - Bladesedge - Teleport Target - Game On',562,6238.89,264.155,0.894302,0),
(4922,'Arena - Bladesedge - Teleport Target - Game On',562,6238.89,264.155,0.894302,0),
(4923,'Arena - Bladesedge - Teleport Target - Game On',562,6238.89,264.155,0.894302,0),
(4924,'Arena - Bladesedge - Teleport Target - Game On',562,6238.89,264.155,0.894302,0),
(4925,'Arena - Bladesedge - Teleport Target - Game On',562,6238.89,264.155,0.894302,0),
(4927,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4928,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4929,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4930,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4931,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4932,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4933,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4934,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4935,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4936,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4941,'Arena - Undercity - Teleport Target - Game On',572,1286.57,1667.4,39.602,0),
(4944,'Arena - Bladesedge - Teleport Target - Game On',562,6238.89,264.155,0.894302,0),
(4981,'The Nexus (exit)',571,3897.42,6985.33,69.487,3.17),
(4983,'The Nexus (entrance)',576,145.87,-10.554,-16.636,1.528),
(4998,'Drak\'Tharon Keep (entrance)',600,-517.343,-487.976,11.01,4.831),
(5000,'Drak\'Tharon Keep (exit)',571,4774.47,-2028.04,229.373,4.645),
(5001,'The Oculus (exit)',571,3876.16,6984.44,106.32,6.279),
(5010,'Ulduar, Halls of Stone (entrance)',599,1153.24,806.164,195.937,4.715),
(5012,'Ulduar, Halls of Stone (exit)',571,8921.93,-970.399,1039.2,4.726),
(5051,'Zul\'drak - Voltarus, base floor -> middle',571,6159.16,-2028.6,408.168,3.74088),
(5061,'Zul\'drak - Voltarus, middle floor -> base',571,6175.6,-2008.78,245.255,1.49857),
(5080,'Zul\'drak - Voltarus, upper floor -> middle',571,6159.16,-2028.6,408.168,3.74088),
(5091,'Ulduar, Halls of Lightning (exit)',571,9182.91,-1384.73,1110.21,2.431),
(5093,'Ulduar, Halls of Lightning (entrance)',602,1331.47,259.619,53.398,4.772),
(5113,'Azjol-Nerub (exit back)',571,3820.08,2035.62,11.0722,3.22311),
(5115,'Azjol-Nerub (exit)',571,3678.05,2166.4,35.795,5.58),
(5117,'Azjol-Nerub (entrance)',601,413.314,795.968,831.351,5.5),
(5127,'Ebon Hold (E.K.) Top Return Target',0,2462.76,-5598.19,550.22,3.66519),
(5128,'Ebon Hold (E.K.) Top West Target',0,2472.67,-5530.1,420.642,4.50295),
(5129,'Ebon Hold (E.K.) Top Return Target',0,2462.76,-5598.19,550.22,3.66519),
(5130,'Ebon Hold (E.K.) Top South Target',0,2397.37,-5581.06,420.643,6.07375),
(5131,'Ebon Hold (E.K.) Top Return Target',0,2462.76,-5598.19,550.22,3.66519),
(5132,'Ebon Hold (E.K.) Top North Target',0,2522.45,-5605.7,420.642,2.94961),
(5133,'Ebon Hold (E.K.) Top Return Target',0,2462.76,-5598.19,550.22,3.66519),
(5134,'Ebon Hold (E.K.) Top East Target',0,2448.02,-5655.82,420.643,1.3439),
(5135,'Ebon Hold (E.K.) Middle -> Bottom Target',0,2435.77,-5610.34,366.82,0.610865),
(5136,'Ebon Hold (E.K.) Middle -> Bottom Target',0,2435.77,-5610.34,366.82,0.610865),
(5137,'Ebon Hold (E.K.) Bottom -> Middle Target',0,2472.9,-5530.64,420.643,4.45059),
(5138,'Ebon Hold (E.K.) Bottom -> Ground Target',0,2415.16,-5733.04,153.922,3.64774),
(5148,'CoT Stratholme - Exit Target',1,-8756.6,-4457.02,-200.481,1.39626),
(5150,'Culling of Stratholme (entrance)',595,1431.1,556.92,36.69,5.16),
(5181,'Culling of Stratholme (exit 2)',1,-8756.87,-4459.29,-200.73,1.32),
(5191,'Naxxramas (entrance1)',533,3005.68,-3447.77,293.93,4.65),
(5192,'Naxxramas (entrance2)',533,3019.34,-3434.36,293.99,6.27),
(5193,'Naxxramas (entrance3)',533,3005.9,-3420.58,294.11,1.58),
(5194,'Naxxramas (entrance4)',533,2992.5,-3434.42,293.94,3.13),
(5196,'Naxxramas (exit1)',571,3679.25,-1278.58,243.55,2.39),
(5197,'Naxxramas (exit2)',571,3679.03,-1259.68,243.55,3.98),
(5198,'Naxxramas (exit3)',571,3661.14,-1279.55,243.55,0.82),
(5199,'Naxxramas (exit4)',571,3660.01,-1260.99,243.55,5.51),
(5205,'Gundrak (entrance south)',604,1891.84,832.169,176.669,2.109),
(5206,'Gundrak (entrance north)',604,1894.58,652.713,176.666,4.078),
(5209,'Violet Hold (entrance)',608,1808.82,803.93,44.364,6.282),
(5211,'Violet Hold (exit)',571,5680.7,487.323,652.418,0.882),
(5213,'Ahn\'Kahet (exit)',571,3641.84,2032.94,2.47,1.178),
(5215,'Ahn\'Kahet (entrance)',619,333.351,-1109.94,69.772,0.553),
(5231,'Gundrak (exit south)',571,6702.47,-4660.55,441.568,0.75),
(5233,'Gundrak (exit - 4)',571,6970.02,-4402.09,441.578,3.845),
(5235,'Ahn\'Kahet (exit)',571,3817.4,2032.82,11.0133,3.61283),
(5241,'Chamber of Aspects, Obsidian Sanctum (exit)',571,3448,261.545,-110.163,0.097),
(5243,'Chamber of Aspects, Obsidian Sanctum (entrance)',615,3228.58,385.86,65.549,1.578),
(5246,'The Oculus (entrance)',578,1055.93,986.85,361.07,5.745),
(5258,'Vault of Archavon (Entrance)',624,-505.96,-103.353,157,0),
(5262,'Vault of Archavon (Exit)',571,5480.88,2840.47,418.68,3.14),
(5273,'Dalaran Well teleporter',571,5878.56,666.423,615.294,4),
(5276,'Gundrak (exit - 3)',571,6702.47,-4660.55,441.568,0.75),
(5277,'Gundrak (exit north)',571,6970.02,-4402.09,441.578,3.845),
(5290,'The Eye of Eternity (entrance)',616,728.055,1329.03,275,5.51524),
(5326,'Arena - Dalaran Arena - Teleport Target',617,1291.57,792.965,8.11463,0),
(5328,'Arena - Dalaran Arena - Teleport Target',617,1291.57,792.965,8.11463,0),
(5329,'Arena - Dalaran Arena - Teleport Target',617,1291.57,792.965,8.11463,0),
(5330,'Arena - Dalaran Arena - Teleport Target',617,1291.57,792.965,8.11463,0),
(5331,'Arena - Dalaran Arena - Teleport Target',617,1291.57,792.965,8.11463,0),
(5379,'Ulduar Raid entrance',603,-914.041,-148.98,463.137,6.28),
(5381,'Ulduar Raid exit',571,9345.56,-1114.88,1245.09,3.11),
(5447,'Arena - Orgrimmar - Teleport Target 3',618,763.365,-284.29,28.2767,0),
(5503,'Trial of the Crusader (Entrance)',649,563.61,80.6815,395.2,1.59),
(5505,'Trial of the Champion (Entrance)',650,805.227,618.038,412.393,3.1456),
(5508,'Trial of the Crusader (Exit)',571,8515.46,728.92,558.3,4.742),
(5510,'Trial of the Champion (Exit)',571,8577.4,791.732,558.235,0),
(5635,'Forge of Souls (Entrance)',632,4922.86,2175.63,638.734,2.00355),
(5636,'Halls of Reflection (Entrance)',668,5239.01,1932.64,707.695,0.800565),
(5637,'Pit of Saron (Entrance)',658,435.743,212.413,528.709,6.25646),
(5642,'Forge of Souls (Exit)',571,5667.72,2007.19,798.042,2.31535),
(5643,'Pit of Saron (Exit)',571,5595.92,2013.02,798.041,0.648728),
(5646,'Halls of Reflection (Exit)',571,5630.59,1997.55,798.049,1.44042),
(5668,'IceCrown Citadel (Exit)',571,5790,2071.48,636.065,0.459897),
(5670,'IceCrown Citadel (Entrance)',631,76.8638,2211.37,30,3.14965),
(5683,'Pit of Saron (Exit)',571,5595.92,2013.02,798.041,0.648728),
(5688,'Forge of Souls (Exit)',571,5667.72,2007.19,798.042,2.31535),
(5869,'The Ruby Sanctum (Entrance)',724,3274,533.531,87.665,3.16),
(5872,'The Ruby Sanctum (Exit)',571,3604.23,192.083,-110.821,2.195);
/*!40000 ALTER TABLE `areatrigger_teleport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

