-- PRACTICA 2.4
-- Se creo una base de datos llamada tienda2:
CREATE DATABASE Tienda2;

-- Se creo una tabla llamada clientes:
CREATE TABLE clientes(
	-- Se creo Codigo(llave identificador primaria), con auto incremento:
    Codigo int PRIMARY KEY not null AUTO_INCREMENT,

    -- Columnas creadas:
    Nombre varchar(20),
    Edad int,
    Direccion varchar (30),
    Salario float
    
);

-- Se ingresaron los siguientes 7 registros a la tabla clientes:
INSERT INTO clientes(Nombre, Edad, Direccion, Salario) values('Miguel', 19, 'Emiliano zapata, Cd vallles', 12000);
INSERT INTO clientes(Nombre, Edad, Direccion, Salario) values('Rosalinda', 19, 'Infonavit, Tanquian', 1300);
INSERT INTO clientes(Nombre, Edad, Direccion, Salario) values('Diana', 19, 'Consuelo, Cd vallles', 1500);
INSERT INTO clientes(Nombre, Edad, Direccion, Salario) values('Victor', 23, 'Fco villa, Cd vallles', 500);
INSERT INTO clientes(Nombre, Edad, Direccion, Salario) values('Robin', 20, 'Tecnologico, Cd vallles', 1355.5);
INSERT INTO clientes(Nombre, Edad, Direccion, Salario) values('Manuel', 25, 'Doracely, Cd vallles', 3000);
INSERT INTO clientes(Nombre, Edad, Direccion, Salario) values('Samuel', 18, 'Emiliano zapata, Cd vallles', 500);

-- Se creo una vista de la tabla clientes que utiliza el Nombre y la Edad:
CREATE VIEW CLIENTES_VIEW AS SELECT Nombre, Edad FROM clientes;
-- Mostramos la vista CLIENTES_VIEW:
SELECT * FROM CLIENTES_VIEW;

-- Se actualizo el registro con nombre Diana a una edad de 40:
UPDATE CLIENTES_VIEW SET Edad = 40 where Nombre = 'Diana'; -- Ocurre un problema debido a La KEY column 
UPDATE CLIENTES_VIEW SET Edad = 40 where Codigo = 3;
UPDATE clientes set Edad = 40 where Codigo = 3;         -- De esta manera si puedo actualizar el registro
-- Mostramos la Tabla clientes:
SELECT * FROM clientes;
-- Mostramos la vista CLIENTES_VIEW:
SELECT * FROM CLIENTES_VIEW;