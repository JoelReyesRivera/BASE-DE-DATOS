use CuatroCuadrasBD

--1--
--Procedimiento almacenado para insertar usuarios--
create proc insertaUsuario(
    @userName VARCHAR(50),
    @nombre VARCHAR(50),
    @genero BIT,
    @edad INT,
    @email VARCHAR(50),
    @contrasena VARCHAR(50),
    @Id_Ciudad SMALLINT
)
as
 INSERT into USUARIO
(UserName, Nombre, Genero, edad, Email, Contrasena, [Id-Ciudad])
VALUES
(@userName, @nombre, @genero, @edad, @email, @contrasena, @Id_Ciudad)

--Probando el procedimiento almacenado
exec insertaUsuario 'caca', 'kelly Angulo', '1', '20', 'anahi@gmail.com', 'paramore', '1'

------------------------------------------------------------------------------------------------------------------------------------------

--2--
--Buscar Usuario por 'username'--
create proc buscarUsuario
@userName VARCHAR(50)
as
select * from USUARIO
where UserName = @userName
go
--Probando el procedimiento almacenado--
exec buscarUsuario 'caca'

----------------------------------------------------------------------------------------------------------------------------------------
--3--
--Procedimiento almacenado para eleminar un usuario--
create proc eliminarUsuario(
    @username VARCHAR(50)
)
AS
delete USUARIO
where UserName = @username

--Probando el procedimiento almacenado--
exec eliminarUsuario 'caca'

----------------------------------------------------------------------------------------------------------------------------------------
--4--
--Procedimiento almacenado para actualizar datos de usuario--
create proc actulizaUsuario(
    @id int,
    @userName VARCHAR(50),
    @nombre VARCHAR(50),
    @genero BIT,
    @edad INT,
    @email VARCHAR(50),
    @contrasena VARCHAR(50),
    @Id_Ciudad SMALLINT  
)
AS

BEGIN
update USUARIO set
UserName = @userName,
Nombre = @nombre,
Genero = @genero,
edad = @edad,
Email = @email,
Contrasena = @contrasena,
[Id-Ciudad] = @Id_Ciudad 
where ID = @id
end

--Probando el procedimiento almacenado--
select * from USUARIO
exec actulizaUsuario 14, 'queliangulo', 'Kelly', '0', '21', 'kellyangulo@hotmail.com', 'caca', '2'

----------------------------------------------------------------------------------------------------------------------------------------
--5-- 
--Procedimiento almacenado para que un usuario haga checkin en un lugar--
create proc checkInUsuario(
    @id_usuario INT, 
    @id_lugar INT,
    @comentario VARCHAR(50),
    @fecha DATETIME,
    @valoracion TINYINT
)
AS
INSERT INTO [CHECK-IN]
([ID-Usuario], [ID-Lugar], Comentario, [Fecha y Hora], Valoracion)
VALUES
(@id_usuario, @id_lugar, @comentario, @fecha, @valoracion)

--Probando procedimiento almacenado--
EXEC checkInUsuario '14', '3', 'La neta muy rico todo', 'May 15 2015 2:23 PM', '4'

select * from [CHECK-IN]