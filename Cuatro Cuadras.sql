--create database CuatroCuadrasBD

--drop database CuatroCuadrasBD

--TABLAS--
use CuatroCuadrasBD

SELECT
  *
FROM
  CuatroCuadrasBD.INFORMATION_SCHEMA.TABLES;
GO


CREATE TABLE CATEGORIA
(
	[ID] smallint IDENTITY(1,1),
	[Descripcion] varchar(50) NOT NULL
)
;

CREATE TABLE [CHECK-IN]
(
	[ID-Usuario] int,
	[ID-Lugar] int NOT NULL,
	[Comentario] varchar(50),
	[Fecha y Hora] datetime NOT NULL,
	[Valoracion] tinyint
)
 ;

CREATE TABLE [CIUDAD]
(
	[ID] smallint IDENTITY(1,1),
	[Descripcion] varchar(50) NOT NULL
)
;

CREATE TABLE [ESTATUS-SOLICITUD]
(
	[ID] tinyint IDENTITY(1,1) ,
	[Descripcion] varchar(50) NOT NULL
)
;

CREATE TABLE [ETIQUETA]
(
	[ID] smallint IDENTITY(1,1),
	[Descripcion] varchar(50) NOT NULL
)
;

CREATE TABLE [INSIGNIA]
(
	[ID] smallint IDENTITY(1,1),
	[Nombre] varchar(50) NOT NULL,
	[Descripcion] varchar(100) NOT NULL
)
;

CREATE TABLE [LUGAR]
(
	[ID] int IDENTITY(1,1),
	[Latitud] smallint NOT NULL,
	[Longitud] smallint NOT NULL,
	[Descripcion] varchar (50) NOT NULL,
	[ID-Categoria] smallint NOT NULL,
	id_ciudad smallint not null
)
;

CREATE TABLE [LUGAR-ETIQUETA]
(
	[ID-Lugar] int NOT NULL,
	[ID-Etiqueta] smallint NOT NULL
)
;

CREATE TABLE [USUARIO]
(
	[ID] int IDENTITY(1,1),
	[UserName] varchar(50) NOT NULL,
	[Nombre] varchar(50) NOT NULL,
	[Genero] bit NOT NULL,
	edad int not null,
	[Email] varchar(50) NOT NULL,
	[Contrasena] varchar(50) NOT NULL,
	[Id-Ciudad] smallint NOT NULL
)
;

CREATE TABLE [USUARIO-AMIGO-USUARIO]
(
	[Usuario1] int NOT NULL,
	[Usuario2] int NOT NULL
)
;

CREATE TABLE [USUARIO-INSIGNIA]
(
	[ID-Usuario] int NOT NULL,
	[ID-Insignia] smallint NOT NULL,
	[Fecha] date NOT NULL
)
;

CREATE TABLE [USUARIO-INTERESES]
(
	[ID-Usuario] int NOT NULL,
	[Interes] varchar(50) NOT NULL
)
;

CREATE TABLE [USUARIO-SOLICITUD-USUARIO]
(
	[Usuario1] int NOT NULL,
	[Usuario2] int NOT NULL,
	[Estatus] tinyint NOT NULL
)
;
--RESTRICCIONES E INDICES--
ALTER TABLE [CATEGORIA] 
 ADD CONSTRAINT [PK_CATEGORIA]
	PRIMARY KEY CLUSTERED ([ID])
;

CREATE INDEX [IXFK_CHECK-IN_LUGAR] 
 ON [CHECK-IN] ([ID-Lugar] ASC)
;

CREATE INDEX [IXFK_CHECK-IN_USUARIO] 
 ON [CHECK-IN] ([ID-Usuario] ASC)
;

ALTER TABLE [CHECK-IN] 
 ADD CONSTRAINT [Unique-CheckIn] UNIQUE NONCLUSTERED ([ID-Usuario],[ID-Lugar],[Fecha y Hora])
