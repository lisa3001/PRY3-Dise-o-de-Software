CREATE DATABASE DBCondosDesigner;

---------------------------------------------------------

USE DBCondosDesigner;
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Vivienda(
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) UNIQUE NOT NULL,
	tipoAgua varchar(30) NOT NULL,
	cantidadPisos int,
	areaTerreno int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Piso(
	ID int PRIMARY KEY NOT NULL,
	identificador char(100) UNIQUE NOT NULL,
	longitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.PisosXVivienda(
	IDPiso int NOT NULL,
	IDVivienda int NOT NULL,
	PRIMARY KEY (IDPiso, IDVivienda),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDVivienda) REFERENCES Vivienda(ID),
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Dormitorio(
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	dormitorioPrincipal bit NOT NULL,
	longitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.DormitoriosXPiso(
	IDPiso int NOT NULL,
	IDDormitorio int NOT NULL,
	PRIMARY KEY (IDPiso, IDDormitorio),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDDormitorio) REFERENCES Dormitorio(ID),
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Banio(
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	tipo varchar(20) NOT NULL,
	longitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.BaniosXPiso(
	IDPiso int NOT NULL,
	IDBanio int NOT NULL,
	IDDormitorio int,
	PRIMARY KEY (IDPiso, IDBanio),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDBanio) REFERENCES Banio(ID),
	FOREIGN KEY (IDDormitorio) REFERENCES Dormitorio(ID),
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Cocina(
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	longitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.CocinaXPiso(
	IDCocina int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDCocina),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDCocina) REFERENCES Cocina(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Sala(
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	longitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.SalaXPiso(
	IDSala int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDSala),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDSala) REFERENCES Sala(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Comedor(
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	longitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.ComedorXPiso(
	IDComedor int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDComedor),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDComedor) REFERENCES Comedor(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Escalera(
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	tipo varchar(50) NOT NULL,
	longitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.EscalerasXPiso(
	IDEscalera int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDEscalera),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDEscalera) REFERENCES Escalera(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Terraza(
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	longitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.TerrazasXPiso(
	IDTerraza int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDTerraza),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDTerraza) REFERENCES Terraza(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.BBQArea (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	logitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.BBQAreaXPiso(
	IDBBQ int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDBBQ),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDBBQ) REFERENCES BBQArea(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Cochera (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	logitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.CocherasXPiso(
	IDCochera int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDCochera),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDCochera) REFERENCES Cochera(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Oficina (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	logitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.OficinasXPiso(
	IDOficina int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDOficina),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDOficina) REFERENCES Oficina(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Bodega (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	logitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.BodegasXPiso(
	IDBodega int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDBodega),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDBodega) REFERENCES Bodega(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.WalkingCloset (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	logitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.WalkingClosetXPiso(
	IDWC int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDWC),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDWC) REFERENCES WalkingCloset(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.AreaLavado (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	logitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.AreasLavadoXPiso(
	IDLavado int NOT NULL,
	IDPiso int NOT NULL,
	PRIMARY KEY (IDPiso, IDLavado),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDLavado) REFERENCES AreaLavado(ID)
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.Balcon (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	logitud int NOT NULL,
	anchura int NOT NULL
);
GO

------------------------------------------------------------
------------------------------------------------------------

CREATE TABLE dbo.BalconesXPiso(
	IDBalcon int NOT NULL,
	IDPiso int NOT NULL,
	IDHabitacion int NOT NULL,
	PRIMARY KEY (IDPiso, IDBalcon),
	FOREIGN KEY (IDPiso) REFERENCES Piso(ID),
	FOREIGN KEY (IDBalcon) REFERENCES Balcon(ID)
);
GO

----------------------------------------------------------
----------------------------------------------------------

CREATE TABLE dbo.Arquitecto (
	nombre varchar(50) NOT NULL,
	apellido1 varchar(50) NOT NULL,
	apellido2 varchar(50) NOT NULL,
	aniosExperiencia int NOT NULL,
	nivel varchar(50) NOT NULL,
	usuario varchar(50) UNIQUE NOT NULL, 
	contrasenia varchar(30) NOT NULL
);
GO

----------------------------------------------------------
----------------------------------------------------------

CREATE TABLE dbo.Condominio (
	ID int PRIMARY KEY NOT NULL,
	nombre varchar(100) NOT NULL,
	direccion varchar(100) NOT NULL,
	cantidadBloques int NOT NULL 
);
GO

----------------------------------------------------------
----------------------------------------------------------

CREATE TABLE dbo.Bloque (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(100) NOT NULL,
	cantidadCasas int NOT NULL 
);
GO

----------------------------------------------------------
----------------------------------------------------------

CREATE TABLE dbo.BloquesXCondominio (
	idBloque int NOT NULL,
	idCondominio int NOT NULL, 
	PRIMARY KEY(idBloque, idCondominio),
	FOREIGN KEY (idBloque) REFERENCES Bloque(ID),
	FOREIGN KEY (idCondominio) REFERENCES Condominio(ID)
);
GO

----------------------------------------------------------
----------------------------------------------------------

CREATE TABLE dbo.Duenio (
	nombre varchar(50) not null,
	apellido1 varchar(50) not null,
	apellido2 varchar(50) not null,
	cedula varchar(9) primary key,
	telefono varchar(10) not null
);
GO

----------------------------------------------------------
----------------------------------------------------------

CREATE TABLE dbo.Casa (
	ID int PRIMARY KEY NOT NULL,
	identificador varchar(50) NOT NULL,
	idVivienda int NOT NULL,
	cedulaDuenio varchar(9) not null 
	FOREIGN KEY (idVivienda) REFERENCES Vivienda(ID),
	FOREIGN KEY (cedulaDuenio) REFERENCES Duenio(cedula)
);
GO

----------------------------------------------------------
----------------------------------------------------------

CREATE TABLE dbo.AreasComunes (
	ID int primary key,
	idCondominio int not null,
	cantidadPiscinas int not null,
	cantidadGimnasios int not null,
	cantidadGuarderias int not null,
	cantidadCanchasDeFutbol int not null,
	cantidadCnachasTenis int not null,
	cantidadParques int not null,
	FOREIGN KEY (idCondominio) REFERENCES Condominio(ID)
);
GO

---------------------------------------------------------
---------------------------------------------------------

CREATE TABLE dbo.ID(
	ID int PRIMARY KEY,
	cantidadViviendas int NOT NULL,
	cantidadPisos int NOT NULL,
	cantidadDormitorios int NOT NULL,
	cantidadBanios int NOT NULL,
	cantidadCocinas int NOT NULL,
	cantidadSalas int NOT NULL,
	cantidadComedores int NOT NULL,
	cantidadEscaleras int NOT NULL,
	cantidadTerrazas int NOT NULL,
	cantidadBBQs int NOT NULL,
	cantidadCocheras int NOT NULL,
	cantidadOficinas int NOT NULL,
	cantidadBodegas int NOT NULL,
	cantidadWCs int NOT NULL,
	cantidadAreasLavado int NOT NULL,
	cantidadBalcon int NOT NULL,
	cantidadArquitectos int NOT NULL,
);
GO

----------------------------------------------------------
----------------------------------------------------------

CREATE TABLE dbo.ViviendasXCondominio (
	idVivienda int NOT NULL,
	idCondominio int NOT NULL, 
	PRIMARY KEY(idVivienda, idCondominio),
	FOREIGN KEY (idVivienda) REFERENCES Vivienda(ID),
	FOREIGN KEY (idCondominio) REFERENCES Condominio(ID)
);
GO

-------------------------------------------------------
-------------------------------------------------------

INSERT INTO dbo.ID VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);