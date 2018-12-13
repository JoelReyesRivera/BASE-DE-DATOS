use CuatroCuadrasBD
GO

--1.TRIGGER PARA LAS SOLICITUDES ACEPTADAS
create trigger SolicitudAceptada on [USUARIO-SOLICITUD-USUARIO] for insert
as
	declare @Usuario1 int 
	declare @Usuario2 int
	declare @Estatus tinyint

	select @Usuario1=Usuario1, @Usuario2=Usuario2, @Estatus=Estatus from inserted

	IF(@Estatus=1)
		insert into [USUARIO-AMIGO-USUARIO](Usuario1,Usuario2) values(@Usuario1,@Usuario2)

GO

--2.TRIGGER PARA CHECK-IN
create trigger CheckIN on [CHECK-IN] for insert
as
	declare @IDUsuario int 
	declare @IDLugar int 
	declare @FecaHora datetime

	select @IDUsuario=[ID-Usuario], @IDLugar=[ID-Lugar], @FecaHora=[Fecha y Hora] from inserted

	IF (select count([Fecha y Hora]) from [CHECK-IN] where [Fecha y Hora]=@FecaHora) >= (1)
	 BEGIN
		Rollback
		Print 'No se puede hacer dos CHECK-IN al mismo tiempo'
	 END

	 --FOTOGENICO
	 --Hacer check-in en 3 lugares diferentes con etiqueta "photobot"
	 	IF (select  distinct COUNT(c.[ID-Lugar]) from [CHECK-IN] c INNER JOIN LUGAR l on c.[ID-Lugar]=l.ID
			INNER JOIN [LUGAR-ETIQUETA] le on  l.ID=le.[ID-Lugar] INNER JOIN ETIQUETA e on le.[ID-Etiqueta]=e.ID
			where e.Descripcion like '%PhotoBoot%' and c.[ID-Usuario]=[ID-Usuario]) >= (3)
				insert into [USUARIO-INSIGNIA]([ID-Insignia],[ID-Usuario],Fecha) values(1,@IDUsuario,GETDATE())

	 --NAVEGANTE
	 --Hacer check-in en 3 lugares diferentes con la etiqueta "canoa")
	 	IF (select  distinct COUNT(c.[ID-Lugar]) from [CHECK-IN] c INNER JOIN LUGAR l on c.[ID-Lugar]=l.ID
			INNER JOIN [LUGAR-ETIQUETA] le on  l.ID=le.[ID-Lugar] INNER JOIN ETIQUETA e on le.[ID-Etiqueta]=e.ID
			where e.Descripcion like '%Canoa%' and c.[ID-Usuario]=[ID-Usuario]) >= (3)
				insert into [USUARIO-INSIGNIA]([ID-Insignia],[ID-Usuario],Fecha) values(2,@IDUsuario,GETDATE())

	--MELOMANO
	--Hacer 5 check-ins en lugares de categoría "Tienda de Música"
	 	IF (select  COUNT(c.[ID-Lugar]) from [CHECK-IN] c INNER JOIN LUGAR l on c.[ID-Lugar]=l.ID
			INNER JOIN CATEGORIA k on  l.[ID-Categoria] = k.ID where k.Descripcion like '%Tienda de Música%' and c.[ID-Usuario]=[ID-Usuario]) >= (5)
				insert into [USUARIO-INSIGNIA]([ID-Insignia],[ID-Usuario],Fecha) values(4,@IDUsuario,GETDATE())

	--CINEFILO
	--Hacer 15 check-ins en cines
	 	IF (select  COUNT(c.[ID-Lugar]) from [CHECK-IN] c INNER JOIN LUGAR l on c.[ID-Lugar]=l.ID
			INNER JOIN CATEGORIA k on  l.[ID-Categoria] = k.ID where k.Descripcion like '%Cine%' and c.[ID-Usuario]=[ID-Usuario]) >= (15)
				insert into [USUARIO-INSIGNIA]([ID-Insignia],[ID-Usuario],Fecha) values(5,@IDUsuario,GETDATE())
					
	--CATADOR DE COMIDA
	--Hacer 10 check-ins en restaurantes diferentes
	 	IF (select distinct COUNT(c.[ID-Lugar]) from [CHECK-IN] c INNER JOIN LUGAR l on c.[ID-Lugar]=l.ID
			INNER JOIN CATEGORIA k on  l.[ID-Categoria] = k.ID where k.Descripcion like '%Restaurant%' and c.[ID-Usuario]=[ID-Usuario]) >= (10)
				insert into [USUARIO-INSIGNIA]([ID-Insignia],[ID-Usuario],Fecha) values(6,@IDUsuario,GETDATE())

	--TRABAJADOR
	--Hacer 200 check-ins en lugares de la categoría "Oficinas"
	 	IF (select COUNT(c.[ID-Lugar]) from [CHECK-IN] c INNER JOIN LUGAR l on c.[ID-Lugar]=l.ID
			INNER JOIN CATEGORIA k on  l.[ID-Categoria] = k.ID where k.Descripcion like '%Oficina%' and c.[ID-Usuario]=[ID-Usuario]) >= (200)
				insert into [USUARIO-INSIGNIA]([ID-Insignia],[ID-Usuario],Fecha) values(7,@IDUsuario,GETDATE())

	 --LA VOZ
	 --Hacer check-in en un mes en lugares de categoría "karaoke bar"(no necesariamente diferentes) 
	 	IF (select COUNT(c.[Fecha y Hora]) from [CHECK-IN] c INNER JOIN LUGAR l on c.[ID-Lugar]=l.ID
			INNER JOIN CATEGORIA k on  l.[ID-Categoria] = k.ID where k.Descripcion like '%Kareoke Bar%' and c.[ID-Usuario]=[ID-Usuario]) >= (200)
				insert into [USUARIO-INSIGNIA]([ID-Insignia],[ID-Usuario],Fecha) values(3,@IDUsuario,GETDATE())










select * from Categoria