;
ALTER TABLE [LUGAR] 
 ADD CONSTRAINT [Unique-Ubicacion] UNIQUE NONCLUSTERED ([Longitud],[Latitud])

ALTER TABLE [CIUDAD] 
 ADD CONSTRAINT [PK_CIUDAD]
	PRIMARY KEY CLUSTERED ([ID])
;

ALTER TABLE [ESTATUS-SOLICITUD] 
 ADD CONSTRAINT [PK_ESTATUS-SOLICITUD]
	PRIMARY KEY CLUSTERED ([ID])
;

ALTER TABLE [ETIQUETA] 
 ADD CONSTRAINT [PK_ETIQUETA]
	PRIMARY KEY CLUSTERED ([ID])
;

ALTER TABLE [INSIGNIA] 
 ADD CONSTRAINT [PK_INSIGNIA]
	PRIMARY KEY CLUSTERED ([ID])
;

CREATE INDEX [IXFK_LUGAR_CATEGORIA] 
 ON [LUGAR] ([ID-Categoria] ASC)
;

ALTER TABLE [LUGAR] 
 ADD CONSTRAINT [PK_LUGAR]
	PRIMARY KEY CLUSTERED ([ID])
;

ALTER TABLE [LUGAR] 
 ADD CONSTRAINT [FK_CIUDA_LUGAR]
	FOREIGN KEY (id_ciudad)  REFERENCES CIUDAD ([ID]) 
;

CREATE INDEX [IXFK_LUGAR-ETIQUETA_ETIQUETA] 
 ON [LUGAR-ETIQUETA] ([ID-Etiqueta] ASC)
;

CREATE INDEX [IXFK_LUGAR-ETIQUETA_LUGAR] 
 ON [LUGAR-ETIQUETA] ([ID-Lugar] ASC)
;

ALTER TABLE [LUGAR-ETIQUETA] 
 ADD CONSTRAINT [UNIQUE-LUGAR-ETIQUETA] UNIQUE NONCLUSTERED ([ID-Lugar],[ID-Etiqueta])
;

CREATE INDEX [IXFK_USUARIO_CIUDAD] 
 ON [USUARIO] ([Id-Ciudad] ASC)
;

ALTER TABLE [USUARIO] 
 ADD CONSTRAINT [PK_USUARIO]
	PRIMARY KEY CLUSTERED ([ID])
;

CREATE INDEX [IXFK_USUARIO-AMIGO-USUARIO_USUARIO] 
 ON [USUARIO-AMIGO-USUARIO] ([Usuario1] ASC)
;

CREATE INDEX [IXFK_USUARIO-AMIGO-USUARIO_USUARIO_02] 
 ON [USUARIO-AMIGO-USUARIO] ([Usuario2] ASC)
;

ALTER TABLE [USUARIO-AMIGO-USUARIO] 
 ADD CONSTRAINT [Unique-Amistad] UNIQUE NONCLUSTERED ([Usuario1],[Usuario2])
;

CREATE INDEX [IXFK_USUARIO-INSIGNIA_INSIGNIA] 
 ON [USUARIO-INSIGNIA] ([ID-Insignia] ASC)
;

CREATE INDEX [IXFK_USUARIO-INSIGNIA_USUARIO] 
 ON [USUARIO-INSIGNIA] ([ID-Usuario] ASC)
;

ALTER TABLE [USUARIO-INSIGNIA] 
 ADD CONSTRAINT [Unique-Usuario-Insignia] UNIQUE NONCLUSTERED ([ID-Usuario],[ID-Insignia],[Fecha])
;

CREATE INDEX [IXFK_USUARIO-INTERESES_USUARIO] 
 ON [USUARIO-INTERESES] ([ID-Usuario] ASC)
;

ALTER TABLE [USUARIO-INTERESES] 
 ADD CONSTRAINT [Unique-Usuario-Interes] UNIQUE NONCLUSTERED ([ID-Usuario],[Interes])
;

