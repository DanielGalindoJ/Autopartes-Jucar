USE JucarAutoBD;

GO
-- ***** CRUD DEPARTAMENTO *****

CREATE PROCEDURE CRUD_Departamento
(
    @Operation NVARCHAR(10),
    @DepartamentoID INT = NULL,
    @Nombre VARCHAR(50) = NULL,
    @Capital VARCHAR(50) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Departamento (Nombre, Capital, FechaCreaci�n, FechaModificaci�n)
        VALUES (@Nombre, @Capital, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Departamento WHERE DepartamentoID = @DepartamentoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Departamento
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Departamento
        SET Nombre = @Nombre,
            Capital = @Capital,
            FechaModificaci�n = GETDATE()
        WHERE DepartamentoID = @DepartamentoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Departamento WHERE DepartamentoID = @DepartamentoID;
    END
END

GO

-- ***** CRUD MUNICIPIOS *****

CREATE PROCEDURE CRUD_Municipio
(
    @Operation NVARCHAR(10),
    @MunicipioID INT = NULL,
    @DepartamentoID INT = NULL,
    @Nombre VARCHAR(50) = NULL,
    @Capital BIT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Municipio (DepartamentoID, Nombre, Capital, FechaCreaci�n, FechaModificaci�n)
        VALUES (@DepartamentoID, @Nombre, @Capital, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Municipio WHERE MunicipioID = @MunicipioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Municipio;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Municipio
        SET DepartamentoID = @DepartamentoID,
            Nombre = @Nombre,
            Capital = @Capital,
            FechaModificaci�n = GETDATE()
        WHERE MunicipioID = @MunicipioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Municipio WHERE MunicipioID = @MunicipioID;
    END
END

GO

-- ***** CRUD BARRIO *****

CREATE PROCEDURE CRUD_Barrio
(
    @Operation NVARCHAR(10),
	@BarrioID INT = NULL,
    @MunicipioID INT = NULL,
    @Nombre VARCHAR(50) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Barrio(MunicipioID, Nombre, FechaCreaci�n, FechaModificaci�n)
        VALUES (@MunicipioID, @Nombre, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Barrio WHERE BarrioID = @BarrioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Barrio;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Barrio
        SET MunicipioID = @MunicipioID,
            Nombre = @Nombre,
            FechaModificaci�n = GETDATE()
        WHERE BarrioID = @BarrioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Barrio WHERE BarrioID = @BarrioID;
    END
END

GO

-- ***** CRUD VIA *****

CREATE PROCEDURE CRUD_Via
(
    @Operation NVARCHAR(10),
	@ViaID INT = NULL,
    @BarrioID INT = NULL,
    @TipoCalle VARCHAR(50) = NULL,
	@Calle VARCHAR(3) = NULL,
	@Sufijo VARCHAR (10) NULL,
	@Num1 VARCHAR (3) NULL,
	@Num2 VARCHAR (3) NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO V�a (BarrioID, TipoCalle, Calle, Sufijo, N�mero1, N�mero2, FechaCreaci�n, FechaModificaci�n)
        VALUES (@BarrioID, @TipoCalle, @Calle, @Sufijo, @Num1, @Num2, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM V�a WHERE V�aID = @ViaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM V�a;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE V�a
        SET BarrioID = @BarrioID,
            TipoCalle = @TipoCalle,
			Calle = @Calle,
			Sufijo = @Sufijo,
			N�mero1 = @Num1,
			N�mero2 = @Num2,
            FechaModificaci�n = GETDATE()
        WHERE V�aID = @ViaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM V�a WHERE V�aID = @ViaID;
    END
END

GO

-- **** CRUD DESTINATARIO *****

CREATE PROCEDURE CRUD_Destinatario
(
    @Operation NVARCHAR(10),
	@DestinatarioID INT = NULL,
    @PrimerNombre VARCHAR(50) = NULL,
    @SegundoNombre VARCHAR(50) = NULL,
	@PrimerApellido VARCHAR(50) = NULL,
	@SegundoApellido VARCHAR (50) NULL,
	@TipoDoc VARCHAR (20) NULL,
	@NumDoc VARCHAR (10) NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Destinatario (PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, TipoDoc, NumDoc, FechaCreaci�n, FechaModificaci�n)
        VALUES (@PrimerNombre, @SegundoNombre, @PrimerApellido, @SegundoApellido, @TipoDoc, @NumDoc, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Destinatario WHERE DestinatarioID = @DestinatarioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Destinatario;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Destinatario
        SET PrimerNombre = @PrimerNombre,
            SegundoNombre = @SegundoNombre,
			PrimerApellido = @PrimerApellido,
			SegundoApellido = @SegundoApellido,
			TipoDoc = @TipoDoc,
			NumDoc = @NumDoc,
            FechaModificaci�n = GETDATE()
        WHERE DestinatarioID = @DestinatarioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Destinatario WHERE DestinatarioID = @DestinatarioID;
    END
END

GO

-- ***** CRUD EDIFICIO *****

CREATE PROCEDURE CRUD_Edificio
(
    @Operation NVARCHAR(10),
	@EdificioID INT = NULL,
    @TipoEdificio VARCHAR(50) = NULL,
    @NumEdificio VARCHAR(50) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Edificio (TipoEdificio, NumEdificio, FechaCreaci�n, FechaModificaci�n)
        VALUES (@TipoEdificio, @NumEdificio, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Edificio WHERE EdificioID = @EdificioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Edificio;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Edificio
        SET TipoEdificio = @TipoEdificio,
            NumEdificio = @NumEdificio,
            FechaModificaci�n = GETDATE()
        WHERE EdificioID = @EdificioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Edificio WHERE EdificioID = @EdificioID;
    END
END

GO

-- **** CRUD TIPODIRECCION *****

CREATE PROCEDURE CRUD_TipoDirecci�n
(
    @Operation NVARCHAR(10),
	@TipoDireccionID INT = NULL,
    @Tipo VARCHAR(20) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO TipoDirecci�n (Tipo, FechaCreaci�n, FechaModificaci�n)
        VALUES (@Tipo, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM TipoDirecci�n WHERE TipoDirecci�nID = @TipoDireccionID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM TipoDirecci�n;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE TipoDirecci�n
        SET Tipo = @Tipo,
            FechaModificaci�n = GETDATE()
        WHERE TipoDirecci�nID = @TipoDireccionID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM TipoDirecci�n WHERE TipoDirecci�nID = @TipoDireccionID;
    END
END

GO

-- ***** CRUD DIRECCION *****

CREATE PROCEDURE CRUD_Direccion
(
    @Operation NVARCHAR(10),
	@DireccionID INT = NULL,
	@TipoDireccionID INT = NULL,
	@ViaID INT = NULL,
	@EdificioID INT = NULL,
	@DestinatarioID INT = NULL,
	@Pais VARCHAR (30) = NULL,
	@Departamento VARCHAR (30) = NULL,
	@Municipio VARCHAR (30) = NULL,
	@Ciudad VARCHAR (30) = NULL,
	@Localidad VARCHAR (30) = NULL,
	@Barrio VARCHAR (30) = NULL,
	@Direccion VARCHAR (30) = NULL,
	@InfoAd VARCHAR (200) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Direcci�n (TipoDirecci�nID, V�aID, EdificioID, DestinatarioID, Pa�s, Departamento, 
			Municipio, Ciudad, Localidad, Barrio, Direcci�n, Informaci�nAdicional, FechaCreaci�n, FechaModificaci�n)
        VALUES (@TipoDireccionID, @ViaID, @EdificioID, @DestinatarioID, @Pais, @Departamento, @Municipio, @Ciudad, 
			@Localidad, @Barrio, @Direccion, @InfoAd, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Direcci�n WHERE Direcci�nID = @DireccionID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Direcci�n;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Direcci�n
        SET TipoDirecci�nID = @TipoDireccionID,
            V�aID = @ViaID,
			EdificioID = @EdificioID,
			DestinatarioID = @DestinatarioID,
			Pa�s = @Pais,
			Departamento = @Departamento,
			Municipio = @Municipio,
			Ciudad = @Ciudad,
			Localidad = @Localidad,
			Barrio = @Barrio,
			Direcci�n = @Direccion,
			Informaci�nAdicional = @InfoAd,
            FechaModificaci�n = GETDATE()
        WHERE Direcci�nID = @DireccionID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Direcci�n WHERE Direcci�nID = @DireccionID;
    END
END

GO

-- ***** CRUD CATEGORIA *****

CREATE PROCEDURE CRUD_Categoria
(
    @Operation NVARCHAR(10),
	@CategoriaID INT = NULL,
	@NomCat VARCHAR (40) = NULL,
	@Estado VARCHAR (10) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Categor�a(NombreCategor�a, Estado, FechaCreaci�n, FechaModificaci�n)
        VALUES (@NomCat, 'Activo/a', GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Categor�a WHERE Categor�aID = @CategoriaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Categor�a;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Categor�a
        SET NombreCategor�a = @NomCat,
			Estado = @Estado,
            FechaModificaci�n = GETDATE()
        WHERE Categor�aID = @CategoriaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Categor�a WHERE Categor�aID = @CategoriaID;
    END
END

GO

-- ***** CRUD SUBCATEGORIA *****

CREATE PROCEDURE CRUD_Subcategoria
(
    @Operation NVARCHAR(10),
	@SubcategoriaID INT = NULL,
	@CategoriaID INT = NULL,
	@NomSubc VARCHAR (50) = NULL,
	@Estado VARCHAR (10) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Subcategor�a (Categor�aID, NombreSubCat, Estado, FechaCreaci�n, FechaModificaci�n)
        VALUES (@CategoriaID, @NomSubc, 'Activo/a', GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Subcategor�a WHERE Subcategor�aID = @SubcategoriaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Subcategor�a;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Subcategor�a
        SET Categor�aID = @CategoriaID,
			NombreSubCat = @NomSubc,
			Estado = @Estado,
            FechaModificaci�n = GETDATE()
        WHERE Subcategor�aID = @SubcategoriaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Subcategor�a WHERE Subcategor�aID = @SubcategoriaID;
    END
END

GO

-- ***** CRUD AUTOPARTE *****

CREATE PROCEDURE CRUD_Autoparte
(
    @Operation NVARCHAR(10),
	@AutoparteID INT = NULL,
	@CategoriaID INT = NULL,
	@SubcategoriaID INT = NULL,
	@Nombre VARCHAR (30) = NULL,
	@Funcion VARCHAR (30) = NULL,
	@ZonaV VARCHAR (30) = NULL,
	@Estado VARCHAR (10) = NULL,
	@PesoKgs VARCHAR (3) = NULL,
	@AltoCm VARCHAR (3) = NULL,
	@LargoCm VARCHAR (3) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Autoparte (Categor�aID, Subcategor�aID, Nombre, Funci�n, 
			ZonaVeh�culo, Estado, PesoKgs, AltoCm, LargoCm, FechaCreaci�n, FechaModificaci�n)
        VALUES (@CategoriaID, @SubcategoriaID, @Nombre, @Funcion, @ZonaV, 'Activo/a', @PesoKgs, 
			@AltoCm, @LargoCm, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Autoparte WHERE AutoparteID = @AutoparteID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Autoparte;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Autoparte
        SET Categor�aID = @CategoriaID,
			Subcategor�aID = @SubcategoriaID,
			Nombre = @Nombre,
			Funci�n = @Funcion,
			ZonaVeh�culo = @ZonaV,
			Estado = @Estado,
			PesoKgs = @PesoKgs,
			AltoCm = @AltoCm,
			LargoCm = @LargoCm,
            FechaModificaci�n = GETDATE()
        WHERE AutoparteID = @AutoparteID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Autoparte WHERE AutoparteID = @AutoparteID;
    END
END

GO

-- ***** CRUD HISTORIALPRECIO *****

CREATE PROCEDURE CRUD_HistorialPrecio
(
    @Operation NVARCHAR(10),
	@HistorialPrecioID INT = NULL,
	@AutoparteID INT = NULL,
	@Valor BIGINT = NULL,
	@Estado VARCHAR (10) = NULL,
	@FechaInicial DATE = NULL,
	@FechaFinal DATE = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO HistorialPrecio (AutoparteID, Valor, Estado, FechaIniciialPrecio,
			FechaFinalPrecio, FechaCreaci�n, FechaModificaci�n)
        VALUES (@AutoparteID, @Valor, 'Activo/a', GETDATE(), GETDATE(), GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM HistorialPrecio WHERE HistorialPrecioID = @HistorialPrecioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM HistorialPrecio;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE HistorialPrecio
        SET AutoparteID = @AutoparteID,
			Valor = @Valor,
			Estado = @Estado,
			FechaIniciialPrecio = @FechaInicial,
			FechaFinalPrecio = @FechaFinal,
            FechaModificaci�n = GETDATE()
        WHERE HistorialPrecioID = @HistorialPrecioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM HistorialPrecio WHERE HistorialPrecioID = @HistorialPrecioID;
    END
END

GO

-- ***** CRUD HISTORIALDESCUENTO *****

CREATE PROCEDURE CRUD_HistorialDescuento
(
    @Operation NVARCHAR(10),
	@HistorialDescuentoID INT = NULL,
	@HistorialPrecioID INT = NULL,
	@PorDes BIGINT = NULL,
	@ValTemp BIGINT = NULL,
	@Estado VARCHAR (10) = NULL,
	@FechaInicial DATE = NULL,
	@FechaFinal DATE = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO HistorialDescuento (HistorialPrecioID, PorcentajeDescuento, ValorTemporal, Estado, FechaInicialDescuento,
			FechaCreaci�n, FechaModificaci�n)
        VALUES (@HistorialPrecioID, @PorDes, @ValTemp, @Estado, @FechaInicial, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM HistorialDescuento WHERE HistorialDescuentoID = @HistorialDescuentoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM HistorialDescuento;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE HistorialDescuento
        SET @HistorialPrecioID = @HistorialPrecioID,
			PorcentajeDescuento = @PorDes,
			ValorTemporal = @ValTemp,
			Estado = @Estado,
			FechaInicialDescuento = @FechaInicial,
			FechaFinalDescuento = @FechaFinal,
            FechaModificaci�n = GETDATE()
        WHERE HistorialDescuentoID = @HistorialDescuentoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM HistorialDescuento WHERE HistorialDescuentoID = @HistorialDescuentoID;
    END
END

GO

-- ***** CRUD PERDIDA *****

CREATE PROCEDURE CRUD_Perdida
(
    @Operation NVARCHAR(10),
	@PerdidaID INT = NULL,
	@AutoparteID INT = NULL,
	@Motivo VARCHAR (20) = NULL,
	@Lugar VARCHAR (50) = NULL,
	@Responsable VARCHAR (30) = NULL,
	@FechaPerdida DATE = NULL,
	@Cantidad VARCHAR (5) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Perdida (AutoparteID, Motivo, Lugar, ResponsablePerdida, FechaPerdida, 
			CantidadPerdida, FechaCreaci�n, FechaModificaci�n)
        VALUES (@AutoparteID, @Motivo, @Lugar, @Responsable, @FechaPerdida, @Cantidad, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Perdida WHERE PerdidaID = @PerdidaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Perdida;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Perdida
        SET AutoparteID = @AutoparteID,
			Motivo = @Motivo,
			Lugar = @Lugar,
			ResponsablePerdida = @Responsable,
			FechaPerdida = @FechaPerdida,
			CantidadPerdida = @Cantidad,
            FechaModificaci�n = GETDATE()
        WHERE PerdidaID = @PerdidaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Perdida WHERE PerdidaID = @PerdidaID;
    END
END

GO

-- ***** CRUD INVENTARIO *****

CREATE PROCEDURE CRUD_Inventario
(
    @Operation NVARCHAR(10),
	@InventarioID INT = NULL,
	@AutoparteID INT = NULL,
	@CantDispo VARCHAR (5) = NULL,
	@ExtIni VARCHAR (5) = NULL,
	@InvMax VARCHAR (5) = NULL,
	@InvMin VARCHAR (5) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Inventario (AutoparteID, CantidadDisponible, ExistenciasIniciales, InventarioM�x,
			InventarioMin, FechaCreaci�n, FechaModificaci�n)
        VALUES (@AutoparteID, @CantDispo, @ExtIni, @InvMax, @InvMin, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Inventario WHERE InventarioID = @InventarioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Inventario;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Inventario
        SET AutoparteID = @AutoparteID,
			CantidadDisponible = @CantDispo,
			ExistenciasIniciales = @ExtIni,
			InventarioM�x = @InvMax,
			InventarioMin = @InvMin,
            FechaModificaci�n = GETDATE()
        WHERE InventarioID = @InventarioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Inventario WHERE InventarioID = @InventarioID;
    END
END

GO

-- ***** CRUD MATERIAPRIMA *****

CREATE PROCEDURE CRUD_Materiprima
(
    @Operation NVARCHAR(10),
	@MateriaPrimaID INT = NULL,
	@Tipo VARCHAR (20) = NULL,
	@Nombre VARCHAR (30) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO MateriaPrima (TipoMateriaPrima, NombreMateriaPrima, FechaCreaci�n, FechaModificaci�n)
        VALUES (@Tipo, @Nombre, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM MateriaPrima WHERE MateriaPrimaID = @MateriaPrimaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM MateriaPrima;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE MateriaPrima
        SET TipoMateriaPrima = @Tipo,
			NombreMateriaPrima = @Nombre,
            FechaModificaci�n = GETDATE()
        WHERE MateriaPrimaID = @MateriaPrimaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM MateriaPrima WHERE MateriaPrimaID = @MateriaPrimaID;
    END
END

GO

-- ***** CRUD EXISTENCIA *****

CREATE PROCEDURE CRUD_Existencia
(
    @Operation NVARCHAR(10),
	@ExistenciaID INT = NULL,
	@MateriaPrimaID INT = NULL,
	@CantDispo VARCHAR (3) = NULL,
	@Existencias VARCHAR (3) = NULL,
	@PuntoReorden VARCHAR (3) = NULL,
	@InvMin VARCHAR (3) = NULL,
	@InvMax VARCHAR (3) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Existencia (MateriaPrimaID, CantidadDisponible, ExistenciasIniciales, PuntoReorden,
			InventarioMinimo, InventarioM�ximo, FechaCreaci�n, FechaModificaci�n)
        VALUES (@MateriaPrimaID, @CantDispo, @Existencias, @PuntoReorden, @InvMin, @InvMax, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Existencia WHERE ExistenciaID = @ExistenciaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Existencia;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Existencia
        SET MateriaPrimaID = @MateriaPrimaID,
			CantidadDisponible = @CantDispo,
			ExistenciasIniciales = @Existencias,
			PuntoReorden = @PuntoReorden,
			InventarioMinimo = @InvMin,
			InventarioM�ximo = @InvMax,
            FechaModificaci�n = GETDATE()
        WHERE ExistenciaID = @ExistenciaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Existencia WHERE ExistenciaID = @ExistenciaID;
    END
END

GO

-- ***** CRUD MOVIMIENTO *****

CREATE PROCEDURE CRUD_Movimiento
(
    @Operation NVARCHAR(10),
	@MovimientoID INT = NULL,
	@MateriaPrimaID INT = NULL,
	@Cantidad INT = NULL,
	@TipoMovimiento VARCHAR (15) = NULL,
	@FechaMovimiento DATE = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Movimiento (MateriaPrimaID, Cantidad, TipoMovimiento, FechaMovimiento, FechaCreaci�n, FechaModificaci�n)
        VALUES (@MateriaPrimaID, @Cantidad, @TipoMovimiento, @FechaMovimiento, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Movimiento WHERE MovimientoID = @MovimientoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Movimiento;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Movimiento
        SET MateriaPrimaID = @MateriaPrimaID,
			Cantidad = @Cantidad,
			TipoMovimiento = @TipoMovimiento,
			FechaMovimiento = @FechaMovimiento,
            FechaModificaci�n = GETDATE()
        WHERE MovimientoID = @MovimientoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Movimiento WHERE MovimientoID = @MovimientoID;
    END
END

GO

-- ***** CRUD MATERIALAUTOPARTE *****

CREATE PROCEDURE CRUD_MaterialAutoparte
(
    @Operation NVARCHAR(10),
	@MaterialAutoparteID INT = NULL,
	@MateriaPrimaID INT = NULL,
	@AutoparteID INT = NULL, 
	@Composicion VARCHAR (50) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO MaterialAutoparte (MateriaPrimaID, AutoparteID, Composici�nAutoparte, FechaCreaci�n, FechaModificaci�n)
        VALUES (@MateriaPrimaID, @AutoparteID, @Composicion, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM MaterialAutoparte WHERE MaterialAutoparteID = @MaterialAutoparteID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM MaterialAutoparte;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE MaterialAutoparte
        SET MateriaPrimaID = @MateriaPrimaID,
			AutoparteID = @AutoparteID,
			Composici�nAutoparte = @Composicion,
            FechaModificaci�n = GETDATE()
        WHERE MaterialAutoparteID = @MaterialAutoparteID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM MaterialAutoparte WHERE MaterialAutoparteID = @MaterialAutoparteID;
    END
END

GO

-- ***** CRUD FABRICA *****

CREATE PROCEDURE CRUD_Fabrica
(
    @Operation NVARCHAR(10),
	@FabricaID INT = NULL,
	@NIT VARCHAR (9) = NULL,
	@RazonSocial VARCHAR (30) = NULL,
	@Email VARCHAR (30) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Fabrica (NIT, Raz�nSocial, Direcci�nEmail, FechaCreaci�n, FechaModificaci�n)
        VALUES (@NIT, @RazonSocial, @Email, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Fabrica WHERE FabricaID = @FabricaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Fabrica;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Fabrica
        SET NIT = @NIT,
			Raz�nSocial = @RazonSocial,
			Direcci�nEmail = @Email,
            FechaModificaci�n = GETDATE()
        WHERE FabricaID = @FabricaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Fabrica WHERE FabricaID = @FabricaID;
    END
END

GO

-- ***** CRUD TELEFONOFABRICA *****

CREATE PROCEDURE CRUD_TelefonoFabrica
(
    @Operation NVARCHAR(10),
	@TelefonoFabricaID INT = NULL,
	@FabricaID INT = NULL,
	@Tipo VARCHAR (20) = NULL,
	@Num VARCHAR (10) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO TelefonoFabrica (FabricaID, TipoT�lefono, NumTel�fono, FechaCreaci�n, FechaModificaci�n)
        VALUES (@FabricaID, @Tipo, @Num, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM TelefonoFabrica WHERE TelefonoFabricaID = @TelefonoFabricaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM TelefonoFabrica;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE TelefonoFabrica
        SET FabricaID = @FabricaID,
			TipoT�lefono = @Tipo,
			NumTel�fono = @Num,
            FechaModificaci�n = GETDATE()
        WHERE TelefonoFabricaID = @TelefonoFabricaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM TelefonoFabrica WHERE TelefonoFabricaID = @TelefonoFabricaID;
    END
END

GO

-- ***** CRUD BODEGA *****

CREATE PROCEDURE CRUD_Bodega
(
    @Operation NVARCHAR(10),
	@BodegaID INT = NULL,
	@FabricaID INT = NULL,
	@Nombre VARCHAR (30) = NULL,
	@Estado VARCHAR (10) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Bodega (FabricaID, Nombre, Estado, FechaCreaci�n, FechaModificaci�n)
        VALUES (@FabricaID, @Nombre, @Estado, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Bodega WHERE BodegaID = @BodegaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Bodega;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Bodega
        SET FabricaID = @FabricaID,
			Nombre = @Nombre,
			Estado = @Estado,
            FechaModificaci�n = GETDATE()
        WHERE BodegaID = @BodegaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Bodega WHERE BodegaID = @BodegaID;
    END
END

GO

-- ***** CRUD ESTANTEORGANIZADOR *****

CREATE PROCEDURE CRUD_EstanteOrganizador
(
    @Operation NVARCHAR(10),
	@EstanteOrganizadorID INT = NULL,
	@FabricaID INT = NULL,
	@BodegaID INT = NULL,
	@Material VARCHAR (30) = NULL,
	@Color VARCHAR (30) = NULL,
	@Capacidad VARCHAR (5) = NULL,
	@AltoCm VARCHAR (3) = NULL,
	@LargoCm VARCHAR (3) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO EstanteOrganizador (FabricaID, BodegaID, Material, Color, CapacidadM�xKgs, 
			AltoCm, LargoCm, FechaCreaci�n, FechaModificaci�n)
        VALUES (@FabricaID, @BodegaID, @Material, @Color, @Capacidad, @AltoCm, @LargoCm, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM EstanteOrganizador WHERE EstanteOrganizador = @EstanteOrganizadorID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM EstanteOrganizador;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE EstanteOrganizador
        SET FabricaID = @FabricaID,
			BodegaID = @BodegaID,
			Material = @Material,
			Color = @Color,
			CapacidadM�xKgs = @Capacidad,
			AltoCm = @AltoCm,
			LargoCm = @LargoCm,
            FechaModificaci�n = GETDATE()
        WHERE EstanteOrganizador = @EstanteOrganizadorID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM EstanteOrganizador WHERE EstanteOrganizador = @EstanteOrganizadorID;
    END
END

GO

-- ***** CRUD ESTANTERIA *****

CREATE PROCEDURE CRUD_Estanteria
(
    @Operation NVARCHAR(10),
	@EstanteriaID INT = NULL,
	@EstanteOrganizadorID INT = NULL,
	@InventarioID INT = NULL,
	@AutoparteID INT = NULL,
	@Num VARCHAR (3) = NULL,
	@Tipo VARCHAR (20) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Estanter�a (EstanteOrganizadorID, InventarioID, AutoparteID, NumEstanter�a,
			TipoProducto, FechaCreaci�n, FechaModificaci�n)
        VALUES (@EstanteOrganizadorID, @InventarioID, @AutoparteID, @Num, @Tipo, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Estanter�a WHERE Estanter�aID = @EstanteriaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Estanter�a;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Estanter�a
        SET EstanteOrganizadorID = EstanteOrganizadorID,
			InventarioID = @InventarioID,
			AutoparteID = @AutoparteID,
			NumEstanter�a = @Num,
			TipoProducto = @Tipo,
            FechaModificaci�n = GETDATE()
        WHERE Estanter�aID = @EstanteriaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Estanter�a WHERE Estanter�aID = @EstanteriaID;
    END
END

GO

-- ***** CRUD PROVEEDORJURIDICO *****

CREATE PROCEDURE CRUD_ProveedorJuridico
(
    @Operation NVARCHAR(10),
	@ProveedorID INT = NULL,
	@TipoProducto VARCHAR (30) = NULL,
	@Estado VARCHAR (10) = NULL,
	@Correo VARCHAR (30) = NULL,
	@RazonSocial VARCHAR (40) = NULL,
	@NIT VARCHAR (9) = NULL,
	@Representante VARCHAR (50) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
		-- Variable para insertar en las dos tablas

        DECLARE @NewProveedorID INT

        -- Insertar en la tabla Proveedor para obtener el nuevo ProveedorID
        INSERT INTO Proveedor (TipoProducto, Estado, Correo, FechaCreaci�n, FechaModificaci�n)
        VALUES (@TipoProducto, @Estado, @Correo, GETDATE(), GETDATE());

        SET @NewProveedorID = SCOPE_IDENTITY();

        -- Insertar en la tabla ProveedorJuridico utilizando el nuevo ProveedorID
        INSERT INTO ProveedorJur�dico (ProveedorID, Raz�nSocial, NIT, RepresentanteLegal)
        VALUES (@NewProveedorID, @RazonSocial, @NIT, @Representante);
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT P.*, PJ.Raz�nSocial, PJ.NIT, PJ.RepresentanteLegal
        FROM Proveedor AS P
        INNER JOIN ProveedorJur�dico AS PJ ON P.ProveedorID = PJ.ProveedorID
        WHERE P.ProveedorID = @ProveedorID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT P.*, PJ.Raz�nSocial, PJ.NIT, PJ.RepresentanteLegal
		FROM Proveedor AS P
		INNER JOIN ProveedorJur�dico AS PJ ON P.ProveedorID = PJ.ProveedorID;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE ProveedorJur�dico
        SET 
            Raz�nSocial = @RazonSocial,
            NIT = @NIT,
            RepresentanteLegal = @Representante
        WHERE ProveedorID = @ProveedorID;

        -- Actualizar los campos correspondientes en la tabla Proveedor
        UPDATE Proveedor
        SET
            TipoProducto = @TipoProducto,
            Estado = @Estado,
            Correo = @Correo,
            FechaModificaci�n = GETDATE()
        WHERE ProveedorID = @ProveedorID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM ProveedorJur�dico WHERE ProveedorID = @ProveedorID;
        DELETE FROM Proveedor WHERE ProveedorID = @ProveedorID;
    END
END

GO

-- ***** CRUD PROVEEDORNATURAL *****

CREATE PROCEDURE CRUD_ProveedorNatural
(
    @Operation NVARCHAR(10),
	@ProveedorID INT = NULL,
	@TipoProducto VARCHAR (30) = NULL,
	@Estado VARCHAR (10) = NULL,
	@Correo VARCHAR (30) = NULL,
	@TipoDoc VARCHAR (20) = NULL,
	@NumDoc VARCHAR (10) = NULL,
	@PrimerN VARCHAR (30) = NULL,
	@SegundoN VARCHAR (30) = NULL,
	@PrimerA VARCHAR (30) = NULL,
	@SegundoA VARCHAR (50) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
		-- Variable para insertar en las dos tablas

        DECLARE @NewProveedorID INT

        -- Insertar en la tabla Proveedor para obtener el nuevo ProveedorID
        INSERT INTO Proveedor (TipoProducto, Estado, Correo, FechaCreaci�n, FechaModificaci�n)
        VALUES (@TipoProducto, @Estado, @Correo, GETDATE(), GETDATE());

        SET @NewProveedorID = SCOPE_IDENTITY();

        -- Insertar en la tabla ProveedorNatural utilizando el nuevo ProveedorID
        INSERT INTO ProveedorNatural (ProveedorID, TipoDoc, NumDoc, PrimerNombre, SegundoNombre,
			PrimeApellido, SegundoApellido)
        VALUES (@NewProveedorID, @TipoDoc, @NumDoc, @PrimerN, @SegundoN, @PrimerA, @SegundoA);
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT P.*, PN.TipoDoc, PN.NumDoc, PN. PrimerNombre, PN.SegundoNombre, PN.PrimeApellido, PN.SegundoApellido
        FROM Proveedor AS P
        INNER JOIN ProveedorNatural AS PN ON P.ProveedorID = PN.ProveedorID
        WHERE P.ProveedorID = @ProveedorID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT P.*, PN.TipoDoc, PN.NumDoc, PN. PrimerNombre, PN.SegundoNombre, PN.PrimeApellido, PN.SegundoApellido
		FROM Proveedor AS P
		INNER JOIN ProveedorNatural AS PN ON P.ProveedorID = PN.ProveedorID;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE ProveedorNatural
        SET 
            TipoDoc = @TipoDoc,
            NumDoc = @NumDoc,
            PrimerNombre = @PrimerN,
			SegundoNombre = @SegundoN,
			PrimeApellido = @PrimerA,
			SegundoApellido = @SegundoA
        WHERE ProveedorID = @ProveedorID;

        -- Actualizar los campos correspondientes en la tabla Proveedor
        UPDATE Proveedor
        SET
            TipoProducto = @TipoProducto,
            Estado = @Estado,
            Correo = @Correo,
            FechaModificaci�n = GETDATE()
        WHERE ProveedorID = @ProveedorID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM ProveedorNatural WHERE ProveedorID = @ProveedorID;
        DELETE FROM Proveedor WHERE ProveedorID = @ProveedorID;
    END
END

GO

-- ***** CRUD TELEFONOPROVEEDOR *****

CREATE PROCEDURE CRUD_TelefonoProveedor
(
    @Operation NVARCHAR(10),
	@TelefonoProveedorID INT = NULL,
	@ProveedorID INT = NULL,
	@TipoTelefono VARCHAR (30) = NULL,
	@NumTelefono VARCHAR (10) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO T�lefonoProveedor (ProveedorID, TipoT�lefono, NumT�lefono, FechaCreaci�n, FechaModificaci�n)
        VALUES (@ProveedorID, @TipoTelefono, @NumTelefono, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM T�lefonoProveedor WHERE TelefonoProveedorID = @TelefonoProveedorID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM T�lefonoProveedor;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE T�lefonoProveedor
        SET ProveedorID = @ProveedorID,
			TipoT�lefono = @TipoTelefono,
			NumT�lefono = @NumTelefono,
            FechaModificaci�n = GETDATE()
        WHERE TelefonoProveedorID = @TelefonoProveedorID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM T�lefonoProveedor WHERE TelefonoProveedorID = @TelefonoProveedorID;
    END
END

GO

-- ***** CRUD USUARIO *****

CREATE PROCEDURE CRUD_Usuario
(
    @Operation NVARCHAR(10),
	@UsuarioID INT = NULL,
	@PrimerN VARCHAR (30) = NULL,
	@SegundoN VARCHAR (30) = NULL,
	@PrimerA VARCHAR (30) = NULL,
	@SegundoA VARCHAR (30) = NULL,
	@Correo VARCHAR (30) = NULL,
	@Direccion VARCHAR (30) = NULL,
	@Sexo VARCHAR (15) = NULL,
	@Nacimiento DATE = NULL,
	@Estado VARCHAR (10) = NULL,
	@UserName VARCHAR (30) = NULL,
	@Password VARCHAR (100) = NULL

)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Usuario (PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Direcci�nCorreo,
			Direcci�nDomicilio, Sexo, FechaNacimiento, Estado, NombreUsuario, PasswordHash, FechaCreaci�n,
				FechaModificaci�n)
        VALUES (@PrimerN, @SegundoN, @PrimerA, @SegundoA, @Correo, @Direccion, @Sexo, @Nacimiento, 
			'Activo/a', @UserName, @Password, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Usuario WHERE UsuarioID = @UsuarioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Usuario;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Usuario
        SET PrimerNombre = @PrimerN,
			SegundoNombre = @SegundoN,
			PrimerApellido = @PrimerA,
			SegundoApellido = @SegundoA,
			Direcci�nCorreo = @Correo,
			Direcci�nDomicilio = @Direccion,
			Sexo = @Sexo,
			FechaNacimiento = @Nacimiento,
			Estado = @Estado,
			NombreUsuario = @UserName,
			PasswordHash = @Password,
            FechaModificaci�n = GETDATE()
        WHERE UsuarioID = @UsuarioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Usuario WHERE UsuarioID = @UsuarioID;
    END
END

GO

-- ***** CRUD CARGO *****

CREATE PROCEDURE CRUD_Cargo
(
    @Operation NVARCHAR(10),
	@CargoID INT = NULL,
	@Nombre VARCHAR (30) = NULL,
	@Estado VARCHAR (10) = NULL

)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Cargo (NombreCargo, Estado, FechaCreaci�n, FechaModificaci�n)
        VALUES (@Nombre ,'Activo/a', GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Cargo WHERE CargoID = @CargoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Cargo;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Cargo
        SET NombreCargo = @Nombre,
			Estado = @Estado,
            FechaModificaci�n = GETDATE()
        WHERE CargoID = @CargoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Cargo WHERE CargoID = @CargoID;
    END
END

GO

-- ***** CRUD USUARIOCARGO *****

CREATE PROCEDURE CRUD_UsuarioCargo
(
    @Operation NVARCHAR(10),
	@UsuarioCargoID INT = NULL,
	@CargoID INT = NULL,
	@UsuarioID INT = NULL

)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO UsuarioCargo (CargoID, UsuarioID, FechaCreaci�n, FechaModificaci�n)
        VALUES (@CargoID, @UsuarioID, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM UsuarioCargo WHERE UsuarioCargoID = @UsuarioCargoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM UsuarioCargo;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE UsuarioCargo
        SET CargoID = @CargoID,
			UsuarioID = @UsuarioID,
            FechaModificaci�n = GETDATE()
        WHERE UsuarioCargoID = @UsuarioCargoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM UsuarioCargo WHERE UsuarioCargoID = @UsuarioCargoID;
    END
END

GO

-- ***** CRUD TELEFONOUSUARIO *****

CREATE PROCEDURE CRUD_TelefonoUsuario
(
    @Operation NVARCHAR(10),
	@TelefonoUsuarioID INT = NULL,
	@UsuarioID INT = NULL,
	@Tipo VARCHAR (20) = NULL,
	@Num VARCHAR (10) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO TelefonoUsuario (UsuarioID, TipoT�lefono, NumT�lefono, FechaCreaci�n, FechaModificaci�n)
        VALUES (@UsuarioID, @Tipo, @Num, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM TelefonoUsuario WHERE TelefonoUsuarioID = @TelefonoUsuarioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM TelefonoUsuario;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE TelefonoUsuario
        SET UsuarioID = @UsuarioID,
			TipoT�lefono = @Tipo,
			NumT�lefono = @Num,
            FechaModificaci�n = GETDATE()
        WHERE TelefonoUsuarioID = TelefonoUsuarioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM TelefonoUsuario WHERE TelefonoUsuarioID = @TelefonoUsuarioID;
    END
END

GO

-- ***** CRUD CLIENTENATURAL *****

CREATE PROCEDURE CRUD_ClienteNatural
(
    @Operation NVARCHAR(10),
	@ClienteID INT = NULL,
	@Correo VARCHAR (30) = NULL,
	@Pais VARCHAR (30) = NULL,
	@Ciudad VARCHAR (30) = NULL,
	@Estado VARCHAR (10) = NULL,
	@TipoDoc VARCHAR (30) = NULL,
	@NumDoc VARCHAR (15) = NULL,
	@PrimerN VARCHAR (30) = NULL,
	@SegundoN VARCHAR (30) = NULL,
	@PrimerA VARCHAR (30) = NULL,
	@SegundoA VARCHAR (50) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
		-- Variable para insertar en las dos tablas

        DECLARE @NewClienteID INT

        -- Insertar en la tabla Cliente para obtener el nuevo ClienteID
        INSERT INTO Cliente (Correo, Pa�s, Ciudad, Estado, FechaCreaci�n, FechaModificaci�n)
        VALUES (@Correo, @Pais, @Ciudad, 'Activo/a', GETDATE(), GETDATE());

        SET @NewClienteID = SCOPE_IDENTITY();

        -- Insertar en la tabla ClienteNatural utilizando el nuevo ClienteID
        INSERT INTO ClienteNatural (ClienteID, TipoDoc, NumDoc, PrimerNombre, SegundoNombre,
			PrimerApellido, SegundoApellido)
        VALUES (@NewClienteID, @TipoDoc, @NumDoc, @PrimerN, @SegundoN, @PrimerA, @SegundoA);
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT C.*, CN.TipoDoc, CN.NumDoc, CN. PrimerNombre, CN.SegundoNombre, CN.PrimerApellido, CN.SegundoApellido
        FROM Cliente AS C
        INNER JOIN ClienteNatural AS CN ON C.ClienteID = CN.ClienteID
        WHERE C.ClienteID = @ClienteID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT C.*, CN.TipoDoc, CN.NumDoc, CN. PrimerNombre, CN.SegundoNombre, CN.PrimerApellido, CN.SegundoApellido
        FROM Cliente AS C
        INNER JOIN ClienteNatural AS CN ON C.ClienteID = CN.ClienteID
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE ClienteNatural
        SET 
            TipoDoc = @TipoDoc,
            NumDoc = @NumDoc,
            PrimerNombre = @PrimerN,
			SegundoNombre = @SegundoN,
			PrimerApellido = @PrimerA,
			SegundoApellido = @SegundoA
        WHERE ClienteID = @ClienteID;

        -- Actualizar los campos correspondientes en la tabla Cliente
        UPDATE Cliente
        SET Correo = @Correo,
			Pa�s = @Pais,
			Ciudad = @Ciudad,
            Estado = @Estado,
            FechaModificaci�n = GETDATE()
        WHERE ClienteID = @ClienteID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM ClienteNatural WHERE ClienteID = @ClienteID;
        DELETE FROM Cliente WHERE ClienteID = @ClienteID;
    END
END

GO

-- ***** CRUD CLIENTEJURIDICO *****

CREATE PROCEDURE CRUD_ClienteJuridico
(
    @Operation NVARCHAR(10),
	@ClienteID INT = NULL,
	@Correo VARCHAR (30) = NULL,
	@Pais VARCHAR (30) = NULL,
	@Ciudad VARCHAR (30) = NULL,
	@Estado VARCHAR (10) = NULL,
	@RazonSocial VARCHAR (30) = NULL,
	@NIT VARCHAR (30) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
		-- Variable para insertar en las dos tablas

        DECLARE @NewClienteID INT

        -- Insertar en la tabla Cliente para obtener el nuevo ClienteID
        INSERT INTO Cliente (Correo, Pa�s, Ciudad, Estado, FechaCreaci�n, FechaModificaci�n)
        VALUES (@Correo, @Pais, @Ciudad, 'Activo/a', GETDATE(), GETDATE());

        SET @NewClienteID = SCOPE_IDENTITY();

        -- Insertar en la tabla ClienteJuridico utilizando el nuevo ClienteID
        INSERT INTO ClienteJur�dico (ClienteID, Raz�nSocial, NIT)
        VALUES (@NewClienteID, @RazonSocial, @NIT);
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT C.*, CJ.Raz�nSocial, CJ.NIT
        FROM Cliente AS C
        INNER JOIN ClienteJur�dico AS CJ ON C.ClienteID = CJ.ClienteID
        WHERE C.ClienteID = @ClienteID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT C.*, CJ.Raz�nSocial, CJ.NIT
        FROM Cliente AS C
        INNER JOIN ClienteJur�dico AS CJ ON C.ClienteID = CJ.ClienteID
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE ClienteJur�dico
        SET 
            Raz�nSocial = @RazonSocial,
			NIT = @NIT
        WHERE ClienteID = @ClienteID;

        -- Actualizar los campos correspondientes en la tabla Cliente
        UPDATE Cliente
        SET Correo = @Correo,
			Pa�s = @Pais,
			Ciudad = @Ciudad,
            Estado = @Estado,
            FechaModificaci�n = GETDATE()
        WHERE ClienteID = @ClienteID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM ClienteJur�dico WHERE ClienteID = @ClienteID;
        DELETE FROM Cliente WHERE ClienteID = @ClienteID;
    END
END

GO

-- ***** CRUD MEDIOPAGO *****

CREATE PROCEDURE CRUD_Mediopago
(
    @Operation NVARCHAR(10),
	@MediopagoID INT = NULL,
	@Remitente VARCHAR (30) = NULL,
	@Nombre VARCHAR (50) = NULL,
	@Estado BIT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO MedioPago (Remitente,  NombreMetodoPago, Estado, FechaCreaci�n, FechaModificaci�n)
        VALUES (@Remitente ,@Nombre ,'Activo/a', GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM MedioPago WHERE MedioPagoID = @MediopagoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM MedioPago;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE MedioPago
        SET Remitente = @Remitente,
			NombreMetodoPago = @Nombre,
			Estado = @Estado,
            FechaModificaci�n = GETDATE()
        WHERE MedioPagoID = @MediopagoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM MedioPago WHERE MedioPagoID = @MediopagoID;
    END
END

GO

-- ***** CRUD PEDIDO *****

CREATE PROCEDURE CRUD_Pedido
(
    @Operation NVARCHAR(10),
	@PedidoID INT = NULL,
	@ClienteID INT = NULL,
	@Lugar VARCHAR (50) = NULL,
	@Estado BIT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Pedido (ClienteID, Lugar , Estado, FechaCreaci�n, FechaModificaci�n)
        VALUES (@ClienteID, @Lugar, 1, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Pedido WHERE PedidoID = @PedidoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Pedido;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Pedido
        SET ClienteID = @ClienteID,
			Lugar = @Lugar,
			Estado = @Estado,
            FechaModificaci�n = GETDATE()
        WHERE PedidoID = @PedidoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Pedido WHERE PedidoID = @PedidoID;
    END
END

GO

-- ***** CRUD APORTE *****

CREATE PROCEDURE CRUD_Aporte
(
    @Operation NVARCHAR(10),
	@AporteID INT = NULL,
	@MedioPagoID INT = NULL,
	@PedidoID INT = NULL,
	@ClientID INT = NULL,
	@Monto BIGINT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Aporte (MedioPagoID, PedidoID, ClienteID, MontoAbonado, FechaAporte, FechaModificacion)
        VALUES (@MedioPagoID, @PedidoID, @ClientID, @Monto, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Aporte WHERE AporteID = @AporteID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Aporte;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Aporte
        SET MedioPagoID = @MedioPagoID,
			PedidoID = @PedidoID,
			ClienteID = @ClientID,
			MontoAbonado = @Monto,
            FechaModificacion = GETDATE()
        WHERE AporteID = @AporteID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Aporte WHERE AporteID = @AporteID;
    END
END

GO

-- ***** CRUD DETALLEPEDIDO *****

CREATE PROCEDURE CRUD_DetallePedido
(
    @Operation NVARCHAR(10),
	@DetallePedidoID INT = NULL,
	@AutoparteID INT = NULL,
	@ClienteID INT = NULL,
	@PedidoID INT = NULL,
	@Producto VARCHAR (50) = NULL,
	@Cantidad VARCHAR (3) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO DetallePedido (AutoparteID, ClienteID, PedidoID, Producto, Cantidad)
        VALUES (@AutoparteID, @ClienteID, @PedidoID, @Producto, @Cantidad);
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM DetallePedido WHERE DetallePedidoID = @DetallePedidoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM DetallePedido;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE DetallePedido
        SET AutoparteID = @AutoparteID,
			ClienteID = @ClienteID,
			PedidoID = @PedidoID,
			Producto = Producto,
			Cantidad = @Cantidad
        WHERE DetallePedidoID = @DetallePedidoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM DetallePedido WHERE DetallePedidoID = @DetallePedidoID;
    END
END

GO

-- ***** CRUD FACTURA *****

CREATE PROCEDURE CRUD_Factura
(
    @Operation NVARCHAR(10),
	@FacturaID INT = NULL,
	@PedidoID INT = NULL,
	@ClienteID INT = NULL,
	@UsuarioID INT = NULL,
	@FormaPagoID INT = NULL,
	@Direccion VARCHAR (30) = NULL,
	@Tel VARCHAR (15) = NULL,
	@NumF VARCHAR (5) = NULL,
	@Cliente VARCHAR (50) = NULL,
	@CC VARCHAR (10) = NULL,
	@NIT VARCHAR (9) = NULL,
	@TelCli VARCHAR (10) = NULL,
	@Observacion VARCHAR (150) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO Factura (PedidoID, ClienteID, UsuarioID, FormaPagoID, Direcci�n, T�lefono, NumFacturaVenta, 
			Cliente, CC, NIT, Tel�fonoCliente, Observaci�n, FechaCreaci�n, FechaModificaci�n)
        VALUES (@PedidoID, @ClienteID, @UsuarioID, @FormaPagoID, @Direccion, @Tel, @NumF, @Cliente, @CC,
			@NIT, @TelCli, @Observacion, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM Factura WHERE FacturaID = @FacturaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM Factura;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE Factura
        SET PedidoID = @PedidoID,
			ClienteID = @ClienteID,
			UsuarioID = @UsuarioID,
			FormaPagoID = @FormaPagoID,
			Direcci�n = @Direccion,
			T�lefono = @Tel,
			NumFacturaVenta = @NumF,
			Cliente = @Cliente,
			CC = @CC,
			NIT =  @NIT,
			Tel�fonoCliente = @TelCli,
			Observaci�n = @Observacion,
            FechaModificaci�n = GETDATE()
        WHERE FacturaID = @FacturaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM Factura WHERE FacturaID = @FacturaID;
    END
END

GO

-- ***** CRUD FORMAPAGO *****

CREATE PROCEDURE CRUD_FormaPago
(
    @Operation NVARCHAR(10),
	@FormaPagoID INT = NULL,
	@Nombre VARCHAR (50) = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO FormaPago (NombreFormaPago, FechaCreaci�n, FechaModificaci�n)
        VALUES (@Nombre, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM FormaPago WHERE FormaPagoID = @FormaPagoID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM FormaPago;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE FormaPago
        SET NombreFormaPago = @Nombre,
            FechaModificaci�n = GETDATE()
        WHERE FormaPagoID = @FormaPagoID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM FormaPago WHERE FormaPagoID = @FormaPagoID;
    END
END

GO

-- ***** CRUD DETALLEFACTURA *****

CREATE PROCEDURE CRUD_DetalleFactura
(
    @Operation NVARCHAR(10),
	@DetalleFacturaID INT = NULL,
	@FacturaID INT = NULL,
	@AutoparteID INT = NULL,
	@NumItem VARCHAR (3) = NULL,
	@Cantidad VARCHAR (3) = NULL,
	@ValorU BIGINT = NULL,
	@IVA BIGINT = NULL,
	@ValorSub BIGINT = NULL,
	@ValorTot BIGINT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO DetalleFactura (FacturaID, AutoparteID, NumItem, Cantidad, ValorUnitario, IVA, ValorSubtotal, ValorTotal)
        VALUES (@FacturaID, @AutoparteID, @NumItem, @Cantidad, @ValorU, @IVA, @ValorSub, @ValorTot);
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM DetalleFactura WHERE DetalleFacturaID = @DetalleFacturaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM DetalleFactura;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE DetalleFactura
        SET FacturaID = @FacturaID,
			AutoparteID = @AutoparteID,
			NumItem = @NumItem, 
			Cantidad = @Cantidad,
			ValorUnitario = @ValorU,
			IVA = @IVA,
			ValorSubtotal = @ValorSub,
			ValorTotal = @ValorTot
        WHERE DetalleFacturaID = @DetalleFacturaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM DetalleFactura WHERE DetalleFacturaID = @DetalleFacturaID;
    END
END

GO

-- ***** CRUD DIRECCIONCLIENTE *****

CREATE PROCEDURE CRUD_DireccionCliente
(
    @Operation NVARCHAR(10),
	@DireccionClienteID INT = NULL,
	@DireccionID INT = NULL,
	@ClienteID INT = NULL,
	@TipoID INT = NULL,
	@DestinatarioID INT = NULL,
	@EdificioID INT = NULL,
	@ViaID INT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO DireccionCliente (Direcci�nID, ClienteID, TipoDirecci�nID, DestinatarioID, 
			EdificioID, V�aID, FechaCreaci�n, FechaModificaci�n)
        VALUES (@DireccionID, @ClienteID, @TipoID, @DestinatarioID, @EdificioID, @ViaID, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM DireccionCliente WHERE DireccionClienteID = @DireccionClienteID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM DireccionCliente;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE DireccionCliente
        SET Direcci�nID = @DireccionID,
			ClienteID = @ClienteID,
			TipoDirecci�nID = @TipoID,
			DestinatarioID = @DestinatarioID,
			EdificioID = @EdificioID,
			V�aID = @ViaID,
            FechaModificaci�n = GETDATE()
        WHERE DireccionClienteID = @DireccionClienteID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM DireccionCliente WHERE DireccionClienteID = @DireccionClienteID;
    END
END

GO

-- ***** CRUD DIRECCIONFABRICA *****

CREATE PROCEDURE CRUD_DireccionFabrica
(
    @Operation NVARCHAR(10),
	@DireccionFabricaID INT = NULL,
	@DireccionID INT = NULL,
	@FabricaID INT = NULL,
	@EdificioID INT = NULL,
	@ViaID INT = NULL,
	@TipoID INT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO DireccionFabrica (Direcci�nID, FabricaID, EdificioID, V�aID, TipoDirecci�nID, 
			FechaCreaci�n, FechaModificaci�n)
        VALUES (@DireccionID, @FabricaID, @EdificioID, @ViaID, @TipoID, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM DireccionFabrica WHERE DireccionFabricaID = @DireccionFabricaID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM DireccionFabrica;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE DireccionFabrica
        SET Direcci�nID = @DireccionID,
			FabricaID = @FabricaID,
			EdificioID = @EdificioID,
			V�aID = @ViaID,
			TipoDirecci�nID = @TipoID,
            FechaModificaci�n = GETDATE()
        WHERE DireccionFabricaID = @DireccionFabricaID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM DireccionFabrica WHERE DireccionFabricaID = @DireccionFabricaID;
    END
END

GO

-- ***** CRUD DIRECCIONPROVEEDOR *****

CREATE PROCEDURE CRUD_DireccionProveedor
(
    @Operation NVARCHAR(10),
	@DireccionProveedorID INT = NULL,
	@DireccionID INT = NULL,
	@ProveedorID INT = NULL,
	@ViaID INT = NULL,
	@TipoID INT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO DireccionProveedor (Direcci�nID, ProveedorID, V�aID, TipoDirecci�nID, 
			FechaCreaci�n, FechaModificaci�n)
        VALUES (@DireccionID, @ProveedorID, @ViaID, @TipoID, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM DireccionProveedor WHERE DireccionProveedorID = @DireccionProveedorID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM DireccionProveedor;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE DireccionProveedor
        SET Direcci�nID = @DireccionID,
			ProveedorID = @ProveedorID,
			V�aID = @ViaID,
			TipoDirecci�nID = @TipoID,
            FechaModificaci�n = GETDATE()
        WHERE DireccionProveedorID = @DireccionProveedorID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM DireccionProveedor WHERE DireccionProveedorID = @DireccionProveedorID;
    END
END

GO

-- ***** CRUD DIRECCIONUSUARIO *****

CREATE PROCEDURE CRUD_DireccionUsuario
(
    @Operation NVARCHAR(10),
	@DireccionUsuarioID INT = NULL,
	@DireccionID INT = NULL,
	@UsuarioID INT = NULL,
	@EdificioID INT = NULL,
	@ViaID INT = NULL,
	@TipoID INT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    -- Crear un nuevo registro
    IF @Operation = 'CREATE'
    BEGIN
        INSERT INTO DireccionUsuario (Direcci�nID, UsuarioID, EdificioID, V�aID, 
			TipoDirecci�nID, FechaCreaci�n, FechaModificaci�n)
        VALUES (@DireccionID, @UsuarioID, @EdificioID, @ViaID, @TipoID, GETDATE(), GETDATE());
    END
    -- Leer un registro
    ELSE IF @Operation = 'READ'
    BEGIN
        SELECT * FROM DireccionUsuario WHERE DireccionUsuarioID = @DireccionUsuarioID;
    END
	-- Leer todos los registros
	ELSE IF @Operation = 'READ ALL'
	BEGIN
		SELECT * FROM DireccionUsuario;
	END
    -- Actualizar un registro
    ELSE IF @Operation = 'UPDATE'
    BEGIN
        UPDATE DireccionUsuario
        SET Direcci�nID = @DireccionID,
			UsuarioID = @UsuarioID,
			EdificioID = @EdificioID,
			V�aID = @ViaID,
			TipoDirecci�nID = @TipoID,
            FechaModificaci�n = GETDATE()
        WHERE DireccionUsuarioID = @DireccionUsuarioID;
    END
    -- Eliminar un registro
    ELSE IF @Operation = 'DELETE'
    BEGIN
        DELETE FROM DireccionUsuario WHERE DireccionUsuarioID = @DireccionUsuarioID;
    END
END

GO

