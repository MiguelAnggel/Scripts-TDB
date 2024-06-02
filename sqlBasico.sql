#Creamos una base de datos
create database holamundo;
show databases;  # para visualizar las bases de datos que hemos creado
#Lo de abajo es para que la consulta sepa que base de datos se va a utilizar
use holamundo;

#Forma de crear una tabla en este caso se llama animales
CREATE TABLE animales(
	#Ponemos un identificador en este caso sera id
    id int, #Tipo de dato del identificador
    
    #Columnas creadas:
    tipo varchar(255), #Dentro del parentesis colocamos que tan largo queremos que sea
    estado varchar(255),
    PRIMARY KEY (id) #Creamos una llave primaria para nuestro identificador id
    
);

#La manera de como insertar datos a una tabla en este caso a la tabla animales 
-- INSERT INTO animales(tipo, estado) values('Mikel', 'feliz');
-- L alinea de arriba no sera ejecutada, la comentamos

#Se modifico una columna, se le agrego el auto incremento
ALTER TABLE animales MODIFY COLUMN id int auto_increment;
#Utilizamos el comando "valuees" para asignar valores a las columnas


SHOW CREATE TABLE animales;
#Lo que aaperece cuando ejecutamos el comando anterior
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales(tipo, estado) values('Mikel', 'feliz');
INSERT INTO animales(tipo, estado) values('spike', 'feliz');
INSERT INTO animales(tipo, estado) values('ruben', 'enojado');

#BUSQUEDAS:
#comando para listar todo lo que se a creado
SELECT * FROM animales;
#Lo de abajo es para listar solo un registro, utilizamos la palabra reservada where y el numero de identificador
SELECT * FROM animales WHERE id = 1;
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'spike';

#Actualizar los regsitros que ya se encuentran en nuestra base de datos:
UPDATE animales SET estado = 'feliz' where id = 3;
#Otra vez buscamos nuestros registros
SELECT * FROM animales;

#Eliminar un regsitro de la tabla de animales
DELETE FROM animales where estado = 'enojado'; #ESta consulta no arrogara un error 
#La forma correcta de elinimar un regsitro es con el id o clave identificador
DELETE FROM animales where id = 4; # Esto nos elimina el id = 4 con todos sus datos
#Otra vez buscamos nuestros registros
SELECT * FROM animales;
