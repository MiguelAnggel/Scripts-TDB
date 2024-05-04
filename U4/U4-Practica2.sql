-- Se creo la base datos llamada T:
CREATE DATABASE T;

-- Nota, si usas la consola escribe el siguiente comando:
use T;

--  Se creo la tabla Cliente con la siguiente estructura:
CREATE TABLE Cliente(
    id_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(20) NOT NULL,
    Saldo INT
) ENGINE=InnoDB;

-- Se insertaron los siguientes datos en la tabla Clientes:
INSERT INTO Cliente VALUES(1,"Juan",10000),(2,"Pedro",5000);
-- Se muestra la tabla Cliente:
select * from Cliente;

-- Haremos un traspaso de la cuenta de Juan a Pedro por 1000 pesos

START TRANSACTION;

-- Verficando que la cuenta de Juan exista y tenga saldo suficente:
SELECT Saldo FROM Cliente WHERE Nombre = "Juan";
-- Verficando que la cuenta de Pedro exista y que saldo tiene:
SELECT Saldo FROM Cliente WHERE Nombre = "Pedro";
-- Restando los 1000 pesos a la cuenta de Juan:
UPDATE Cliente SET Saldo= Saldo - 1000 WHERE Nombre = "Juan";
-- Verificando que la cuenta de Juan ya tiene 1000 pesos menos, es decir ahora tiene 9000:
SELECT Saldo FROM Cliente WHERE Nombre = "Juan";
-- Sumando los 1000 pesos a la cuenta de Pedro:
UPDATE Cliente SET Saldo= Saldo + 1000 WHERE Nombre = "Pedro";
-- Verificando que la cuenta de Pedro ya tiene 1000 pesos mas en su cuenta:
SELECT Saldo FROM Cliente WHERE Nombre = "Pedro";
-- Escribimos el comando ROLLBACK:
ROLLBACK;
-- Volvemos a mostrar el estado inicial ya que con el rollback se deshace:
SELECT * FROM Cliente;
-- Escribimos el comando COMMIT para terminar la transaccion:
COMMIT;
-- Volvemos a mostrar el estado actual y ahora si se visualizan los cambios hechos en la transaccion:
SELECT * FROM Cliente;

-- NOTAS:
-- El comando BEGIN en SQL se utiliza para iniciar una transacción. 
-- Una transacción es una secuencia de operaciones que se ejecutan como una sola unidad de trabajo.
-- Esto significa que todas las operaciones dentro de una transacción se realizan o ninguna se realiza. 
-- El comando BEGIN marca el inicio de la transacción y el comando COMMIT marca el final de la transacción, 
-- confirmando que todas las operaciones dentro de la transacción se han completado correctamente y
-- se deben guardar permanentemente en la base de datos. 
-- Si algo sale mal y se necesita deshacer las operaciones realizadas dentro de la transacción,
-- se puede utilizar el comando ROLLBACK para revertir todas las operaciones realizadas desde el inicio de la transacción.