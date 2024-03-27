-- Creamos la base de datos eldiario:
CREATE DATABASE eldiario;

-- NOTA: SI SE TRABAJA DESDE CONSOLA ESCRIBA EL SIGUIENTE COMANDO:
use eldiario

-- Se creo la tabla clientes con la siiguiente estructura:
CREATE TABLE clientes(
    id_cliente int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nombre varchar(35) NOT NULL,
    direccion varchar(35) NOT NULL, 
    correo varchar(25) NOT NULL, 
    id_vendedor int(11) NOT NULL) 
    ENGINE=InnoDB;

-- Se creo la tabla editores con la siguiente estructura:
CREATE TABLE editores(
    id_editor int(11) NOT NULL PRIMARY KEY, 
    nombre varchar(35) NOT NULL, 
    correo varchar(25) NOT NULL, 
    seccion varchar(15) NOT NULL) 
    ENGINE=InnoDB;

-- NOTA:
-- InnoDB es uno de los motores de almacenamiento disponibles en MySQL y 
-- se utiliza comúnmente debido a sus características de transacciones ACID (Atomicidad, Consistencia, Aislamiento y Durabilidad), 
-- soporte para claves foráneas (foreign keys), 
-- y su capacidad para manejar cargas de trabajo de lectura/escritura intensivas.

-- Se creo la tabla noticia publicada con la siguiente estructura:
CREATE TABLE noticia_publicada (
    id_noticia int(11) NOT NULL, 
    id_editor int(11) NOT NULL, 
    fecha_edicion date NOT NULL, 
    fecha_aprobacion date NOT NULL) 
    ENGINE=InnoDB;

-- Se creo la tabla notica registrada con la siguiente estructura:
CREATE TABLE noticia_registrada(
    id_noticia int(11) NOT NULL PRIMARY KEY, 
    descripción longtext NOT NULL,
    id_periodista int(11) NOT NULL, 
    fecha_registro date NOT NULL) 
    ENGINE=InnoDB;

-- Se creo la tabla periodistas con la siguiente estructura:
CREATE TABLE periodistas(
    id_periodistas int(11) NOT NULL PRIMARY KEY, 
    nombre varchar(45) NOT NULL,
    correo varchar(25) NOT NULL, 
    seccion varchar(15) NOT NULL) 
    ENGINE=InnoDB;

-- Se creo la tabla vendedor con la siguiente estructura:
CREATE TABLE vendedor(
    id_vendedor int(11) NOT NULL PRIMARY KEY, 
    nombre varchar(35) NOT NULL,
    correo varchar(25) NOT NULL) 
    ENGINE=InnoDB;

-- Se añade ADD FOREIGN KEY:
ALTER TABLE clientes ADD FOREIGN KEY (id_vendedor) REFERENCES
vendedor (id_vendedor);

-- Se añade ADD FOREIGN KEY:
ALTER TABLE noticia_publicada ADD FOREIGN KEY (id_noticia) REFERENCES noticia_registrada (id_noticia), ADD FOREIGN KEY (id_editor) REFERENCES editores (id_editor);

-- Se añade ADD FOREIGN KEY:
ALTER TABLE noticia_registrada ADD FOREIGN KEY (id_periodista) REFERENCES periodistas (id_periodistas);

-- NOTAS:
-- ADD FOREIGN KEY se utiliza para establecer una relación entre tablas, lo que garantiza que los datos en una tabla estén relacionados de manera coherente con los datos en otra tabla. 
-- Esto es fundamental para mantener la integridad de los datos en una base de datos relacional.

-- NOTAS:
-- La palabra reservada NOT NULL significa: indica que los valores en esa columna no pueden ser nulos, es decir, no pueden estar vacíos o sin valor.
-- LONGTEXT es un tipo de datos en SQL que se utiliza para almacenar cadenas de texto muy largas. 
-- Es parte de la familia de tipos de datos de texto y se usa específicamente cuando se espera que los datos de texto excedan 
-- los límites de almacenamiento de tipos de datos de texto más cortos, como VARCHAR o TEXT.