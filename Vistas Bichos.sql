USE BICHOS
GO

--VISTA USUARIO
create view Usuarios 
as SELECT  [Nombre(s)] +' '+Apellido as [Nombre], UserName FROM USUARIO

GO
SELECT * FROM Usuarios
GO

--VISTA USUARIO Y BICHOS QUE LE PERTENECEN
create view UsuarioBichos
as SELECT u.UserName, b.Nombre as [Bicho], e.Nombre as [Especie], t.Descripci�n [Tipo] FROM USUARIO u 
INNER JOIN BICHO b ON u.ID=b.Propietario
INNER JOIN ESPECIE e ON b.Especie=e.ID
INNER JOIN TIPOBICHO t ON t.ID=e.Tipo

GO
SELECT * FROM UsuarioBichos
GO

--VISTA BICHO ATAQUES
create view BichoAtaques
as SELECT  b.Nombre as [Bicho],e.Nombre as [Especie], t.Descripci�n [Tipo], a.Descripci�n as [Ataque], a.Da�o [Da�o] FROM [BICHO-ATAQUE] ba 
INNER JOIN BICHO b ON ba.[ID-Bicho] = b.ID
INNER JOIN ATAQUE a ON ba.[ID-Ataque]=a.ID
INNER JOIN ESPECIE e ON b.Especie=e.ID
INNER JOIN TIPOBICHO t ON t.ID=e.Tipo

GO
SELECT * FROM BichoAtaques
GO

--VISTA EVOLUCION
create view Evoluciones
as SELECT ES.ID as [ID-Especie],ES.Nombre AS Especie,ES2.ID as [ID-Evolcuion],ES2.Nombre as Evolucion,E.ExperenciaNecesaria FROM EVOLUCION E INNER JOIN ESPECIE ES ON E.[ID-Especie]= ES.ID
INNER JOIN ESPECIE ES2 ON ES2.ID=E.Evoluci�n

GO
SELECT * FROM BichoAtaques
GO

--INFORMACION ESPECIE
create view EspecieInfo
as SELECT E.ID,E.Nombre,E.Ataque,E.SaludMax,T.Descripci�n,TB.Descripci�n as Debilidad,TB2.Descripci�n as Fortaleza from ESPECIE e 
INNER JOIN TIPOBICHO t ON e.Tipo=t.ID
INNER JOIN [TIPO-DEBILIDAD] d ON d.[Id-Tipo]=t.ID
INNER JOIN [TIPO-FORTALEZA] f ON f.[Id-Tipo]=t.ID
INNER JOIN TIPOBICHO TB ON d.[Id-Tipo-Debilidad]=TB.ID
INNER JOIN TIPOBICHO TB2 ON f.[Id-Tipo-Fortaleza]=TB2.ID


GO
SELECT * FROM EspecieInfo
GO
