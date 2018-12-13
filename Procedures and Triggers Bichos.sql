<<<<<<< HEAD
use BICHOS
--PROC 1
--INSERTAR LOS BICHOS QUE SE UTILIZARON EN EL COMBATE
GO
create proc insertBichosCombate(
@idJugador int,
@idBicho1 int,
@idBicho2 int,
@idBicho3 int,
@idCombate smallint
)
as insert into [USUARIO-BICHO-COMBATE]
VALUES (@idJugador,@idBicho1,@idBicho2,@idBicho3,@idCombate)
GO
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
GO
--PROC 3
--AUMENTAR EN 20 LA EXPERIENCIA DE UN BICHO
create proc aumentarExperiencia(
@idBicho int
)
AS BEGIN 
UPDATE BICHO SET 
Experiencia=Experiencia+20 where ID=@idBicho END
GO
--PROC 4
--INSERTAR LOS BICHOS Y SUS RESPECTIVOS ATAQUES EN UNA RONDA
create proc insertAtaqueRonda(
@ataqueBicho1 int,
@ataqueBicho2 int,
@idRonda int
)
as INSERT INTO [RONDA-ATAQUE-BICHO] 
VALUES (@ataqueBicho1,@ataqueBicho2,@idRonda)
GO
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
GO
--PROC 6
--ACTUALIZAR PROPIETARIO DEL BICHO
create proc actualizarPropietario(
@idBicho int,
@idPropietarioNuevo int
)
as UPDATE BICHO SET Propietario =@idPropietarioNuevo
WHERE ID=@idBicho 
GO
--PROC 7
--INSERT INTERCAMBIO
create proc insertIntercambio (
@idUsuario1 int,
@idUsuario2 int,
@idBichoUsuario1 int,
@idBichoUsuario2 int,
@fecha datetime
)
as INSERT INTO INTERCAMBIO
VALUES (@idUsuario1,@idUsuario2,@idBichoUsuario1,@idBichoUsuario2,@fecha)
exec actualizarPropietario @idBichoUsuario1,@idUsuario2
exec actualizarPropietario @idBichoUsuario2,@idUsuario1
GO

--PRUEBA
--exec insertIntercambio 1,2,1,2,'Sep  2 2008 11:01AM'
--exec insertCombate 1,2,'Dec 23 2015 23:00 PM',1,1,11,21,2,12,22,1,1,1,2,2,2


SELECT * FROM COMBATE
SELECT * FROM RONDA
SELECT * FROM [RONDA-ATAQUE-BICHO]

--------------------------------TRIGGERS--------------------------------

--1.Trigger para aumentar 20 a la experiencia de los bichos participantes en un combate
GO
create trigger ExperienciaCombate on [USUARIO-BICHO-COMBATE] for insert
as  
	declare @IDBicho1 int
	declare @IDBicho2 int
	declare @IDBicho3 int

	SELECT @IDBicho1=[ID-Bicho1],@IDBicho2=[ID-Bicho2], @IDBicho3=[ID-Bicho3] FROM inserted

	exec aumentarExperiencia @IDBicho1
	exec aumentarExperiencia @IDBicho2
	exec aumentarExperiencia @IDBicho3

GO

--2.Trigger para aumentar 30 a la experiencia de los bichos del usuario ganador en un combate

create trigger ExperienciaGanador on COMBATE for insert
as
	declare @IDBicho1 int
	declare @IDBicho2 int
	declare @IDBicho3 int
	declare @Ganador int

	SELECT @IDBicho1=US.[ID-Bicho1], @IDBicho2=US.[ID-Bicho2], @IDBicho3=US.[ID-Bicho3],@Ganador=I.Ganador FROM INSERTED I 
	INNER JOIN [USUARIO-BICHO-COMBATE] US ON I.ID=US.[ID-Combate]

	IF(SELECT ID FROM BICHO WHERE @Ganador=Propietario AND @IDBicho1=ID) = (@IDBicho1)
		UPDATE BICHO SET Experiencia=Experiencia+30 where ID=@IDBicho1
	ELSE 
		PRINT 'El bicho no era perteneciente al usuario ganador'

	IF(SELECT ID FROM BICHO WHERE @Ganador=Propietario AND @IDBicho1=ID) = (@IDBicho2)
		UPDATE BICHO SET Experiencia=Experiencia+30 where ID=@IDBicho2
	ELSE 
		PRINT 'El bicho no era perteneciente al usuario ganador'

	IF(SELECT ID FROM BICHO WHERE @Ganador=Propietario AND @IDBicho1=ID) = (@IDBicho3)
		UPDATE BICHO SET Experiencia=Experiencia+30 where ID=@IDBicho3
	ELSE 
		PRINT 'El bicho no era perteneciente al usuario ganador'

GO

--3.Trigger para cambiar a los nuevos dueños corespendientes cada que haya un intercambio
create trigger IntercambioBichos on INTERCAMBIO for insert
as
	declare @Usuario1 int
	declare @Usuario2 int
	declare @Bicho1 int
	declare @Bicho2 int
	declare @Fecha datetime

	SELECT @Usuario1=[Id-Usuario1],@Bicho1=[Id-Bicho1],@Usuario2=[Id-Usuario2],@Bicho2=[Id-Bicho2] FROM INSERTED 
	
	exec actualizarPropietario @Bicho1,@Usuario2
	exec actualizarPropietario @Bicho2,@Usuario1

GO

--4.Trigger para checar que la experiencia agregada sea del tipo correspondido al bicho
create trigger Experiencia on [BICHO-ATAQUE] for insert
as
	declare @IDBicho int
	declare @IDAtaque int

	SELECT @IDBicho=[ID-Bicho], @IDAtaque=[ID-Ataque] FROM INSERTED 

	IF (SELECT COUNT(BA.[ID-Bicho]) FROM [BICHO-ATAQUE] BA WHERE BA.[ID-Bicho]=@IDBicho AND BA.[ID-Ataque]=@IDAtaque) NOT IN (SELECT COUNT (B.ID) FROM BICHO B INNER JOIN ESPECIE E ON B.Especie=E.ID 
																															  INNER JOIN  ATAQUE A ON A.Tipo=E.Tipo WHERE B.ID=@IDBicho AND A.ID=@IDAtaque)
			ROLLBACK TRANSACTION 
				PRINT 'La experiencia agregada no era correspondiente al tipo de bicho'
GO

--5.Trigger para la evolución de un bicho

create trigger EvolucionBicho on [BICHO] for update
as 
	IF UPDATE (Experiencia)
	 BEGIN
		declare @IDBicho int
		declare @Especie smallint
		declare @Experiencia smallint
		declare @EspecieN smallint
		declare @ExperienciaN smallint

		SELECT @IDBicho=ID,@Especie=Especie,@Experiencia=Experiencia FROM INSERTED 

		IF((SELECT COUNT(Evolución) FROM EVOLUCION WHERE [ID-Especie]=@Especie) = 1 )
		  BEGIN
			 SELECT @EspecieN=Evolución,@ExperienciaN=ExperenciaNecesaria FROM EVOLUCION WHERE [ID-Especie]=@Especie

			 IF(@Experiencia >= @ExperienciaN)
				 UPDATE BICHO SET Especie = @EspecieN, Experiencia=0  WHERE ID=@IDBicho
		  END
		 ELSE
			PRINT 'El bicho tiene más de una evolución'
	 END 
=======
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
>>>>>>> master
