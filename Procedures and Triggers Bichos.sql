use BICHOS
--PROC 1
--INSERTAR LOS BICHOS QUE SE UTILIZARON EN EL COMBATE
create proc insertBichosCombate(
@idJugador int,
@idBicho1 int,
@idBicho2 int,
@idBicho3 int,
@idCombate smallint
)
as insert into [USUARIO-BICHO-COMBATE]
VALUES (@idJugador,@idBicho1,@idBicho2,@idBicho3,@idCombate)

--PROC 2
--INSERTAR UN REGISTRO DE RONDA
create proc insertRonda (
@idBichoUsuario1 int,
@idBichoUsuario2 int,
@combate smallint,
@numeroRonda smallint
)
as insert into RONDA
VALUES(@idBichoUsuario1,@idBichoUsuario2,@combate,@numeroRonda)

--PROC 3
--AUMENTAR EN 20 LA EXPERIENCIA DE UN BICHO
create proc aumentarExperiencia(
@idBicho int
)
AS BEGIN 
UPDATE BICHO SET 
Experiencia=Experiencia+20 where ID=@idBicho END

--PROC 4
--INSERTAR LOS BICHOS Y SUS RESPECTIVOS ATAQUES EN UNA RONDA
create proc insertAtaqueRonda(
@ataqueBicho1 int,
@ataqueBicho2 int,
@idRonda int
)
as INSERT INTO [RONDA-ATAQUE-BICHO] 
VALUES (@ataqueBicho1,@ataqueBicho2,@idRonda)

--PROC 5
--INSERTAR UN COMBATE Y TODO LO QUE CONLLEVA
create proc insertCombate
(
@idJugador1 int,
@idJugador2 int,
@fecha datetime,
@idGanador smallint,
@idBicho1Jugador1 int,
@idBicho2Jugador1 int,
@idBicho3Jugador1 int,
@idBicho1Jugador2 int,
@idBicho2Jugador2 int,
@idBicho3Jugador2 int,
@idAtaqueBicho1Jugador1 int,
@idAtaqueBicho2Jugador1 int,
@idAtaqueBicho3Jugador1 int,
@idAtaqueBicho1Jugador2 int,
@idAtaqueBicho2Jugador2 int,
@idAtaqueBicho3Jugador2 int
)
as insert into COMBATE
VALUES (@idJugador1,@idJugador2,@fecha,@idGanador)
declare @idCombate smallint, @idRonda int
set @idCombate = (select top 1 id from COMBATE order by id desc)
set @idRonda = (select top 1 id from RONDA order by id desc)
exec insertBichosCombate @idJugador1,@idBicho1Jugador1,@idBicho2Jugador1,@idBicho3Jugador1,@idCombate
exec insertBichosCombate @idJugador2,@idBicho1Jugador2,@idBicho2Jugador2,@idBicho3Jugador2,@idCombate
exec aumentarExperiencia @idBicho1Jugador1
exec aumentarExperiencia @idBicho2Jugador1
exec aumentarExperiencia @idBicho3Jugador1
exec aumentarExperiencia @idBicho1Jugador2
exec aumentarExperiencia @idBicho2Jugador2
exec aumentarExperiencia @idBicho3Jugador2
exec insertRonda @idBicho1Jugador1,@idBicho1Jugador2,@idCombate,1
exec insertRonda @idBicho2Jugador1,@idBicho2Jugador2,@idCombate,2
exec insertRonda @idBicho3Jugador1,@idBicho3Jugador2,@idCombate,3
set @idRonda = @idRonda+ 1
exec insertAtaqueRonda @idAtaqueBicho1Jugador1, @idAtaqueBicho1Jugador2 ,@idRonda
set @idRonda = @idRonda+ 1
exec insertAtaqueRonda @idAtaqueBicho2Jugador1, @idAtaqueBicho2Jugador2,@idRonda
set @idRonda = @idRonda+ 1
exec insertAtaqueRonda @idAtaqueBicho3Jugador1, @idAtaqueBicho3Jugador2,@idRonda

exec insertCombate 1,2,'Dec 23 2015 23:00 PM',1,1,11,21,2,12,22,1,1,1,2,2,2

SELECT * FROM COMBATE
SELECT * FROM RONDA
SELECT * FROM [RONDA-ATAQUE-BICHO]