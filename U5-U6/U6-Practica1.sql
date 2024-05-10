-- Usamos la base de datos de la practica anteiror llamada prueba  
-- La ponemos en uso:
use prueba;

-- Se creo la siguiente funcion:
DELIMITER $$
CREATE FUNCTION calcularvalorventa(costo FLOAT, porganancia INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE vventa FLOAT DEFAULT 0;
    SET vventa = costo + costo * porganancia / 100;
    RETURN vventa;
END $$
DELIMITER ;

-- Usando la funcion con la siguiente instruccion:
select calcularvalorventa(2000,15) as valorventa;

-- Se creo la tabla productos con la siguiente estructura:
Create table productos(
    Codigo int not null primary key,
    Nombre varchar(30) not null,
    Costo float not null,
    Porganancia int not null,
    Cantidad float not null
);

-- Se Insertaron varios datos, como se muestra:
Insert into productos values(1,"arroz libra",850,15,10);
Insert into productos values(2,"gasesosa 350",800,20,30);
Insert into productos values(3,"avena alpina vaso",1300,10,45);
Insert into productos values(4,"menta helada",25,100,150);
Insert into productos values(5,"salsa tomate fruco 1000gr",5250,30,8);

-- Verificamos si la función se hizo adecuadamente como se muestra:
select codigo, nombre, costo, calcularvalorventa(costo, Porganancia) as valorventa from
productos;

-- EXPLICACION DEL CODIGO:

/* Esta función toma dos parámetros de entrada: costo, que es un número de punto flotante que 
representa el costo de un artículo, y porganancia, que es un número entero que representa 
el porcentaje de ganancia deseado. 

La función calcula el valor de venta de un artículo utilizando la fórmula:

valor de venta = costo + costo * porcentaje de ganancia/100

Luego, devuelve este valor de venta calculado.

Por lo tanto, la función calcularvalorventa es útil cuando necesitas calcular el valor de venta 
de un artículo basado en su costo y un porcentaje de ganancia específico.*/