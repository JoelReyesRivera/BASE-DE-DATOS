------Consultas Cuatro Cuadras------------



-----CONSULTAS TRIVIALES-----

----1 Obtener la suma de los usuairo Mujeres de los usuarios
select count(*) 
from [USUARIO] where [Genero] = 0

--2 Obtener todos los usuarios de Culiacan
select users.UserName from USUARIO users 
where users.[Id-Ciudad]=1

--3 Obtener todos los lugares de Parral
select l.Descripcion, l.id_ciudad from LUGAR l
where l.id_ciudad = 6

--4 Obtener todas las solicitudes pendientes
select usu.Usuario1, usu.Usuario2, usu.Estatus as Estatus from [USUARIO-SOLICITUD-USUARIO] usu
where usu.Estatus = 3

--5 Obtener todas las reviews 'Muy malo'
select ci.[ID-Lugar], ci.Comentario  from  [CHECK-IN] ci
where ci.Comentario like '%Muy malo%' 

--6 Obtener el id, nonbre y username de las personas  que tienen la insignia 'Catador de Comida'
select users.ID, users.Nombre, users.UserName from [USUARIO-INSIGNIA] ui
join USUARIO users on users.ID = ui.[ID-Usuario]
where ui.[ID-Insignia] = 6

--7 Obtener todas las solicitudes rechazadas
select usu.Usuario1, usu.Usuario2, usu.Estatus as Estatus from [USUARIO-SOLICITUD-USUARIO] usu
where usu.Estatus = 2

--8 Obtener los checkin 'Joselito'
select distinct users.Nombre, l.Descripcion from [CHECK-IN] ci
join USUARIO users on users.ID =ci.[ID-Usuario]
join LUGAR l on l.ID = ci.[ID-Lugar]
where ci.[ID-Usuario] = 1

--9 Obtener el nombre de los usuarios que hayan hecho check-in en 'Farm Burger'
select users.Nombre as usuario from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
where ci.[ID-Lugar] = 16

--10 Obtener Usuarios que sean de Mazatlán
select users.UserName from USUARIO users 
where users.[Id-Ciudad]=4

--11 Obtener usuarios que hayan hecho chekin en las riberas  y que lo haya calificado con 4   
select users.UserName  from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
where ci.[ID-Lugar] = 1  and ci.Valoracion = 4

--12 Obtener el promedio de edad de todos los usuarios
select AVG(users.edad) from USUARIO users

--13 Obtener los lugares con la etiqueta 'Playa'
select l.Descripcion from [LUGAR-ETIQUETA] lg
join LUGAR l on l.ID = lg.[ID-Lugar]
where lg.[ID-Etiqueta] = 6

--14 Obtener usuarios con insignia 'Melomano'
select users.UserName from [USUARIO-INSIGNIA] ui
join USUARIO users on users.ID = ui.[ID-Usuario]
where ui.[ID-Insignia] = 4

--15 Obtener usuarios que su edad es menor a 20 anos
select users.UserName  from USUARIO users
where users.edad <= 20 

--16 Obtener usuarios que han valorado con 4
select users.UserName from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
where ci.Valoracion = 4

--17 Obtener el nombe de los lugares con la categoria 'Restaurant'
select l.Descripcion  from LUGAR l
where l.[ID-Categoria] = 3

--18 Obtener los lugares de las ciudad de Culacan 
select l.Descripcion from LUGAR l
where l.id_ciudad = 1

--19 Obtener los usuarios con el interés en 'Beisbol'
select users.UserName, ui.Interes as interes from [USUARIO-INTERESES] ui
join USUARIO users on users.ID = ui.[ID-Usuario]
where ui.Interes like '%Beisbol%' 

--20 Obtener todos los usuarios que han visitado 'Burguer King' o 'Kiwi' o 'MixUp'
select distinct users.username as usuario, l.Descripcion as lugar from [CHECK-IN] ci
join USUARIO users on ci.[ID-Usuario]= users.ID
join LUGAR l on ci.[ID-Lugar]= l.ID
where l.Descripcion='Burguer King' or l.Descripcion='Kiwi' or l.Descripcion='MixUp'

--21 Obtener usuarios de 'Culiacan' y 'Navolato'
select users.UserName from USUARIO users
where users.[Id-Ciudad] = 1 or users.[Id-Ciudad] = 2

--22 Obtener los  lugares visitados por usuario 3 y sus numeros de visitas
select l.Descripcion, COUNT(*) visitas from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
join LUGAR l on l.ID = ci.[ID-Lugar]
where users.ID = 3
group by l.Descripcion

--23 Obtener el promedio de edades
select AVG(users.edad) as edad from USUARIO users

