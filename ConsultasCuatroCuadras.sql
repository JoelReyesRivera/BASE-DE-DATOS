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


--2 Obtener todas los usuarios que han visitado un mismo lugar que un amigo de ellos en menos de un mes

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

--6 Obtener los 3 lugares más visitados por personas con el rango de edad de 18-25

--7 Obtener mayor interes que tienen los usuarios de cada estado

--8 Obtener a los usuarios más rechazados por usuarios de otros estados

--9 Obtener el lugar más visitado de una ciudad por usuarios extranjeros

--10 Obtener los lugares que tengan como comentario 'Muy bueno' por usuarios que han tenido 3 o más comentarios en el mes

--11 Obtener usuarios que han hecho check in en 'Sushi factory' o 'Altata' o 'Cinepolis' en el mes de mayo de este año

--12 Obtener usuarios que han hecho check in solamente en 'Riberas' y 'Carls jr'

--13 Obtener usuarios que han hecho check in en todos los lugares con el id de categoria 3

--14 Obtener todos los usuarios que han obtenido una insignia con un check in de otra ciudad

--15 Obtener el promedio de la valoracion de todos los lugares en los últimos 3 meses

--16 Obtener a los usuarios que han valorado un lugar con 0 de valoracion

--17 Obtener el lugar que más frecuentan las mujeres

--18 Obtener el lugar que más frecuentan los hombre o las mujeres mayores de 18

--19 Obtener a los usuarios que han visitado más de 2 ciudades en el último mes

--20 Obtener lugares que tienen como comentario 'Muy bueno' (like %Muy bueno%) pero que no tenga 'Muy malo' ni 'Malo'

--21 Obtener la lista de los mejores 3 lugares