CREATE INDEX [IXFK_USUARIO-SOLICITUD-USUARIO_ESTATUS-SOLICITUD] 
 ON [USUARIO-SOLICITUD-USUARIO] ([Estatus] ASC)
;

CREATE INDEX [IXFK_USUARIO-SOLICITUD-USUARIO_USUARIO] 
 ON [USUARIO-SOLICITUD-USUARIO] ([Usuario1] ASC)
;

CREATE INDEX [IXFK_USUARIO-SOLICITUD-USUARIO_USUARIO_02] 
 ON [USUARIO-SOLICITUD-USUARIO] ([Usuario2] ASC)
;

ALTER TABLE [USUARIO-SOLICITUD-USUARIO] 
 ADD CONSTRAINT [UNIQUE-SOLICITUD] UNIQUE NONCLUSTERED ([Usuario1],[Usuario2],[Estatus])
;

ALTER TABLE [CHECK-IN] ADD CONSTRAINT [FK_CHECK-IN_LUGAR]
	FOREIGN KEY ([ID-Lugar]) REFERENCES [LUGAR] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [CHECK-IN] ADD CONSTRAINT [FK_CHECK-IN_USUARIO]
	FOREIGN KEY ([ID-Usuario]) REFERENCES [USUARIO] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [LUGAR] ADD CONSTRAINT [FK_LUGAR_CATEGORIA]
	FOREIGN KEY ([ID-Categoria]) REFERENCES [CATEGORIA] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [LUGAR-ETIQUETA] ADD CONSTRAINT [FK_LUGAR-ETIQUETA_ETIQUETA]
	FOREIGN KEY ([ID-Etiqueta]) REFERENCES [ETIQUETA] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [LUGAR-ETIQUETA] ADD CONSTRAINT [FK_LUGAR-ETIQUETA_LUGAR]
	FOREIGN KEY ([ID-Lugar]) REFERENCES [LUGAR] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO] ADD CONSTRAINT [FK_USUARIO_CIUDAD]
	FOREIGN KEY ([Id-Ciudad]) REFERENCES [CIUDAD] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO-AMIGO-USUARIO] ADD CONSTRAINT [FK_USUARIO-AMIGO-USUARIO_USUARIO]
	FOREIGN KEY ([Usuario1]) REFERENCES [USUARIO] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO-AMIGO-USUARIO] ADD CONSTRAINT [FK_USUARIO-AMIGO-USUARIO_USUARIO_02]
	FOREIGN KEY ([Usuario2]) REFERENCES [USUARIO] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO-INSIGNIA] ADD CONSTRAINT [FK_USUARIO-INSIGNIA_INSIGNIA]
	FOREIGN KEY ([ID-Insignia]) REFERENCES [INSIGNIA] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO-INSIGNIA] ADD CONSTRAINT [FK_USUARIO-INSIGNIA_USUARIO]
	FOREIGN KEY ([ID-Usuario]) REFERENCES [USUARIO] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO-INTERESES] ADD CONSTRAINT [FK_USUARIO-INTERESES_USUARIO]
	FOREIGN KEY ([ID-Usuario]) REFERENCES [USUARIO] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO-SOLICITUD-USUARIO] ADD CONSTRAINT [FK_USUARIO-SOLICITUD-USUARIO_ESTATUS-SOLICITUD]
	FOREIGN KEY ([Estatus]) REFERENCES [ESTATUS-SOLICITUD] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO-SOLICITUD-USUARIO] ADD CONSTRAINT [FK_USUARIO-SOLICITUD-USUARIO_USUARIO]
	FOREIGN KEY ([Usuario1]) REFERENCES [USUARIO] ([ID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [USUARIO-SOLICITUD-USUARIO] ADD CONSTRAINT [FK_USUARIO-SOLICITUD-USUARIO_USUARIO_02]
	FOREIGN KEY ([Usuario2]) REFERENCES [USUARIO] ([ID]) ON DELETE No Action ON UPDATE No Action
;
