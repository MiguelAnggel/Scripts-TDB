-- Se creo la base de datos tienda
CREATE DATABASE tienda;

-- Se creo la tabla usuarios
CREATE TABLE usuarios(
    -- Se creo id(llave identificador primaria), con auto incremento:
    id int PRIMARY KEY NOT null AUTO_INCREMENT,

    -- Columnas Creadas:
    Nombre varchar(12),
    Apellido_p varchar(15),
    Apellido_m varchar(15),
    Clave varchar(5)

);

-- Se insertaron los siguientes registros a la tabla usuarios:
INSERT INTO usuarios(Nombre, Apellido_p, Apellido_m, Clave) values('Juan', 'Perez', 'Cruz', 'jp1');
INSERT INTO usuarios(Nombre, Apellido_p, Apellido_m, Clave) values('Marisol', 'Zarate', 'Ruiz', 'mzr2');
INSERT INTO usuarios(Nombre, Apellido_p, Apellido_m, Clave) values('Antonio', 'Molina', 'Meraz', 'amm3');
INSERT INTO usuarios(Nombre, Apellido_p, Apellido_m, Clave) values('Victor', 'Godines', 'Delgado', 'vgd4');
INSERT INTO usuarios(Nombre, Apellido_p, Apellido_m, Clave) values('Juan', 'Galvan', 'Izaguirre', 'agi5');

-- Se muestran los registros ingresados:
SELECT * FROM usuarios;

-- Se borro el registro cuya clave es jp1:
DELETE FROM usuarios where id = 1; -- Esto elimina el id = 1 con todos sus datos
SELECT * FROM usuarios; -- Mostramos la tabla

-- Se eliminan los usuarios que se llamen Juan:
DELETE FROM usuarios where id = 5;
SELECT * FROM usuarios; -- Mostramos la tabla con los datos eliminados

-- Actualizamos la clave a jpc1 del usuarios con apellido Perez:
INSERT INTO usuarios(Nombre, Apellido_p, Apellido_m, Clave) values('Juan', 'Perez', 'Cruz', 'jpc1');
SELECT * FROM usuarios; -- Mostramos la tabla

--  Se creo una segunda tabla llamada articulos:
CREATE TABLE Articulos(
    clave int PRIMARY KEY NOT null AUTO_INCREMENT,

    -- Columnas Creadas:
    Nombre varchar(12),
    Descripcion varchar(15),
    Precio float,
    Cantidad int

);

-- Se insertaron los siguientes registros a la tabla Articulos:
INSERT INTO Articulos(Nombre, Descripcion, Precio, Cantidad) values('Aceita', 'Nutrioli', 52, 20);
INSERT INTO Articulos(Nombre, Descripcion, Precio, Cantidad) values('Harina', 'Selecta', 20, 100);
INSERT INTO Articulos(Nombre, Descripcion, Precio, Cantidad) values('Lentejas', 'Amapola', 15, 50);
INSERT INTO Articulos(Nombre, Descripcion, Precio, Cantidad) values('Atun', 'Herdez', 18, 30);
INSERT INTO Articulos(Nombre, Descripcion, Precio, Cantidad) values('Pinol', 'AIEn', 22, 50);

-- Mostramos la Tabla Articulos:
SELECT * FROM Articulos;

--  Se eliminan los articulos que sean Aceite:
DELETE FROM Articulos where clave = 1;
SELECT * FROM Articulos; -- Mostramos la tabla con los articulos eliminados

--  Se actualiza la cantidad a 80 y el precio a 25 del articulo con codigo 2:
UPDATE Articulos SET Cantidad = 80 where clave = 2;
SELECT * FROM Articulos; -- Mostramos la tabla con la nueva actualizacion

-- Se actualiza la cantidad a 100 de todos los registros con cantidades=50:
UPDATE Articulos SET Cantidad = 100 where clave = 3;
UPDATE Articulos SET Cantidad = 100 where clave = 5;
SELECT * FROM Articulos; -- Mostramos la tbals con la nueva actualizacion





-- PRACTICA 2.3 SUBCONSULTAS
-- Creamos la tabla ordenes:
CREATE TABLE ORDENES(
    -- Aqui no se utilizo llave primaria y tampoco auto incremento:
    IDorden int KEY not null ,
    IDcliente int (9),
    IDempleado int(9),
    fechaorden date
);
-- Mostramos la tabla ORDENES:
SELECT * FROM ORDENES;

-- Se insertaron los siguientes registros a la tabla ORDENES:
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232567','3456', '4567', '20240606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232568','3457', '4568', '20250606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232569','3458', '4569', '20260606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232570','3459', '4570', '20270606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232571','3460', '4571', '20280606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232572','3461', '4572', '20290606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232573','3462', '4573', '20300606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232574','3463', '4574', '20310606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232575','3464', '4575', '20320606' );
INSERT INTO ORDENES(IDorden, IDcliente, IDempleado, fechaorden) values('232576','3465', '4576', '20330606' );
-- Mostramos la tabla ORDENES:
SELECT * FROM ORDENES;

