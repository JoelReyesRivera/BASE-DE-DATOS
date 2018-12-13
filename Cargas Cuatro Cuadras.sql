--CARGAS CUATRO CUADRAS--

use CuatroCuadrasBD

INSERT INTO CIUDAD
VALUES ('Culiacán'),
('Navolato'),
('Mochis'),
('Mazatlán'),
('Cosalá'),
('Parral'),
('CDMX'),
('Veracruz'),
('Acapulco'),
('Queretaro')


 select * from CIUDAD


INSERT INTO USUARIO
VALUES ('Joselito','Joel',1, 19,'jreyes1999@hotmail.com','joel08',1),
('BryanReRi','Bryan',1,18,'breyes2003@hotmail.com','bryan09',2),
('KariRe','Karime',0,17,'karireyes@hotmail.com','kari07',3),
('JuanPe','Juan',1,19,'juanperes@hotmail.com','jaunpa',4),
('Bris','Briceida',0,25,'brisjmb@hotmail.com','bris08',5),
('KarelyCin','Karely',0,26,'karelymb@hotmail.com','karely15',1),
('AméricaDen','América',0,16,'americamb@hotmail.com','america28',2),
('KevinG','Kevin',1, 18,'parranoel@hotmail.com','kevinP',3),
('CrazyJCF','Jorge',0,19,'jorfeCfelix@hotmail.com','jorgeChivas',4),
('Wonguito','Ricardo',0, 22,'ricardowong@hotmail.com','arjona27',5)


 select * from USUARIO


INSERT INTO CATEGORIA
Values('Parque'),
('Kareoke Bar'),
('Restaurant'),
('Estadio'),
('Puerto'),
('Cine'),
('Tienda De Música'),
('Cabina Fotos'),
('Oficina'),
('Boutique')



INSERT INTO LUGAR 
VALUES (80,90,'Riberas',1,1),
(-52,-35,'El Grito',2,3),
(35,65,'Hambugería',3,4),
(-1,82,'Banorte',4,6),
(-10,50,'Altata',5,1),
(43,32,'Cinepolis',6,3),
(49,42,'Music Store',7,2),
(36,82,'Photo Store',8,3),
(-5,64,'Oficina Coppel',9,5),
(-15,35,'C & A',10,10),
(4,52,'Photo Shop',8,7),
(65,12,'Photo Rally',8,6),
(34,52,'Mazatlán Malecón',5,1),
(-6,90,'Vallarta Malecón',5,2),
(65,90,'Sushi Factory',3,7),
(36,30,'Farm Burguer',3,3),
(-5,14,'La café',3,8),
(-5,-50,'Carls jr',3,9),
(36,25,'Burguer King',3,4),
(55,15,'Super salads',3,9),
(73,36,'Kiwi',3,4),
(31,38,'Salads Imbox',3,1),
(90,13,'Maroma',3,9),
(87, 45,'MixUp',7,10),
(-6,70,'Las ermoxxas',10,5),
(80,-45,'Parque 87',1,2)
select * from LUGAR




