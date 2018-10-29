USE BICHOS
GO
--INGRESO DE CARGAS INICIALES BICHOS--
--TIPO BICHO
INSERT INTO TIPOBICHO
VALUES (1,'Acero'),
 (2,'Agua'),
 (3,'Bicho'),
 (4,'Drag�n'),
 (5,'Electrico'),
 (6,'Tierra'),	
 (7,'Fuego'),
 (8,'Hielo'),
 (9,'Planta'),
 (10,'Psiquico')
--ESPECIES--
INSERT INTO ESPECIE
VALUES(1,'Metang',5,2,5000,1),
(2,'Squirtle',3,3,4000,2),
(3,'Caterpie',3,3,5000,3),
(4,'Dratini',3,4,3000,4),
(5,'Pikachu',4,4,4000,5),
(6,'Charmander',5,3,3000,6),
(7,'Cubone',5,4,3000,7),
(8,'Sandshrew',4,4,4000,8),
(9,'Bulbasaur',3,3,4000,9),
(10,'Abra',1,5,4000,10),
(11,'Metagross',5,2,5000,1),
(12,'Wartortle',3,4,4000,2),
(13,'Metapod',3,3,5000,3),
(14,'Dragonair',3,4,3000,4),
(15,'Raichu',5,3,5000,5),
(16,'Charmeleon',4,3,2000,7),
(17,'Marowak',5,5,3000,6),
(18,'Sandslash',5,4,4000,8),
(19,'Ivysaur',3,2,5000,9),
(20,'Kadabra',3,4,3000,10)
SELECT * FROM ESPECIE
--EVOLUCI�N--
INSERT INTO EVOLUCION
VALUES(1,11,100),
(2,12,200),
(3,13,300),
(4,14,250),
(5,15,150),
(6,16,200),
(7,17,175),
(8,18,200),
(9,19,300),
(10,20,300)
SELECT * FROM EVOLUCION
--USUARIO--
INSERT INTO USUARIO
VALUES(1,'JoelReyes','Joel','Reyes',1),
(2,'JoseReyes','Jose','Reyes',1),
(3,'JuanPerez','Juan','Perez',1),
(4,'Yami','Yami','Hernandez',0),
(5,'Juanito80','Juan','Rodriguez',1),
(6,'AlvinYaquitori','Alvin','Yaquitori',1),
(7,'JeffersonGutierritos','Jefferson','Gutierritos',1),
(8,'MariaSanchez','Maria','Sanchez',0),
(9,'Pedrito10','Pedro','Villas',1),
(10,'BarronDios','Lucia','Barron',0)
--BICHOS--
INSERT INTO BICHO
VALUES(1,'Juan',1,50,1)
INSERT INTO BICHO
VALUES(2,'Pedro',2,55,2)
INSERT INTO BICHO
VALUES(3,'Luis',3,73,3)
INSERT INTO BICHO
VALUES(4,'Osbaldo',4,35,4)
INSERT INTO BICHO
VALUES(5,'Kevin',5,21,5)
INSERT INTO BICHO
VALUES(6,'Jose',6,35,6)
INSERT INTO BICHO
VALUES(7,'Juan',7,39,7)
INSERT INTO BICHO
VALUES(8,'Jesus',8,41,8)
INSERT INTO BICHO
VALUES(9,'Hanselts',9,52,9)
INSERT INTO BICHO
VALUES(10,'Felipe',10,65,10)
INSERT INTO BICHO
VALUES(11,'Jiame',11,19,1)
INSERT INTO BICHO
VALUES(12,'Yeimi',12,10,2)
INSERT INTO BICHO
VALUES(13,'Chuy',13,5,3)
INSERT INTO BICHO
VALUES(14,'Maria',14,34,4)
INSERT INTO BICHO
VALUES(15,'Bryan',15,69,5)
INSERT INTO BICHO
VALUES(16,'Joel',16,71,6)
INSERT INTO BICHO
VALUES(17,'Yeimi',17,80,7)
INSERT INTO BICHO
VALUES(18,'Oliver',18,51,8)
INSERT INTO BICHO
VALUES(19,'Osuna',19,35,9)
INSERT INTO BICHO
VALUES(20,'Alejandro',20,49,10)
INSERT INTO BICHO
VALUES(21,'Eduardo',1,52,1)
INSERT INTO BICHO
VALUES(22,'Pancho',2,65,2)
INSERT INTO BICHO
VALUES(23,'Santiago',3,74,3)
INSERT INTO BICHO
VALUES(24,'Diego',4,42,4)
INSERT INTO BICHO
VALUES(25,'Miguel',5,3,5)
INSERT INTO BICHO
VALUES(26,'Angel',6,56,6)
INSERT INTO BICHO
VALUES(27,'Emilio',7,32,7)
INSERT INTO BICHO
VALUES(28,'Emiliano',8,39,8)
INSERT INTO BICHO
VALUES(29,'Leo',9,29,9)
INSERT INTO BICHO
VALUES(30,'Lioenel',10,89,10)
INSERT INTO BICHO
VALUES(31,'Leonardo',11,29,1)
INSERT INTO BICHO
VALUES(32,'Daniel',12,15,2)
INSERT INTO BICHO
VALUES(33,'Axel',13,14,3)
INSERT INTO BICHO
VALUES(34,'Alexander',14,35,4)
INSERT INTO BICHO
VALUES(35,'Pablo',15,13,5)
INSERT INTO BICHO
VALUES(36,'Gael',16,34,6)
INSERT INTO BICHO
VALUES(37,'Axel',17,64,7)
INSERT INTO BICHO
VALUES(38,'Fernando',18,36,8)
INSERT INTO BICHO
VALUES(39,'Rodrigo',19,39,9)
INSERT INTO BICHO
VALUES(40,'Matias',20,53,10)
INSERT INTO BICHO
VALUES(41,'Emma',1,45,1)
INSERT INTO BICHO
VALUES(42,'Emmanuel',2,65,2)
INSERT INTO BICHO
VALUES(43,'David',3,52,3)
INSERT INTO BICHO
VALUES(44,'Iker',4,3,4)
INSERT INTO BICHO
VALUES(45,'Lebron',5,74,5)
INSERT INTO BICHO
VALUES(46,'Lebron',6,8,6)
INSERT INTO BICHO
VALUES(47,'Jonathan',7,9,7)
INSERT INTO BICHO
VALUES(48,'Ricardo',8,19,8)
INSERT INTO BICHO
VALUES(49,'Alexis',9,35,9)
INSERT INTO BICHO
VALUES(50,'Antonio',10,28,10)
INSERT INTO BICHO
VALUES(51,'Damian',11,27,1)
INSERT INTO BICHO
VALUES(52,'Gabriel',12,5,2)
INSERT INTO BICHO
VALUES(53,'Cristian',13,98,3)
INSERT INTO BICHO
VALUES(54,'Cristopher',14,35,4)
INSERT INTO BICHO
VALUES(55,'Alexia',15,40,5)
INSERT INTO BICHO
VALUES(56,'Rafael',16,69,6)
INSERT INTO BICHO
VALUES(57,'Ana',17,3,7)
INSERT INTO BICHO
VALUES(58,'Alan',18,4,8)
INSERT INTO BICHO
VALUES(59,'Isaac',19,30,9)
INSERT INTO BICHO
VALUES(60,'Mauricio',20,50,10)
INSERT INTO BICHO
VALUES(61,'Josue',1,19,1)
INSERT INTO BICHO
VALUES(62,'Adrian',2,45,2)
INSERT INTO BICHO
VALUES(63,'Uriel',3,47,3)
INSERT INTO BICHO
VALUES(64,'Samuel',4,69,4)
INSERT INTO BICHO
VALUES(65,'Javier',5,25,5)
INSERT INTO BICHO
VALUES(66,'Elias',6,36,6)
INSERT INTO BICHO
VALUES(67,'Brandon',7,37,7)
INSERT INTO BICHO
VALUES(68,'Cesar',8,45,8)
INSERT INTO BICHO
VALUES(69,'Nicolas',9,69,9)
INSERT INTO BICHO
VALUES(70,'Andres',10,42,10)
INSERT INTO BICHO
VALUES(71,'Tadeo',11,47,1)
INSERT INTO BICHO
VALUES(72,'Aaron',12,20,2)
INSERT INTO BICHO
VALUES(73,'Carlos',13,21,3)
INSERT INTO BICHO
VALUES(74,'Gerardo',14,80,4)
INSERT INTO BICHO
VALUES(75,'Ivan',15,81,5)
INSERT INTO BICHO
VALUES(76,'Oscar',16,50,6)
INSERT INTO BICHO
VALUES(77,'Erick',17,36,7)
INSERT INTO BICHO
VALUES(78,'Omar',18,42,8)
INSERT INTO BICHO
VALUES(79,'Victor',19,10,9)
INSERT INTO BICHO
VALUES(80,'Dylan',20,11,10)
INSERT INTO BICHO
VALUES(81,'Elian',1,12,1)
INSERT INTO BICHO
VALUES(82,'Silvia',2,14,2)
INSERT INTO BICHO
VALUES(83,'Enrique',3,45,3)
INSERT INTO BICHO
VALUES(84,'Noel',4,50,4)
INSERT INTO BICHO
VALUES(85,'Ian',5,59,5)
INSERT INTO BICHO
VALUES(86,'Hirving',6,68,6)
INSERT INTO BICHO
VALUES(87,'Irvin',7,2,7)
INSERT INTO BICHO
VALUES(88,'Irving',8,10,8)
INSERT INTO BICHO
VALUES(89,'Silvia',9,50,9)
INSERT INTO BICHO
VALUES(90,'Juanito',10,10,10)
INSERT INTO BICHO
VALUES(91,'Francisco',11,54,1)
INSERT INTO BICHO
VALUES(92,'Franco',12,56,2)
INSERT INTO BICHO
VALUES(93,'Bertha',13,59,3)
INSERT INTO BICHO
VALUES(94,'Carmen',14,14,4)
INSERT INTO BICHO
VALUES(95,'Karmen',15,13,5)
INSERT INTO BICHO
VALUES(96,'Karina',16,17,6)
INSERT INTO BICHO
VALUES(97,'Karime',17,57,7)
INSERT INTO BICHO
VALUES(98,'Juancho',18,26,8)
INSERT INTO BICHO
VALUES(99,'Neymar',19,82,9)
INSERT INTO BICHO
VALUES(100,'Ronaldo',20,24,10)
SELECT * FROM BICHO
--UBICACI�N---
INSERT INTO UBICACI�N
VALUES(1,'TEC DE CULIAC�N'),
(2,'CATEDRAL'),
(3,'JARD�N BOTANICO'),
(4,'TEC DE CULIAC�N'),
(5,'PASEO DEL ANGEL'),
(6,'PARQUE LAS RIBERAS'),
(7,'LA LOMITA'),
(8,'PARISINA'),
(9,'CARS JR'),
(10,'ESTADIO BANORTE')
--USUARIO CAPTURA BICHO--
SELECT * FROM [USUARIO-CAPTURA-BICHO]
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES(1,1,1,'20160419'),
(2,2,2,'20170508'),
(3,3,3,'20170419'),
(4,4,4,'20150716'),
(5,5,5,'20160503'),
(6,6,6,'20150604'),
(7,7,7,'20170605'),
(8,8,8,'20160620'),
(9,9,9,'20161130'),
(10,10,10,'20160601'),
(1,11,1,'20150725'),
(2,12,2,'20151128'),
(3,13,3,'20160202'),
(4,14,4,'20170625'),
(5,15,5,'20151120'),
(6,16,6,'20170617'),
(7,17,7,'20161128'),
(8,18,8,'20150330'),
(9,19,9,'20170321'),
(10,20,10,'20170823'),
(1,21,1,'20150714'),
(2,22,2,'20150614'),
(3,23,3,'20160610'),
(4,24,4,'20160812'),
(5,25,5,'20160417'),
(6,26,6,'20160815'),
(7,27,7,'20150916'),
(8,28,8,'20161001'),
(9,29,9,'20151017'),
(10,30,10,'20150330'),
(1,31,1,'20170720'),
(2,32,2,'20160623'),
(3,33,3,'20160211'),
(4,34,4,'20150824'),
(5,35,5,'20160313'),
(6,36,6,'20150127'),
(7,37,7,'20170923'),
(8,38,8,'20170611'),
(9,39,9,'20151013'),
(10,40,10,'20150806'),
(1,41,1,'20170226'),
(2,42,2,'20161130'),
(3,43,3,'20170111'),
(4,44,4,'20150820'),
(5,45,5,'20160225'),
(6,46,6,'20170330'),
(7,47,7,'20161001'),
(8,48,8,'20150517'),
(9,49,9,'20150429'),
(10,50,10,'20170124'),
(1,51,1,'20170127'),
(2,52,2,'20150112'),
(3,53,3,'20150819'),
(4,54,4,'20150701'),
(5,55,5,'20170328'),
(6,56,6,'20160113'),
(7,57,7,'20171102'),
(8,58,8,'20150405'),
(9,59,9,'20160322'),
(10,60,10,'20151126'),
(1,61,1,'20150126'),
(2,62,2,'20160924'),
(3,63,3,'20161103'),
(4,64,4,'20161116'),
(5,65,5,'20161021'),
(6,66,6,'20151011'),
(7,67,7,'20150105'),
(8,68,8,'20160522'),
(9,69,9,'20170714'),
(10,70,10,'20160722'),
(1,71,1,'20150330'),
(2,72,2,'20170618'),
(3,73,3,'20160919'),
(4,74,4,'20160225'),
(5,75,5,'20150712'),
(6,76,6,'20151119'),
(7,77,7,'20160331'),
(8,78,8,'20170524'),
(9,79,9,'20160711'),
(10,80,10,'20160204'),
(1,81,1,'20170804'),
(2,82,2,'20170911'),
(3,83,3,'20150903'),
(4,84,4,'20150430'),
(5,85,5,'20160319'),
(6,86,6,'20150120'),
(7,87,7,'20160208'),
(8,88,8,'20171022'),
(9,89,9,'20170618'),
(10,90,10,'20160930'),
(1,91,1,'20170429'),
(2,92,2,'20150205'),
(3,93,3,'20160723'),
(4,94,4,'20160615'),
(5,95,5,'20160812'),
(6,96,6,'20170916'),
(7,97,7,'20160626'),
(8,98,8,'20170926'),
(9,99,9,'20160528'),
(10,100,10,'20170801')
--INTERCAMBIO--
INSERT INTO INTERCAMBIO 
VALUES (1,1,2,12,'Oct  2 2008 11:01AM')
INSERT INTO INTERCAMBIO 
VALUES (2,2,3,13,'Sep  2 2008 11:01AM')
INSERT INTO INTERCAMBIO 
VALUES (3,3,4,14,'Nov  8 2018 13:01PM')
INSERT INTO INTERCAMBIO 
VALUES (4,4,5,15,'Jan  25 2018 12:05AM')
INSERT INTO INTERCAMBIO 
VALUES (5,5,6,16,'Feb  27 2017 20:50PM')
INSERT INTO INTERCAMBIO 
VALUES (6,6,7,17,'May  15 2018 08:51AM')
INSERT INTO INTERCAMBIO 
VALUES (7,7,8,18,'Jun  9 2018 09:59 AM')
INSERT INTO INTERCAMBIO 
VALUES (8,8,9,19,'Oct  8 2017 22:05 PM')
INSERT INTO INTERCAMBIO 
VALUES (9,9,10,20,'Jul  15 2018 14:46 PM')
select * from INTERCAMBIO
--ATAQUE--
SELECT * FROM TIPOBICHO
INSERT INTO ATAQUE 
VALUES(1,'Foco Resplandor',4000,1)
INSERT INTO ATAQUE 
VALUES(2,'HidroCa��n',3600,2)
INSERT INTO ATAQUE 
VALUES(3,'Zumbido',3600,3)
INSERT INTO ATAQUE 
VALUES(4,'Garra de Drag�n',2500,4)
INSERT INTO ATAQUE 
VALUES(5,'ElectroCa��n',5000,5)
INSERT INTO ATAQUE 
VALUES(6,'Terremoto',5000,6)
INSERT INTO ATAQUE 
VALUES(7,'Llamarada',5500,7)
INSERT INTO ATAQUE 
VALUES(8,'Rayo hielo',5000,8)
INSERT INTO ATAQUE 
VALUES(9,'Rayo Solar',6000,9)
INSERT INTO ATAQUE 
VALUES(10,'Psicocarga',2500,10)
SELECT * From [BICHO-ATAQUE] 
--BICHO ATAQUE--
INSERT INTO [BICHO-ATAQUE]
VALUES (1,1),
 (2,2),
 (3,3),
 (4,4),
 (5,5),
 (6,6),
 (7,7),
 (8,8),
 (9,9),
 (10,10),
 (11,1),
 (12,2),
 (13,3),
 (14,4),
 (15,5),
 (16,6),
 (17,7),
 (18,8),
 (29,9),
 (20,10),
 (21,1),
 (22,2),
 (23,3),
 (24,4),
 (25,5),
 (26,6),
 (27,7),
 (28,8),
 (29,9),
 (30,10),
 (31,1),
 (32,2),
 (33,3),
 (34,4),
 (35,5),
 (36,6),
 (37,7),
 (38,8),
 (39,9),
 (40,10),
 (41,1),
 (42,2),
 (43,3),
 (44,4),
 (45,5),
 (46,6),
 (47,7),
 (48,8),
 (49,9),
 (50,10),
 (51,1),
 (52,2),
 (53,3),
 (54,4),
 (55,5),
 (56,6),
 (57,7),
 (58,8),
 (59,9),
 (60,10),
 (61,1),
 (62,2),
 (63,3),
 (64,4),
 (65,5),
 (66,6),
 (67,7),
 (68,8),
 (69,9),
 (70,10),
 (71,1),
 (72,2),
 (73,3),
 (74,4),
 (75,5),
 (76,6),
 (77,7),
 (78,8),
 (79,9),
 (80,10),
 (81,1),
 (82,2),
 (83,3),
 (84,4),
 (85,5),
 (86,6),
 (87,7),
 (88,8),
 (89,9),
 (90,10),
 (91,1),
 (92,2),
 (93,3),
 (94,4),
 (95,5),
 (96,6),
 (97,7),
 (98,8),
 (99,9),
 (100,10)
