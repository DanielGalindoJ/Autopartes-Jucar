USE JucarAutoBD;

GO

-- ***** AUTOPARTES CON SU PRECIO Y CANTIDAD DISPONIBLE ACTUAL *****
CREATE VIEW VISTA1

AS
SELECT 
A.Nombre AS Autoparte,
HP.Valor,
I.CantidadDisponible
FROM Autoparte AS A
INNER JOIN HistorialPrecio AS HP ON A.AutoparteID = HP.AutoparteID
INNER JOIN Inventario AS I ON A.AutoparteID = I.AutoparteID
WHERE HP.FechaModificaci�n = GETDATE() AND I.FechaModificaci�n = GETDATE()

GO

-- ***** AUTOPARTES CON DESCUENTO 

CREATE VIEW VISTA2

AS
SELECT 
A.Nombre AS Autoparte,
HP.Valor AS PrecioNormal,
HD.PorcentajeDescuento AS Descuento,
HD.ValorTemporal AS PrecioDescuento
FROM Autoparte AS A
INNER JOIN HistorialPrecio AS HP ON A.AutoparteID = HP.AutoparteID
INNER JOIN HistorialDescuento AS HD ON HP.HistorialPrecioID = HD.HistorialPrecioID
WHERE HD.Estado = 'Activo/a'
GO

-- ***** AUTOPARTES CON SU CATEGORIA/SUBCATEGORIA

CREATE VIEW VISTA3

AS
SELECT 
A.Nombre AS Autoparte,
S.NombreSubCat AS Categor�a
FROM Categor�a AS C
INNER JOIN Subcategor�a AS S ON C.Categor�aID = S.Categor�aID
INNER JOIN Autoparte AS A ON C.Categor�aID = A.Categor�aID

GO

-- ***** USUARIOS Y SU CARGO

CREATE VIEW VISTA4

AS
SELECT 
U.PrimerNombre AS Nombre,
U.PrimerApellido AS Apellido,
U.Direcci�nCorreo AS Email,
C.NombreCargo AS Cargo
FROM UsuarioCargo AS UC
INNER JOIN Usuario AS U ON UC.UsuarioID = U.UsuarioID
INNER JOIN Cargo AS C ON UC.CargoID = C.CargoID
GO

-- ***** PROVEEDORES CON SU TELEFONO Y DIRECCION

CREATE VIEW VISTA5

AS
SELECT 
P.ProveedorID AS ID,
CASE
	WHEN PJ.Raz�nSocial = NULL THEN 'NoJuridico'
	ELSE PJ.Raz�nSocial
END AS NombreJuridico,
CASE
	WHEN PN.PrimerNombre = NULL THEN 'NoNatural'
	ELSE CONCAT(PN.PrimerNombre, ' ', PN.PrimeApellido)
END AS ProveedorNatural,
TP.NumT�lefono AS NumeroTel,
D.Ciudad AS Ciudad,
D.Barrio AS Barrio,
D.Direcci�n AS Direccion
FROM Proveedor AS P 
INNER JOIN ProveedorJur�dico AS PJ ON P.ProveedorID = PJ.ProveedorID
INNER JOIN ProveedorNatural AS PN ON P.ProveedorID = PN.ProveedorID
INNER JOIN T�lefonoProveedor AS TP ON P.ProveedorID = TP.ProveedorID
INNER JOIN DireccionProveedor AS DP ON P.ProveedorID = DP.ProveedorID
INNER JOIN Direcci�n AS D ON D.Direcci�nID = DP.Direcci�nID
GO

-- ***** EXISTENCIA DE MATERIASPRIMAS

CREATE VIEW VISTA6

AS
SELECT 
MP.NombreMateriaPrima AS Materia,
E.CantidadDisponible AS Existencia,
E.FechaModificaci�n AS UltimaActualizaci�n
FROM MateriaPrima AS MP
INNER JOIN Existencia AS E ON MP.MateriaPrimaID = E.MateriaPrimaID
WHERE E.FechaModificaci�n = GETDATE()

GO

-- ***** MOVIMIENTOS DE MATERIASPRIMAS

CREATE VIEW VISTA7

AS
SELECT 
MP.NombreMateriaPrima,
M.TipoMovimiento,
M.Cantidad,
M.FechaMovimiento
FROM MateriaPrima AS MP
INNER JOIN Movimiento AS M ON MP.MateriaPrimaID = M.MateriaPrimaID

GO

-- ***** PERDIDA DE AUTOPARTES

CREATE VIEW VISTA8

AS
SELECT 
A.Nombre AS Autoparte,
P.CantidadPerdida AS Cuanto,
P.Motivo AS Como,
P.FechaPerdida AS Cuando,
P.Lugar AS Donde
FROM Autoparte AS A
INNER JOIN Perdida AS P ON A.AutoparteID = P.AutoparteID

GO