INSERT INTO [CHECK-IN]
VALUES(8,19,'Muy malo','Apr 19 2016 3:12 AM',0),
(5,2,'Muy Bueno','May 15 2015 1:23 AM',4),
(10,9,'Muy malo','May 5 2016 15:55 PM',0),
(5,4,'Malo','May 24 2016 16:44 PM',1),
(5,9,'Muy Bueno','Jun 18 2015 17:41 PM',4),
(10,9,'Malo','Nov 11 2016 20:14 PM',1),
(7,4,'Bueno','Jun 7 2015 5:24 AM',3),
(2,22,'Muy malo','Aug 16 2017 21:32 PM',0),
(3,13,'Malo','Oct 24 2016 19:46 PM',1),
(4,13,'Muy Bueno','Aug 5 2015 19:36 PM',4),
(8,11,'Malo','Jul 22 2015 3:59 AM',1),
(8,9,'Regular','Jul 3 2015 5:39 AM',2),
(7,23,'Regular','Jun 11 2016 17:30 PM',2),
(2,15,'Muy malo','Sep 3 2017 16:37 PM',0),
(4,19,'Muy malo','Jan 11 2017 2:2 AM',0),
(7,22,'Muy Bueno','Jul 17 2016 12:8 PM',4),
(7,11,'Muy malo','Feb 13 2015 21:42 PM',0),
(7,6,'Muy Bueno','Aug 28 2016 14:44 PM',4),
(10,19,'Muy malo','Nov 29 2017 20:33 PM',0),
(2,8,'Muy malo','Nov 1 2017 14:51 PM',0),
(1,22,'Muy malo','Feb 17 2016 7:54 AM',0),
(3,15,'Regular','Feb 24 2015 10:47 AM',2),
(8,1,'Regular','Jan 25 2017 22:22 PM',2),
(10,2,'Regular','Jul 8 2017 2:39 AM',2),
(1,4,'Muy Bueno','Aug 18 2017 10:34 AM',4),
(1,6,'Bueno','Jun 7 2016 20:14 PM',3),
(5,4,'Muy Bueno','Feb 21 2015 10:26 AM',4),
(10,4,'Muy malo','Jan 1 2017 7:45 AM',0),
(9,7,'Bueno','Feb 18 2015 4:29 AM',3),
(7,19,'Malo','Oct 29 2015 8:40 AM',1),
(3,8,'Malo','Feb 12 2015 11:22 AM',1),
(9,18,'Muy Bueno','Feb 22 2015 19:18 PM',4),
(1,5,'Muy Bueno','Sep 21 2017 9:32 AM',4),
(5,4,'Malo','Jan 10 2016 22:34 PM',1),
(9,23,'Malo','Nov 21 2017 12:16 PM',1),
(3,21,'Malo','Sep 27 2015 14:23 PM',1),
(5,10,'Muy Bueno','Jul 29 2017 10:36 AM',4),
(8,17,'Regular','Sep 14 2015 8:20 AM',2),
(9,8,'Muy Bueno','Nov 8 2015 4:48 AM',4),
(9,9,'Muy Bueno','Feb 21 2016 6:2 AM',4),
(5,23,'Regular','Jun 19 2017 21:43 PM',2),
(9,2,'Bueno','May 15 2016 9:31 AM',3),
(7,3,'Regular','Jan 26 2017 4:34 AM',2),
(6,3,'Malo','Mar 8 2017 11:40 AM',1),
(5,20,'Regular','Oct 9 2015 19:39 PM',2),
(10,19,'Muy malo','Oct 4 2016 17:22 PM',0),
(2,11,'Regular','Apr 30 2016 10:35 AM',2),
(3,12,'Muy Bueno','Oct 25 2016 2:46 AM',4),
(6,8,'Malo','Nov 29 2015 0:26 AM',1),
(5,12,'Muy malo','Nov 24 2016 17:31 PM',0),
(1,19,'Muy Bueno','Sep 2 2017 16:12 PM',4),
(1,2,'Malo','Mar 2 2015 18:42 PM',1),
(6,24,'Bueno','Jan 22 2017 13:24 PM',3),
(6,3,'Muy Bueno','Oct 18 2015 11:5 AM',4),
(1,18,'Regular','Aug 14 2016 6:3 AM',2),
(1,15,'Muy malo','Aug 11 2015 11:51 AM',0),
(3,12,'Muy Bueno','Jul 18 2016 20:25 PM',4),
(9,19,'Regular','Sep 18 2015 11:49 AM',2),
(1,4,'Regular','Nov 24 2016 18:30 PM',2),
(6,5,'Bueno','Sep 5 2017 2:3 AM',3),
(6,1,'Malo','May 20 2016 13:13 PM',1),
(7,6,'Bueno','Oct 28 2016 2:47 AM',3),
(4,17,'Bueno','Feb 4 2015 16:10 PM',3),
(6,19,'Regular','Jul 26 2015 21:10 PM',2),
(6,20,'Regular','Jul 8 2017 19:13 PM',2),
(9,7,'Muy Bueno','Aug 31 2015 11:55 AM',4),
(4,6,'Regular','Jul 12 2015 11:41 AM',2),
(7,22,'Muy malo','Oct 24 2016 0:59 AM',0),
(7,18,'Regular','Mar 22 2016 5:21 AM',2),
(10,21,'Bueno','Jun 9 2016 17:10 PM',3),
(10,1,'Regular','Feb 25 2015 14:53 PM',2),
(7,13,'Muy malo','Jul 13 2017 6:26 AM',0),
(2,13,'Bueno','Nov 2 2015 7:23 AM',3),
(5,23,'Regular','Jan 11 2017 11:41 AM',2),
(10,15,'Muy Bueno','Jul 19 2015 6:4 AM',4),
(3,10,'Bueno','Jan 3 2015 22:50 PM',3),
(2,1,'Muy Bueno','Aug 5 2016 18:15 PM',4),
(8,21,'Malo','May 18 2015 6:24 AM',1),
(2,9,'Bueno','Mar 6 2015 17:29 PM',3),
(3,13,'Bueno','Sep 14 2017 17:37 PM',3),
(5,14,'Muy Bueno','Nov 1 2016 20:48 PM',4),
(1,1,'Muy malo','May 30 2016 14:45 PM',0),
(4,4,'Muy Bueno','Oct 13 2016 21:19 PM',4),
(4,16,'Malo','Oct 25 2015 7:11 AM',1),
(10,23,'Regular','May 13 2017 0:47 AM',2),
(6,17,'Bueno','Jan 17 2015 4:38 AM',3),
(2,4,'Muy Bueno','Nov 28 2017 19:39 PM',4),
(3,11,'Muy Bueno','Aug 3 2016 2:4 AM',4),
(1,7,'Regular','Apr 18 2015 9:57 AM',2),
(6,1,'Muy Bueno','Mar 14 2016 2:45 AM',4),
(2,2,'Regular','Jun 6 2017 19:48 PM',2),
(7,18,'Malo','Oct 19 2015 10:14 AM',1),
(7,10,'Regular','Jul 17 2015 10:37 AM',2),
(10,13,'Malo','Jul 24 2015 16:6 PM',1),
(4,10,'Bueno','Jul 23 2017 15:57 PM',3),
(8,20,'Regular','Sep 20 2015 14:49 PM',2),
(3,6,'Muy malo','Jul 5 2016 20:14 PM',0),
(2,11,'Muy Bueno','Jan 10 2017 10:38 AM',4),
(9,7,'Regular','Apr 16 2015 20:51 PM',2),
(5,4,'Regular','Sep 21 2016 15:1 PM',2),
(10,21,'Muy Bueno','May 27 2016 10:24 AM',4),
(1,20,'Muy Bueno','Oct 27 2017 21:27 PM',4),
(7,8,'Muy malo','Aug 21 2015 19:3 PM',0),
(7,13,'Muy malo','Feb 11 2015 22:2 PM',0),
(2,3,'Regular','May 18 2015 16:7 PM',2),
(4,11,'Bueno','Aug 17 2015 9:53 AM',3),
(1,16,'Bueno','Nov 16 2015 9:1 AM',3),
(1,4,'Regular','Apr 10 2017 9:43 AM',2),
(4,7,'Muy Bueno','Jan 17 2017 2:6 AM',4),
(8,5,'Muy malo','Jun 9 2015 12:8 PM',0),
(10,9,'Muy malo','Apr 21 2017 5:55 AM',0),
(2,24,'Regular','Jul 23 2015 10:2 AM',2),
(4,7,'Malo','Jun 26 2016 9:35 AM',1),
(5,18,'Regular','Aug 2 2015 2:53 AM',2),
(4,8,'Muy Bueno','Apr 18 2017 6:20 AM',4),
(6,19,'Muy malo','Nov 13 2017 0:57 AM',0),
(2,18,'Muy Bueno','Jun 28 2015 6:15 AM',4),
(4,5,'Bueno','Jun 19 2017 6:30 AM',3),
(6,20,'Regular','May 4 2016 13:18 PM',2),
(4,15,'Malo','Mar 4 2015 20:44 PM',1),
(10,19,'Bueno','Jun 12 2015 1:21 AM',3),
(9,8,'Muy malo','Feb 8 2017 21:6 PM',0),
(4,21,'Muy Bueno','Jul 21 2017 2:40 AM',4),
(9,13,'Muy malo','May 31 2017 2:5 AM',0),
(8,9,'Regular','Feb 6 2016 18:16 PM',2),
(4,23,'Malo','May 8 2017 11:13 AM',1),
(1,15,'Muy malo','Sep 9 2017 21:44 PM',0),
(7,17,'Malo','Feb 10 2015 18:56 PM',1),
(3,23,'Bueno','Oct 26 2016 20:7 PM',3),
(8,9,'Bueno','Oct 22 2016 14:27 PM',3),
(8,21,'Regular','Aug 2 2015 20:57 PM',2),
(9,7,'Muy malo','Sep 21 2017 7:21 AM',0),
(5,24,'Bueno','Sep 29 2015 6:42 AM',3),
(7,6,'Muy Bueno','Jun 26 2016 13:31 PM',4),
(6,4,'Muy malo','Sep 29 2015 6:6 AM',0),
(6,7,'Malo','May 2 2015 6:33 AM',1),
(8,7,'Muy Bueno','Jan 10 2015 14:49 PM',4),
(9,19,'Regular','Aug 11 2017 10:31 AM',2),
(6,18,'Muy Bueno','Jul 22 2017 12:30 PM',4),
(4,21,'Malo','Feb 12 2017 9:22 AM',1),
(6,24,'Malo','Jan 20 2015 5:33 AM',1),
(4,23,'Malo','May 29 2017 19:27 PM',1),
(4,2,'Regular','Apr 30 2015 20:41 PM',2),
(9,18,'Regular','Sep 14 2016 2:51 AM',2),
(3,6,'Muy Bueno','Feb 5 2015 9:5 AM',4),
(6,5,'Regular','May 10 2016 21:54 PM',2),
(6,11,'Bueno','Jul 28 2017 10:12 AM',3),
(3,24,'Bueno','Aug 23 2015 11:14 AM',3),
(4,1,'Bueno','Jul 4 2017 3:31 AM',3),
(2,3,'Muy Bueno','Oct 10 2016 9:11 AM',4),
(3,23,'Muy malo','Apr 21 2015 5:36 AM',0),
(4,20,'Muy malo','Jul 22 2017 17:53 PM',0),
(8,24,'Bueno','Oct 15 2016 19:15 PM',3),
(5,16,'Bueno','Aug 10 2016 3:27 AM',3),
(3,13,'Malo','Apr 22 2015 19:54 PM',1),
(1,24,'Regular','Jul 16 2015 15:54 PM',2),
(5,21,'Bueno','Sep 6 2015 11:16 AM',3),
(8,12,'Muy Bueno','Apr 24 2017 12:19 PM',4),
(5,8,'Muy Bueno','Sep 17 2015 22:2 PM',4),
(6,5,'Regular','Jan 15 2015 9:36 AM',2),
(7,2,'Bueno','Feb 12 2015 0:53 AM',3),
(5,12,'Regular','Sep 9 2017 16:33 PM',2),
(8,13,'Malo','Jul 19 2017 14:41 PM',1),
(10,16,'Regular','Nov 12 2015 10:28 AM',2),
(3,6,'Muy malo','Feb 5 2016 17:45 PM',0),
(6,13,'Muy malo','Mar 16 2015 9:7 AM',0),
(8,3,'Muy malo','Feb 18 2015 1:28 AM',0),
(8,8,'Muy malo','Sep 16 2015 1:14 AM',0),
(10,11,'Malo','Nov 1 2015 12:56 PM',1),
(5,20,'Muy Bueno','Feb 22 2016 14:24 PM',4),
(10,2,'Bueno','Jan 27 2015 11:5 AM',3),
(6,22,'Malo','Sep 10 2016 14:21 PM',1),
(5,10,'Regular','Jul 10 2016 10:29 AM',2),
(4,24,'Muy malo','May 19 2017 4:45 AM',0),
(4,18,'Muy malo','Oct 4 2017 15:2 PM',0),
(10,8,'Muy malo','Sep 4 2016 12:32 PM',0),
(6,1,'Muy malo','Feb 14 2017 11:3 AM',0),
(7,19,'Muy malo','May 20 2015 14:18 PM',0),
(8,11,'Bueno','Oct 7 2017 22:21 PM',3),
(1,14,'Muy Bueno','Jan 4 2015 4:41 AM',4),
(9,4,'Regular','Nov 16 2016 1:49 AM',2),
(4,20,'Muy malo','Oct 22 2016 6:45 AM',0),
(2,15,'Regular','Feb 25 2017 9:44 AM',2),
(4,14,'Regular','Mar 23 2016 8:4 AM',2),
(3,15,'Muy malo','Jan 28 2017 16:49 PM',0),
(7,21,'Bueno','Feb 10 2016 19:56 PM',3),
(5,14,'Malo','Oct 11 2016 10:51 AM',1),
(4,10,'Bueno','Jul 31 2016 14:34 PM',3),
(7,12,'Muy malo','Oct 21 2017 7:13 AM',0),
(4,23,'Regular','Jul 12 2016 22:6 PM',2),
(4,6,'Regular','Sep 30 2016 4:51 AM',2),
(8,17,'Muy malo','Nov 13 2017 2:30 AM',0),
(10,15,'Regular','Jun 21 2015 10:8 AM',2),
(10,2,'Malo','Jun 23 2016 3:42 AM',1),
(7,14,'Bueno','Oct 12 2017 1:16 AM',3),
(1,12,'Malo','Jun 1 2016 14:19 PM',1),
(9,9,'Bueno','Apr 9 2017 22:31 PM',3),
(8,23,'Muy malo','Sep 24 2017 20:33 PM',0),
(2,16,'Muy malo','Oct 9 2017 6:2 AM',0),
(10,3,'Malo','Jun 15 2016 22:53 PM',1)

