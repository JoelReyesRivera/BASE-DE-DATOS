------Consultas Cuatro Cuadras------------

----1 Obtener la suma de los usuairo Mujeres de los usuarios

select count(*) 
from [USUARIO] where [Genero] = 0

--2 obtener todos los lugares con la etiqueta Canoa
select l.[Descripcion] from LUGAR l
join [LUGAR-ETIQUETA] le on le.[ID-Lugar] = l.[ID]
join ETIQUETA e on  le.[ID-Etiqueta] = e.[ID]
where e.[Descripcion] = 'Canoa'

select l.Descripcion from LUGAR l
join CATEGORIA c on c.[ID] = l.[ID-Categoria]
where c.[Descripcion]='Cine' or c.[Descripcion]='Estadio'
