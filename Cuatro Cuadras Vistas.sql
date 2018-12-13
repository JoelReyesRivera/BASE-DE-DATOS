--VISTAS 4 CUADRAS--
Use CuatroCuadrasBD
go

--VISTA USUARIO--
create view Usuarios 
as SELECT U.ID,U.Nombre,U.UserName,U.Genero,U.Email,C.Descripcion AS Ciudad FROM USUARIO U INNER JOIN CIUDAD C ON U.[Id-Ciudad]=C.ID

GO
SELECT * FROM Usuarios
GO

--VISTA LUGAR--
create view Lugares
as Select L.ID,L.Latitud,L.Longitud,L.Descripcion, C.Descripcion as Categoria, CIU.Descripcion as Ciudad from LUGAR L
INNER JOIN CATEGORIA C ON C.ID=L.[ID-Categoria]
INNER JOIN CIUDAD CIU ON CIU.ID=L.id_ciudad

--VISTA CHECK-IN--
create view [Check-in's]
as select U.Nombre AS Usuario,L.Descripcion as Lugar,CI.Comentario,CI.[Fecha y Hora],CI.Valoracion from [CHECK-IN] CI INNER JOIN USUARIO U ON CI.[ID-Usuario]=U.ID
INNER JOIN LUGAR L ON L.ID=CI.[ID-Lugar]

--VISTA AMIGOS--
create view Amigos
as select U1.UserName AS Usuario1, U2.UserName as Usuario2 from [USUARIO-AMIGO-USUARIO] UAU
inner join USUARIO U1 ON U1.ID=UAU.Usuario1
inner join USUARIO U2 ON U2.ID=UAU.Usuario2

--VISTA INSIGNIAS--
create view [Insigias-Usuarios]
as select U.UserName as Usuario,I.Nombre as Insignia,i.Descripcion AS DescripcionInsignia,UI.Fecha from [USUARIO-INSIGNIA] UI
INNER JOIN INSIGNIA I ON I.ID=UI.[ID-Insignia]
INNER JOIN USUARIO U ON U.ID=UI.[ID-Usuario]

--VISTA SOLICITUDES--
create view Solicitudes 
as select U1.UserName as Usuario1,U2.UserName as Usuario2,ES.Descripcion AS Estatus from [USUARIO-SOLICITUD-USUARIO] USU INNER JOIN USUARIO U1 ON U1.ID=USU.Usuario1
INNER JOIN USUARIO U2 ON U2.ID=USU.Usuario2
INNER JOIN [ESTATUS-SOLICITUD] ES ON ES.ID=USU.Estatus