--ESPECIE DEBILIDAD--
INSERT INTO [TIPO-DEBILIDAD]
VALUES(1,2),
(2,9),
(3,7),
(4,1),
(5,4),
(6,3),
(7,2),
(8,7),
(9,2),
(10,1)
--ESPECIE FORTALEZA--
INSERT INTO [TIPO-FORTALEZA]
VALUES (1,8),
 (2,6),
 (3,10),
 (4,5),
 (5,2),
 (6,1),
 (7,3),
 (8,9),
 (9,2),
 (10,1)
--COMBATE--
INSERT INTO COMBATE
VALUES(1,2,'Sep  2 2018 11:01AM',1,1)
INSERT INTO COMBATE
VALUES(3,4,'Oct  8 2018 09:55AM',2,3)
INSERT INTO COMBATE
VALUES(5,6,'Nov 8 2018 20:50 PM',3,6)
INSERT INTO COMBATE
VALUES(7,8,'Jan  25 2018 12:50PM',4,8)
INSERT INTO COMBATE
VALUES(9,10,'Dec 23 2015 23:00 PM',5,9)
--USUARIO-BICHO-COMBATE--
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(1,1,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(1,11,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(1,21,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(3,3,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(3,13,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(3,23,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(5,5,3)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(5,15,3)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(5,25,3)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(7,7,4)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(7,17,4)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(7,27,4)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(9,9,5)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(9,19,5)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(9,29,5)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(2,2,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(2,12,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(2,22,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(4,4,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(4,14,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(4,24,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(6,6,3)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(6,16,3)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(6,26,3)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(8,8,4)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(8,18,4)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(8,28,4)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(10,10,5)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(10,20,5)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(10,30,5)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(10,30,5)
--RONDA--
INSERT INTO RONDA
VALUES(11,12,1,1,1)
INSERT INTO RONDA
VALUES(11,12,1,2,2)
INSERT INTO RONDA
VALUES(21,22,1,3,3)
INSERT INTO RONDA
VALUES(3,4,2,4,1)
INSERT INTO RONDA
VALUES(13,14,2,5,2)
INSERT INTO RONDA
VALUES(23,24,2,6,3)
INSERT INTO RONDA
VALUES(5,6,3,7,1)
INSERT INTO RONDA
VALUES(15,16,3,8,2)
INSERT INTO RONDA
VALUES(25,26,3,9,3)
INSERT INTO RONDA
VALUES(7,8,4,10,1)
INSERT INTO RONDA
VALUES(17,18,4,11,2)
INSERT INTO RONDA
VALUES(27,28,4,12,3)
INSERT INTO RONDA
VALUES(9,10,5,13,1)
INSERT INTO RONDA
VALUES(19,20,5,14,2)
INSERT INTO RONDA
VALUES(29,30,5,15,3)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(1,2,1),
(1,2,2),
(1,2,3),
(3,4,4),
(3,4,5),
(3,4,6),
(5,6,7),
(5,6,8),
(5,6,9),
(7,8,10),
(7,8,11),
(7,8,12),
(9,10,13),
(9,10,14),
(9,10,15)