--24 Obtener numero de visitas de todos los lugares (Checar)
select l.[Descripcion], count(*)  as Visitas from [CHECK-IN] ci
join [Lugar] l on ci.[ID-Lugar]=l.[ID]
group by l.Descripcion

--25 Obtener todas las fechas y hora de todos los check in hechos
select l.Descripcion, ci.[Fecha y Hora] from [CHECK-IN] ci
join LUGAR l on l.ID = ci.[ID-Lugar]

--26 Obtener nombres de usuarios con interes en  Futbol y Beisbol
select  users.Nombre from [USUARIO-INTERESES] ui
join USUARIO users on users.ID = ui.[ID-Usuario]
where ui.Interes like '%Futbol%' or ui.Interes like '%Beisbol%'

--27 Obtener los checkin del usuario 5
select l.Descripcion from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
join LUGAR l on l.ID = ci.[ID-Lugar]
where users.ID = 3

--28 Obtener lugares con etiqueta 'Tortugas'
select l.Descripcion from  [LUGAR-ETIQUETA] le
join LUGAR l on l.ID = le.[ID-Lugar]
where le.[ID-Etiqueta] = 8

--29 Obtener los comentarios y el nombre de usuarios,  su edad de los checkin con valoracion en 0
select distinct  users.Nombre, users.edad, ci.Comentario, ci.Valoracion from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
where ci.Valoracion = 0
--30 Obtener las personas  y la ciudad en la que pertenecen que tienen la insginia 'Cinéfilo'
select users.Nombre, c.Descripcion from [USUARIO-INSIGNIA] ui
join USUARIO users on users.ID = ui.[ID-Usuario]
join CIUDAD c on c.ID =users.[Id-Ciudad]
where ui.[ID-Insignia]=5




-----CONSULTAS NO TRIVIALES-----

--1 Obtener lista de los lugares con las personas que los han visitado
select l.Descripcion, users.UserName from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
join LUGAR l on l.ID = ci.[ID-Lugar]
group by l.Descripcion, users.UserName
 

--2 Obtener todas los usuarios que han visitado un lugar con la etiqueta 'PhotoBoot'
select distinct users.Nombre
 from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
join [LUGAR-ETIQUETA] le on le.[ID-Lugar] = ci.[ID-Lugar]
where le.[ID-Etiqueta] = 1

--3 obtener todos los lugares con la etiqueta Canoa
select l.[Descripcion] from LUGAR l
join [LUGAR-ETIQUETA] le on le.[ID-Lugar] = l.[ID]
join ETIQUETA e on  le.[ID-Etiqueta] = e.[ID]
where e.[Descripcion] = 'Canoa'

--4 obtener todos los lugares con la categoria Estadio o cine
select l.Descripcion from LUGAR l
join CATEGORIA c on c.[ID] = l.[ID-Categoria]
where c.[Descripcion]='Cine' or c.[Descripcion]='Estadio'

--5 Obtener todas las solicitudes de amistad con usuarios de diferentes ciudades
select usu.*, u1.UserName as user1, c1.Descripcion as ciudad1, u2.UserName as user2, c2.Descripcion as ciudad2 from [USUARIO-SOLICITUD-USUARIO] usu
join [USUARIO] u1 on usu.Usuario1=u1.ID
join [USUARIO] u2 on  usu.Usuario2=u2.ID
join [CIUDAD] c1 on c1.ID = u1.[Id-Ciudad]
join [CIUDAD] c2 on c2.ID = u2.[Id-Ciudad]
where u1.[Id-Ciudad] <> u2.[Id-Ciudad]

--6 Obtener los 3 lugares más visitados por personas con el rango de edad de 18-25

select top 3 count(*) as visits, ci.[ID-Lugar] from [CHECK-IN] ci
join [USUARIO] users on ci.[ID-Usuario] = users.ID
where users.edad>=18 and users.edad<26
group by ci.[ID-Lugar]
order by visits desc


--7 Obtener todos los intereses y cuantas personas lo tienen en cada ciudad
select count(*) as interesados, ui.Interes, c.Descripcion from [USUARIO-INTERESES] ui
join [USUARIO] users on ui.[ID-Usuario]=users.ID
join [CIUDAD] c on c.ID=users.[Id-Ciudad]
group by c.Descripcion, ui.Interes
order by interesados desc, interes asc 


--8 Obtener a los  10 usuarios más rechazados por usuarios
select count(*) as rechazado, users.UserName from [USUARIO-SOLICITUD-USUARIO] usu
join [USUARIO] users on usu.Usuario1=users.ID
where usu.Estatus=2 
group by users.UserName
order by rechazado desc

