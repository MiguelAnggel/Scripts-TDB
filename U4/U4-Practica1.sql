-- Se creo la base datos llamada esquemas:
CREATE DATABASE esquemas;

-- Nota, si usas la consola escribe el siguiente comando:
use esquemas;

-- Se creo la tabla usuarios con la siguiente estructura:
CREATE TABLE usuarios(id int primary key,nombre varchar(50),sexo varchar(10),fecha nacimento date);

-- Se creo la tabla asignaturas con la la siguiente estructura:
CREATE TABLE asignaturas(id_mat int primary key,nombre varchar(50),descripcion varchar(100));

-- Mostramos la tablas que se crearon:
show tables;

-- Se ingresaron 4 registros a la tabla usuarios:
INSERT INTO usuarios VALUES("1","Miguel","M","2004-03-27"),("2","Stiven","M","2003-04.17"),("3","Andrea","F","2002-12-11"),("4","Juan","M","2001-09-19");

-- Se ingresaron 3 registros a la tabla asignaturas:
INSERT Into asignaturas VALUES("1","Calculo","Calculo en 1 variable"),("2","Algebra Lineal","Matrices y determinantes"),("3","Circuitos","Corrientes Electricas");

-- Se agrego el comando begin y se inserto un nuevo dato en la tabla usuarios:
begin;

INSERT INTO usuarios VALUES("5","Marcelo","M","2000-04-20");

-- Se muestra la tabla usuarios con los datos ingresados:
select * from usuarios;

-- Escribimos el comando START TRANSACTION para la tabla usuarios:
START TRANSACTION;

-- Escribimos el comando SET AUTOCOMMIT = 0:
SET AUTOCOMMIT = 0;

-- Ingresamos un nuevo dato en la tabla usurios, su id y nombre(EScriir tu propio nombre):
INSERT INTO usuarios(id,nommbre)VALUES("6","Miguel Montoya");

-- Escribimos el comando COMMIT:
COMMIT;

-- Escribimos el comando rollback:
rollback;

-- Mostramos la tabla usuarios actualizada:
select * from usuarios;

-- Escribimos el comando START TRANSACTION para la tabla asignaturas:
START TRANSACTION;

-- Escribimos el comando SET AUTOCOMMIT = 0:
SET AUTOCOMMIT = 0;

-- Ingresamos un nuevo datos en la tabla asignaturas:
INSERT INTO asignaturas(id_mat,nombre,descripcion)Values("4","Estructura de datos","pilas y colas");

-- Escribimos el comando COMMIT:
COMMIT;

-- Escribimos el comando rollback:
rollback;

-- Mostramos la tabla asiginaturas actualizada:
select * from asignaturas;

-- NOTAS:
-- El comando BEGIN en SQL se utiliza para iniciar una transacción. 
-- Una transacción es una secuencia de operaciones que se ejecutan como una sola unidad de trabajo.
-- Esto significa que todas las operaciones dentro de una transacción se realizan o ninguna se realiza. 
-- El comando BEGIN marca el inicio de la transacción y el comando COMMIT marca el final de la transacción, 
-- confirmando que todas las operaciones dentro de la transacción se han completado correctamente y
-- se deben guardar permanentemente en la base de datos. 
-- Si algo sale mal y se necesita deshacer las operaciones realizadas dentro de la transacción,
-- se puede utilizar el comando ROLLBACK para revertir todas las operaciones realizadas desde el inicio de la transacción.