INSERT INTO INSIGNIA
VALUES ('Fotogenico','Hacer check-in en 3 lugares diferentes con etiqueta "photobot"'),
('Navegante','Hacer check-in en 3 lugares diferentes con la etiqueta "canoa"'),
('La Voz','Hacer check-in en un mes en lugares de categoría "karaoke bar"(no necesariamente diferentes)'),
('Melomano','Hacer 5 check-ins en lugares de categoría "Tienda de Música"'),
('Cinéfilo','Hacer 15 check-ins en cines'),
('Catador De Comida','Hacer 10 check-ins en restaurantes diferentes'),
('Trabajador','Hacer 200 check-ins en lugares de la categoría "Oficinas"')

select * from INSIGNIA


INSERT INTO ETIQUETA
VALUES	('PhotoBoot'),
('Canoa'),
('Comida'), 
('Tripiante'),
('Striptis'),
('Playa'),
('Caguamas'),
('Tortugas'),
('Música en vivo'),
('Familiar')

select * from [LUGAR-ETIQUETA]



INSERT INTO [LUGAR-ETIQUETA]
VALUES (9,8),
(8,1),
(5,2),
(3,8),
(1,1),
(1,3),
(2,6),
(8,8),
(2,3),
(3,4),
(6,9),
(9,6)