--9 Obtener el lugar más visitado de una ciudad por usuarios extranjeros
select l.descripcion, count(*) as visitados from [CHECK-IN] ci
join [LUGAR] l on ci.[ID-Lugar]= l.ID
join [USUARIO] u on ci.[ID-Usuario] = u.ID
where u.[Id-Ciudad]<> l.id_ciudad
group by l.Descripcion
order by visitados desc

--10 Obtener los lugares que tengan como comentario 'Muy bueno' por usuarios que han tenido 3 o más
--Arreglar esta
select l.descripcion as lugar from [CHECK-IN] ci 
join (
	select users.id from [CHECK-IN] ci
	join [USUARIO] users on ci.[ID-Usuario]= users.id
	group by id
		having (count(*)>3)
 ) aux on ci.[ID-Usuario] in (aux.ID)
join [LUGAR] l on l.ID= ci.[ID-Lugar]
group by l.Descripcion
--11 Obtener usuarios que han hecho check in en 'Sushi factory' o 'Altata' o 'Cinepolis' y las veces que lo han visitado
select users.username as usuario, l.Descripcion as lugar, count(*) as visitados from [CHECK-IN] ci
join USUARIO users on ci.[ID-Usuario]= users.ID
join LUGAR l on ci.[ID-Lugar]= l.ID
where l.Descripcion='Sushi factory' or l.Descripcion='Cinepolis' or l.Descripcion='Altata'
group by users.UserName, l.Descripcion
order by usuario, lugar, visitados desc
--12 Obtener usuarios que han hecho check in solamente en 'Riberas' y 'Carls jr'
select distinct users.username as usuario, l.Descripcion as lugar from [CHECK-IN] ci
join USUARIO users on ci.[ID-Usuario]= users.ID
join LUGAR l on ci.[ID-Lugar]= l.ID
where l.Descripcion='Riberas' and l.Descripcion='Carls jr'
--Checar

--13 Obtener usuarios que han hecho check in en los lugares con el id de categoria 3 y su numero de visitas al lugar
select distinct users.username as username, l.descripcion as lugar, count(*) as visitas from [CHECK-IN] ci 
join Lugar l on l.ID = ci.[ID-Lugar]
join USUARIO users on users.ID=ci.[ID-Usuario]
where [ID-Lugar] in(select ID from lugar where [ID-Categoria]=3)
group by users.UserName, l.Descripcion
order by username, visitas desc, lugar

--14 Obtener la lista de los mejores 3 lugares
select top 3 l.descripcion, count(*) as visitado from [CHECK-IN] ci
join [LUGAR] l on l.ID=ci.[ID-Lugar]
group by l.Descripcion
order by visitado desc

--15 Obtener el promedio de la valoracion de todos los lugares 
select l.descripcion as lugar, sum(ci.valoracion) as suma ,count(*) as votados,avg(ci.Valoracion) as promedio from [CHECK-IN] ci
join [LUGAR] l on l.ID= ci.[ID-Lugar]
group by l.Descripcion

--16 Obtener a los usuarios que han valorado un lugar con 0 de valoracion y mostrar cuantas veces han valorado con 0
select users.UserName as usuario, count (*) as [Valorados en 0] from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
where ci.Valoracion = 0
group by users.UserName

--17 Obtener el lugar que más frecuentan las mujeres con el número de visitas
select top 1 l.Descripcion as Lugar, count (*) as Visitas from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
join LUGAR l on l.ID = ci.[ID-Lugar]
where users.Genero = 0
group by l.Descripcion 
order by Visitas desc

--18 Obtener el lugar que más frecuentan los hombre o las mujeres mayores de 18
select top 1 l.Descripcion as Lugar, count (*) as Visitas from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
join LUGAR l on l.ID = ci.[ID-Lugar]
where users.Genero = 1 or (users.Genero = 0 AND users.edad > 18) 
group by l.Descripcion 
order by Visitas desc

--19 Obtener a los usuarios que han visitado más de 2 veces una ciudad
select distinct users.UserName, c.Descripcion as ciudad, count (*) as Visitados from [CHECK-IN] ci
join USUARIO users on users.ID = ci.[ID-Usuario]
join LUGAR l on l.ID = ci.[ID-Lugar]
join Ciudad c on c.ID= l.id_ciudad
group by users.UserName ,c.Descripcion
having (count(c.Descripcion)>2)


--20 Obtener lugares que tienen como comentario 'Muy bueno' (like %Muy bueno%) pero que no tenga 'Muy malo' ni 'Malo'
select l.Descripcion from [CHECK-IN] ci
join LUGAR l on l.ID = ci.[ID-Lugar]
where ci.Comentario like '%Muy bueno%' 
	and ci.[ID-Lugar] not in (select distinct ci.[ID-Lugar] from [CHECK-IN] ci 
								where ci.Comentario like '%Muy malo%' or ci.Comentario like '%Malo%')

