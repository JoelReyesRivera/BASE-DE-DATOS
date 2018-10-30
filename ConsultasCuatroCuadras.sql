------Consultas Cuatro Cuadras------------

-----CONSULTAS TRIVIALES-----

----1 Obtener la suma de los usuairo Mujeres de los usuarios

select count(*) 
from [USUARIO] where [Genero] = 0

--2 Obtener todos los usuarios de la CDMX
select [] from USUARIO

--3 Obtener todos los lugares de Parral

--4 Obtener todas las solicitudes pendientes

--5 Obtener todas las reviews con etiqueta 'Muy malo'

--6 Obtener a todos los usuarios que tienen la insignia 'Catador de Comida'

--7 Obtener todas las solicitudes rechazadas

--8 Obtener los usuarios que tengan como amigo a 'joelito'

--9 Obtener el nombre de los usuarios que hayan hecho check-in en 'Farm Burger'

--10 Obtener Usuarios que sean de Mazatlán

--11 Obtener amigos que tengan la misma edad

--12 Obtener el promedio de edad de todos los usuarios

--13 Obtener los lugares con la etiqueta 'Playa'

--14 Obtener usuarios con insignia 'Melomano'

--15 Obtener usuarios que su edad es menor a 20 anos

--16 Obtener usuarios que han valorado con 4

--17 Obtener las etiquetas de los lugares de la categoria 'Restaurant'

--18 Obtener los lugares de las ciudades

--19 Obtener los usuarios con el interés en 'Beisbol'

--20 Obtener todos los usuarios que han visitado 'Burguer King' o 'Kiwi' o 'MixUp'

--21 Obtener usuarios de 'Culiacan' y 'Navolato'

--22 Obtener el promedio de lugares visitados por usuario

--23 Obtener el promedio de edades

--24 Obtener numero de visitas de todos los lugares (Checar)
select l.[Descripcion], count(*) from [CHECK-IN] ci
join [Lugar] l on ci.[ID-Lugar]=l.[ID]

--25 Obtener todas las fechas y hora de todos los check in hechos

--26 Obtener el usuario con el mayor numero de amigos

--27 Obtener la ciudad con más lugares registrados

--28 Obtener la ciudad con más lugares con etiqueta 'Tortugas'

--29 Obtener el promedio de numero de personas por ciudad

--30 Obtener la ciudad que más usuarios tienen la insginia 'Cinéfilo'





-----CONSULTAS NO TRIVIALES-----

--1 Obtener lista de los lugares con las personas que los han visitado
 

--2 Obtener todas los usuarios que han visitado un mismo lugar que un amigo de ellos
select friends.Usuario1 as amigo1, friends.Usuario2 as amigo2 , l.descripcion  from [check-in] ci1
join Lugar l on ci1.[ID-Lugar]=l.ID
join [USUARIO-AMIGO-USUARIO] friends on friends.Usuario1 = ci1.[ID-Usuario] or friends.Usuario2= ci1.[ID-Usuario]


select count(*) from [CHECK-IN] where [ID-Usuario]=2 and [ID-Lugar]=4





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

--16 Obtener a los usuarios que han valorado un lugar con 0 de valoracion

--17 Obtener el lugar que más frecuentan las mujeres

--18 Obtener el lugar que más frecuentan los hombre o las mujeres mayores de 18

--19 Obtener a los usuarios que han visitado más de 2 ciudades en el último mes

--20 Obtener lugares que tienen como comentario 'Muy bueno' (like %Muy bueno%) pero que no tenga 'Muy malo' ni 'Malo'


--14 Obtener todos los usuarios que han obtenido una insignia con un check in de otra ciudad
