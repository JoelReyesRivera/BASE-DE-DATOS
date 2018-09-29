--INGRESO DE CARGAS INICIALES BICHOS--
--TIPO BICHO
INSERT INTO TIPOBICHO
VALUES (1,'Acero')
INSERT INTO TIPOBICHO
VALUES (2,'Agua')
INSERT INTO TIPOBICHO
VALUES (3,'Bicho')
INSERT INTO TIPOBICHO
VALUES (4,'Drag�n')
INSERT INTO TIPOBICHO
VALUES (5,'Electrico')
INSERT INTO TIPOBICHO
VALUES (6,'Tierra')	
INSERT INTO TIPOBICHO
VALUES (7,'Fuego')
INSERT INTO TIPOBICHO
VALUES (8,'Hielo')
INSERT INTO TIPOBICHO
VALUES (9,'Planta')
INSERT INTO TIPOBICHO
VALUES (10,'Psiquico')
INSERT INTO TIPOBICHO
VALUES (11,'Roca')
SELECT * FROM TIPOBICHO
--ESPECIES--
INSERT INTO ESPECIE
VALUES(1,'Metang',5,2,5000,1)
INSERT INTO ESPECIE
VALUES(2,'Squirtle',3,3,4000,2)
INSERT INTO ESPECIE
VALUES(3,'Caterpie',3,3,5000,3)
INSERT INTO ESPECIE
VALUES(4,'Dratini',3,4,3000,4)
INSERT INTO ESPECIE
VALUES(5,'Pikachu',4,4,4000,5)
INSERT INTO ESPECIE
VALUES(6,'Charmander',5,3,3000,7)
INSERT INTO ESPECIE
VALUES(7,'Cubone',5,4,3000,6)
INSERT INTO ESPECIE
VALUES(8,'Sandshrew',4,4,4000,8)
INSERT INTO ESPECIE
VALUES(9,'Bulbasaur',3,3,4000,9)
INSERT INTO ESPECIE
VALUES(10,'Abra',1,5,4000,10)
INSERT INTO ESPECIE
VALUES(11,'Geodude',1,5,4000,11)
INSERT INTO ESPECIE
VALUES(12,'Metagross',5,2,5000,1)
INSERT INTO ESPECIE
VALUES(13,'Wartortle',3,4,4000,2)
INSERT INTO ESPECIE
VALUES(14,'Metapod',3,3,5000,3)
INSERT INTO ESPECIE
VALUES(15,'Dragonair',3,4,3000,4)
INSERT INTO ESPECIE
VALUES(16,'Raichu',5,3,5000,5)
INSERT INTO ESPECIE
VALUES(17,'Charmeleon',4,3,2000,7)
INSERT INTO ESPECIE
VALUES(18,'Marowak',5,5,3000,6)
INSERT INTO ESPECIE
VALUES(19,'Sandslash',5,4,4000,8)
INSERT INTO ESPECIE
VALUES(20,'Ivysaur',3,2,5000,9)
INSERT INTO ESPECIE
VALUES(21,'Kadabra',3,4,3000,10)
INSERT INTO ESPECIE
VALUES(22,'Graveler',4,2,4000,11)
SELECT * FROM ESPECIE
--EVOLUCI�N--
INSERT INTO EVOLUCION
VALUES(1,12,100)
INSERT INTO EVOLUCION
VALUES(2,13,200)
INSERT INTO EVOLUCION
VALUES(3,14,300)
INSERT INTO EVOLUCION
VALUES(4,15,250)
INSERT INTO EVOLUCION
VALUES(5,16,150)
INSERT INTO EVOLUCION
VALUES(6,17,200)
INSERT INTO EVOLUCION
VALUES(7,18,175)
INSERT INTO EVOLUCION
VALUES(8,19,200)
INSERT INTO EVOLUCION
VALUES(9,20,300)
INSERT INTO EVOLUCION
VALUES(10,21,150)
INSERT INTO EVOLUCION
VALUES(11,22,140)
SELECT * FROM EVOLUCION
--USUARIO--
INSERT INTO USUARIO
VALUES(1,'JoelReyes','Joel','Reyes',1)	
INSERT INTO USUARIO
VALUES(2,'JoseReyes','Jose','Reyes',1)
INSERT INTO USUARIO
VALUES(3,'JuanPerez','Juan','Perez',1)
INSERT INTO USUARIO
VALUES(4,'Yami','Yami','Hernandez',0)
INSERT INTO USUARIO
VALUES(5,'Juanito80','Juan','Rodriguez',1)
INSERT INTO USUARIO
VALUES(6,'AlvinYaquitori','Alvin','Yaquitori',1)
INSERT INTO USUARIO
VALUES(7,'JeffersonGutierritos','Jefferson','Gutierritos',1)
INSERT INTO USUARIO
VALUES(8,'MariaSanchez','Maria','Sanchez',0)
INSERT INTO USUARIO
VALUES(9,'Pedrito10','Pedro','Villas',1)
INSERT INTO USUARIO
VALUES(10,'BarronDios','Lucia','Barron',0)
SELECT * FROM USUARIO
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
VALUES(21,'Eduardo',21,52,1)
INSERT INTO BICHO
VALUES(22,'Pancho',22,65,2)
INSERT INTO BICHO
VALUES(23,'Santiago',1,74,3)
INSERT INTO BICHO
VALUES(24,'Diego',2,42,4)
INSERT INTO BICHO
VALUES(25,'Miguel',3,3,5)
INSERT INTO BICHO
VALUES(26,'Angel',4,56,6)
INSERT INTO BICHO
VALUES(27,'Emilio',5,32,7)
INSERT INTO BICHO
VALUES(28,'Emiliano',6,39,8)
INSERT INTO BICHO
VALUES(29,'Leo',7,29,9)
INSERT INTO BICHO
VALUES(30,'Lioenel',8,89,10)
INSERT INTO BICHO
VALUES(31,'Leonardo',9,29,1)
INSERT INTO BICHO
VALUES(32,'Daniel',10,15,2)
INSERT INTO BICHO
VALUES(33,'Axel',11,14,3)
INSERT INTO BICHO
VALUES(34,'Alexander',1,35,4)
INSERT INTO BICHO
VALUES(35,'Pablo',2,13,5)
INSERT INTO BICHO
VALUES(36,'Gael',3,34,6)
INSERT INTO BICHO
VALUES(37,'Axel',4,64,7)
INSERT INTO BICHO
VALUES(38,'Fernando',5,36,8)
INSERT INTO BICHO
VALUES(39,'Rodrigo',6,39,9)
INSERT INTO BICHO
VALUES(40,'Matias',7,53,10)
INSERT INTO BICHO
VALUES(41,'Emma',8,45,1)
INSERT INTO BICHO
VALUES(42,'Emmanuel',9,65,2)
INSERT INTO BICHO
VALUES(43,'David',10,52,3)
INSERT INTO BICHO
VALUES(44,'Iker',11,3,4)
INSERT INTO BICHO
VALUES(45,'Lebron',1,74,5)
INSERT INTO BICHO
VALUES(46,'Lebron',2,8,6)
INSERT INTO BICHO
VALUES(47,'Jonathan',3,9,7)
INSERT INTO BICHO
VALUES(48,'Ricardo',4,19,8)
INSERT INTO BICHO
VALUES(49,'Alexis',5,35,9)
INSERT INTO BICHO
VALUES(50,'Antonio',6,28,10)
INSERT INTO BICHO
VALUES(51,'Damian',7,27,1)
INSERT INTO BICHO
VALUES(52,'Gabriel',8,5,2)
INSERT INTO BICHO
VALUES(53,'Cristian',9,98,3)
INSERT INTO BICHO
VALUES(54,'Cristopher',10,35,4)
INSERT INTO BICHO
VALUES(55,'Alexia',11,40,5)
INSERT INTO BICHO
VALUES(56,'Rafael',1,69,6)
INSERT INTO BICHO
VALUES(57,'Ana',2,3,7)
INSERT INTO BICHO
VALUES(58,'Alan',3,4,8)
INSERT INTO BICHO
VALUES(59,'Isaac',4,30,9)
INSERT INTO BICHO
VALUES(60,'Mauricio',5,50,10)
INSERT INTO BICHO
VALUES(61,'Josue',6,19,1)
INSERT INTO BICHO
VALUES(62,'Adrian',7,45,2)
INSERT INTO BICHO
VALUES(63,'Uriel',8,47,3)
INSERT INTO BICHO
VALUES(64,'Samuel',9,69,4)
INSERT INTO BICHO
VALUES(65,'Javier',10,25,5)
INSERT INTO BICHO
VALUES(66,'Elias',11,36,6)
INSERT INTO BICHO
VALUES(67,'Brandon',1,37,7)
INSERT INTO BICHO
VALUES(68,'Cesar',2,45,8)
INSERT INTO BICHO
VALUES(69,'Nicolas',3,69,9)
INSERT INTO BICHO
VALUES(70,'Andres',4,42,10)
INSERT INTO BICHO
VALUES(71,'Tadeo',5,47,1)
INSERT INTO BICHO
VALUES(72,'Aaron',6,20,2)
INSERT INTO BICHO
VALUES(73,'Carlos',7,21,3)
INSERT INTO BICHO
VALUES(74,'Gerardo',8,80,4)
INSERT INTO BICHO
VALUES(75,'Ivan',9,81,5)
INSERT INTO BICHO
VALUES(76,'Oscar',10,50,6)
INSERT INTO BICHO
VALUES(77,'Erick',11,36,7)
INSERT INTO BICHO
VALUES(78,'Omar',1,42,8)
INSERT INTO BICHO
VALUES(79,'Victor',2,10,9)
INSERT INTO BICHO
VALUES(80,'Dylan',3,11,10)
INSERT INTO BICHO
VALUES(81,'Elian',4,12,1)
INSERT INTO BICHO
VALUES(82,'Silvia',5,14,2)
INSERT INTO BICHO
VALUES(83,'Enrique',6,45,3)
INSERT INTO BICHO
VALUES(84,'Noel',7,50,4)
INSERT INTO BICHO
VALUES(85,'Ian',8,59,5)
INSERT INTO BICHO
VALUES(86,'Hirving',9,68,6)
INSERT INTO BICHO
VALUES(87,'Irvin',10,2,7)
INSERT INTO BICHO
VALUES(88,'Irving',11,10,8)
INSERT INTO BICHO
VALUES(89,'Silvia',1,50,9)
INSERT INTO BICHO
VALUES(90,'Juanito',2,10,10)
INSERT INTO BICHO
VALUES(91,'Francisco',3,54,1)
INSERT INTO BICHO
VALUES(92,'Franco',4,56,2)
INSERT INTO BICHO
VALUES(93,'Bertha',5,59,3)
INSERT INTO BICHO
VALUES(94,'Carmen',6,14,4)
INSERT INTO BICHO
VALUES(95,'Karmen',7,13,5)
INSERT INTO BICHO
VALUES(96,'Karina',8,17,6)
INSERT INTO BICHO
VALUES(97,'Karime',9,57,7)
INSERT INTO BICHO
VALUES(98,'Juancho',10,26,8)
INSERT INTO BICHO
VALUES(99,'Neymar',11,82,9)
INSERT INTO BICHO
VALUES(100,'Ronaldo',1,24,10)
SELECT * FROM BICHO
--UBICACI�N---
INSERT INTO UBICACI�N
VALUES(1,'TEC DE CULIAC�N')
INSERT INTO UBICACI�N
VALUES(2,'CATEDRAL')
INSERT INTO UBICACI�N
VALUES(3,'JARD�N BOTANICO')
INSERT INTO UBICACI�N
VALUES(4,'TEC DE CULIAC�N')
INSERT INTO UBICACI�N
VALUES(5,'PASEO DEL ANGEL')
INSERT INTO UBICACI�N
VALUES(6,'PARQUE LAS RIBERAS')
INSERT INTO UBICACI�N
VALUES(7,'LA LOMITA')
INSERT INTO UBICACI�N
VALUES(8,'PARISINA')
INSERT INTO UBICACI�N
VALUES(9,'CARS JR')
INSERT INTO UBICACI�N
VALUES(10,'ESTADIO BANORTE')
--USUARIO CAPTURA BICHO--
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,1,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,2,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,3,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,4,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,5,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,6,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,7,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,8,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,9,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,10,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,11,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,12,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,13,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,14,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,15,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,16,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,17,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,18,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,19,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,20,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,21,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,22,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,23,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,24,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,25,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,26,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,27,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,28,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,29,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,30,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,31,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,32,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,33,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,34,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,35,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,36,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,37,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,38,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,39,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,40,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,41,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,42,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,43,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,44,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,45,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,46,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,47,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,48,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,49,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,50,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,51,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,52,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,53,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,54,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,55,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,56,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,57,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,58,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,59,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,60,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,61,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,62,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,63,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,64,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,65,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,66,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,67,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,68,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,69,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,70,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,71,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,72,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,73,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,74,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,75,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,76,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,77,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,78,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,79,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,80,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,81,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,82,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,83,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,84,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,85,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,86,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,87,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,88,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,89,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,90,10)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (1,91,1)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (2,92,2)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (3,93,3)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (4,94,4)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (5,95,5)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (6,96,6)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (7,97,7)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (8,98,8)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (9,99,9)
INSERT INTO [USUARIO-CAPTURA-BICHO]
VALUES (10,100,10)
SELECT * FROM [USUARIO-CAPTURA-BICHO]
--INTERCAMBIO--
INSERT INTO INTERCAMBIO 
VALUES (1,1,2,'Oct  2 2008 11:01AM')
INSERT INTO INTERCAMBIO 
VALUES (2,2,3,'Sep  2 2008 11:01AM')
INSERT INTO INTERCAMBIO 
VALUES (3,3,4,'Nov  8 2018 13:01PM')
INSERT INTO INTERCAMBIO 
VALUES (4,4,5,'Jan  25 2018 12:05AM')
INSERT INTO INTERCAMBIO 
VALUES (5,5,6,'Feb  27 2017 20:50PM')
INSERT INTO INTERCAMBIO 
VALUES (6,6,7,'May  15 2018 08:51AM')
INSERT INTO INTERCAMBIO 
VALUES (7,7,8,'Jun  9 2018 09:59 AM')
INSERT INTO INTERCAMBIO 
VALUES (8,8,9,'Oct  8 2017 22:05 PM')
INSERT INTO INTERCAMBIO 
VALUES (9,9,10,'Jul  15 2018 14:46 PM')
INSERT INTO INTERCAMBIO 
VALUES (10,1,1,'Dec  23 2017 21:05PM')
select * from INTERCAMBIO
--ATAQUE--
INSERT INTO ATAQUE 
VALUES(1,'Foco Resplandor',4000)
INSERT INTO ATAQUE 
VALUES(2,'HidroCa��n',3600)
INSERT INTO ATAQUE 
VALUES(3,'Zumbido',3600)
INSERT INTO ATAQUE 
VALUES(4,'Garra de Drag�n',2500)
INSERT INTO ATAQUE 
VALUES(5,'ElectroCa��n',5000)
INSERT INTO ATAQUE 
VALUES(6,'Terremoto',5000)
INSERT INTO ATAQUE 
VALUES(7,'Llamarada',5500)
INSERT INTO ATAQUE 
VALUES(8,'Rayo hielo',5000)
INSERT INTO ATAQUE 
VALUES(9,'Rayo Solar',6000)
INSERT INTO ATAQUE 
VALUES(10,'Psicocarga',2500)
INSERT INTO ATAQUE 
VALUES(11,'Roca Afiliada',4000)
--BICHO ATAQUE--
INSERT INTO [BICHO-ATAQUE]
VALUES (1,1)
INSERT INTO [BICHO-ATAQUE]
VALUES (2,2)
INSERT INTO [BICHO-ATAQUE]
VALUES (3,3)
INSERT INTO [BICHO-ATAQUE]
VALUES (4,4)
INSERT INTO [BICHO-ATAQUE]
VALUES (5,5)
INSERT INTO [BICHO-ATAQUE]
VALUES (6,6)
INSERT INTO [BICHO-ATAQUE]
VALUES (7,7)
INSERT INTO [BICHO-ATAQUE]
VALUES (8,8)
INSERT INTO [BICHO-ATAQUE]
VALUES (9,9)
INSERT INTO [BICHO-ATAQUE]
VALUES (10,10)
INSERT INTO [BICHO-ATAQUE]
VALUES (11,11)
--ESPECIE DEBILIDAD--
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(1,2)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(2,9)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(3,7)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(4,1)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(5,4)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(6,3)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(7,2)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(8,7)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(9,2)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(10,1)
INSERT INTO [ESPECIE-DEBILIDAD]
VALUES(11,6)
--ESPECIE FORTALEZA--
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (1,8)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (2,6)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (3,10)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (4,4)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (5,2)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (6,1)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (7,3)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (8,9)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (9,2)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (10,1)
INSERT INTO [ESPECIE-FORTALEZA]
VALUES (11,3)
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
VALUES(9,10,'Dec 23 2015 23:00 PM',5,7)
--USUARIO-BICHO-COMBATE--
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(1,1,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(1,11,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(1,22,1)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(3,3,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(3,13,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(3,23,2)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(5,15,3)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(5,25,3)
INSERT INTO [USUARIO-BICHO-COMBATE]
VALUES(5,5,3)
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
--RONDA--
INSERT INTO RONDA
VALUES(1,2,1,1,1)
INSERT INTO RONDA
VALUES(1,2,1,2,2)
INSERT INTO RONDA
VALUES(1,2,1,3,3)
INSERT INTO RONDA
VALUES(3,4,2,4,1)
INSERT INTO RONDA
VALUES(3,4,2,5,2)
INSERT INTO RONDA
VALUES(3,4,2,6,3)
INSERT INTO RONDA
VALUES(5,6,3,7,1)
INSERT INTO RONDA
VALUES(5,6,3,8,2)
INSERT INTO RONDA
VALUES(5,6,3,9,3)
INSERT INTO RONDA
VALUES(7,8,4,10,1)
INSERT INTO RONDA
VALUES(7,8,4,11,2)
INSERT INTO RONDA
VALUES(7,8,4,12,3)
INSERT INTO RONDA
VALUES(9,10,5,13,1)
INSERT INTO RONDA
VALUES(9,10,5,14,2)
INSERT INTO RONDA
VALUES(9,10,5,15,3)
SELECT  * FROM RONDA
--RONDA-ATAQUE-BICHO
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(1,1,1)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(11,11,2)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(21,21,3)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(2,2,1)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(12,2,2)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(22,2,3)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(3,3,4)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(13,3,5)
INSERT INTO[RONDA-ATAQUE-BICHO]
VALUES(23,3,6)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(4,4,4)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(14,4,5)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(24,4,6)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(5,5,7)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(15,5,8)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(25,5,9)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(6,6,7)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(16,6,8)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(26,6,9)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(7,7,10)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(17,7,11)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(27,7,12)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(8,8,10)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(18,8,11)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(28,8,12)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(9,9,13)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(19,9,14)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(29,9,15)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(10,10,13)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(20,10,14)
INSERT INTO [RONDA-ATAQUE-BICHO]
VALUES(30,10,15)
SELECT * FROM [RONDA-ATAQUE-BICHO] ORDER BY [ID-Bicho]