INSERT INTO [ESTATUS-SOLICITUD]
VALUES ('Aceptada'),
('Rechazada'),
('En espera')


INSERT INTO [USUARIO-SOLICITUD-USUARIO]
VALUES (1,2,1),
(3,4,1),
(5,6,1),
(7,8,1),
(9,10,1),
(9,3,2),
(7,5,2),
(4,7,2),
(6,3,2),
(5,6,3)


INSERT INTO [USUARIO-AMIGO-USUARIO]
VALUES (1,2),
(3,4),
(5,6),
(7,8),
(9,10),
(2,1),
(4,3),
(6,5),
(8,6),
(10,9)


INSERT INTO [USUARIO-INTERESES]
VALUES (1,'Futbol'),
(2,'Basquetbol'),
(3,'Beisbol'),
(4,'Softbol'),
(5,'Natación'),
(6,'MMA'),
(7,'Box'),
(8,'Futbol'),
(9,'Box'),
(10,'Beisbol')


 
insert into [USUARIO-INSIGNIA]
values (10,5, '2018-10-20'),
(5,5, '2018-10-21'),
(1,6, '2018-10-20'),
 (2,6, '2018-09-20'),
 (3,6, '2018-10-15'),
 (7,4, '2018-10-13'),
 (9,4, '2018-10-12'),