-- Creamos la tabla productos:
CREATE TABLE PRODUCTOS(
    -- Se creo IDDproducto(llave identificador primaria), con auto incremento:
    IDDproducto int PRIMARY KEY NOT null AUTO_INCREMENT,

    -- Columnas creadas:
    Nombreproducto varchar(30),
    CantidadPorUnidad int(20),
    PrecioUnitario float(10),
    UnidadesdeStock int(30),
    Unidadespedidas int(30)

);
SELECT * FROM PRODUCTOS;
-- Se insertaron los siguientes registros a ala tabla productos
INSERT INTO PRODUCTOS(Nombreproducto, CantidadPorUnidad, PrecioUnitario, UnidadesdeStock, Unidadespedidas) values('Agua', 10, 10, 5, 20);
INSERT INTO PRODUCTOS(Nombreproducto, CantidadPorUnidad, PrecioUnitario, UnidadesdeStock, Unidadespedidas) values('Galletas', 10, 15, 8, 10);
INSERT INTO PRODUCTOS(Nombreproducto, CantidadPorUnidad, PrecioUnitario, UnidadesdeStock, Unidadespedidas) values('Aguacate', 5, 10, 20, 20);
INSERT INTO PRODUCTOS(Nombreproducto, CantidadPorUnidad, PrecioUnitario, UnidadesdeStock, Unidadespedidas) values('leche', 14, 9, 6, 30);
INSERT INTO PRODUCTOS(Nombreproducto, CantidadPorUnidad, PrecioUnitario, UnidadesdeStock, Unidadespedidas) values('Manzana', 10, 7, 5, 30);
-- Mostramos la tabla PRODUCTOS:
SELECT * FROM PRODUCTOS;

-- Creamos la tabla cliente:
CREATE TABLE cliente(
    -- Se creo IDcliente(llave identificador primaria), con auto incremento:
    IDcliente int PRIMARY KEY NOT null AUTO_INCREMENT,
    
    -- Columnas creadas:
    ApellidoPaterno varchar(15),
    ApellidoMaterno varchar(15),
    Fecha_nacimiento varchar (30),
    Fecha_contratacion varchar(30),
    Direccion varchar (30),
    Ciudad varchar(30),
    Pais varchar(30),
    Codigo_postal int(9),
    Telefonodecasa int(15)
);
SELECT * FROM cliente;

-- Se insertaron los siguientes registros a la tabla Cliente:
INSERT INTO cliente(ApellidoPaterno, ApellidoMaterno, Fecha_nacimiento, Fecha_contratacion, Direccion, Ciudad, Pais, Codigo_postal, Telefonodecasa) values ('Montoya', 'Cruz', '04-03-27', '05-12-10', 'Calle Huertas #14', 'Valles', 'España', 71020, 481446622);
INSERT INTO cliente(ApellidoPaterno, ApellidoMaterno, Fecha_nacimiento, Fecha_contratacion, Direccion, Ciudad, Pais, Codigo_postal, Telefonodecasa) values ('Perez', 'Gomez', '02-03-05', '09-11-10', 'Calle Huertas #15', 'Valles', 'Mexico', 71020, 481536816);
INSERT INTO cliente(ApellidoPaterno, ApellidoMaterno, Fecha_nacimiento, Fecha_contratacion, Direccion, Ciudad, Pais, Codigo_postal, Telefonodecasa) values ('Castillo', 'Bautista', '04-12-11', '07-12-10', 'Calle Estadio #345', 'Altamira', 'Mexico', 71014, 481063680);
INSERT INTO cliente(ApellidoPaterno, ApellidoMaterno, Fecha_nacimiento, Fecha_contratacion, Direccion, Ciudad, Pais, Codigo_postal, Telefonodecasa) values ('Ventura', 'Delgado', '01-03-20', '05-9-10', 'Calle Guatemala #214', 'Valles', 'Mexico', 71013, 48153090);
-- Mostramos la tabla cliente:
SELECT * FROM cliente;
-- Mostramos la tabla Productos:
SELECT * FROM Productos;

-- Se muestran las ordenes que fueron encargados por el empleado con el id mas alto:
SELECT * FROM ORDENES where IDcliente = (select MAX(IDcliente) from ORDENES);

-- Se muestran los productos que tienen un precio menor que el prcio promedio:
SELECT * FROM PRODUCTOS where IDDProducto = (select AVG(IDDProducto) from PRODUCTOS);

-- Se muestra la cantidad total de ordenes que fue ordenado por el ultimo cliente:
SELECT COUNT(IDorden) FROM ORDENES where IDcliente = (SELECT MAX(IDcliente) FROM ORDENES);