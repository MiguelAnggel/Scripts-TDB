-- Creamos la base de datos Cursos:
CREATE DATABASE Cursos;

-- NOTA: SI SE TRABAJA DESDE CONSOLA ESCRIBA EL SIGUIENTE COMANDO:
use eldiario

-- Creamos la tabla ESTUDIANTES:
CREATE TABLE ESTUDIANTES(
    Id_estudiante int NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    Nombre varchar(50) NOT NULL,
    Sexo varchar(10) NOT NULL, 
    Fecha_nacimiento date NOT NULL)
    ENGINE=InnoDB;

-- Creamos la tabla ASIGNATURAS:
CREATE TABLE ASIGNATURAS(
    Id_asignatura int NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    Nombre varchar(50) NOT NULL,
    Descripcion varchar(100) NOT NULL)
    ENGINE=InnoDB;

-- InnoDB es uno de los motores de almacenamiento disponibles en MySQL y 
-- se utiliza comúnmente debido a sus características de transacciones ACID (Atomicidad, Consistencia, Aislamiento y Durabilidad), 
-- soporte para claves foráneas (foreign keys), 
-- y su capacidad para manejar cargas de trabajo de lectura/escritura intensivas.

-- Creamos la tabla ASIGNACIONES:
CREATE TABLE ASIGNACIONES(
    Id int,
    Id_asignatura int
);

-- Creamos los siguientes usuarios con sus respectivos privilegios:
CREATE USER “coordinador”@”localhost” IDENTIFIED BY “4895”;
GRANT ALL PRIVILEGES ON Cursos.* TO “coordinador”@”localhost” WITH GRANT OPTION; 
FLUSH PRIVILEGES;

CREATE USER 'docente'@'localhost' IDENTIFIED BY '4864';
GRANT ALL PRIVILEGES ON Cursos.ESTUDIANTES TO 'docente'@'localhost';
GRANT ALL PRIVILEGES ON Cursos.ASIGNATURAS TO 'docente'@'localhost';

CREATE USER 'estudiante'@'localhost' IDENTIFIED BY '4960';
GRANT ALL PRIVILEGES ON Cursos.ASIGNATURAS TO 'estudiante'@'localhost';
GRANT ALL PRIVILEGES ON Cursos.ASIGNACIONES TO 'estudiante'@'localhost';


-- NOTAS:
-- La cláusula WITH GRANT OPTION se utiliza en MySQL al conceder privilegios a un usuario para permitirle otorgar
-- esos mismos privilegios a otros usuarios. Cuando concedes privilegios a un usuario con WITH GRANT OPTION, 
-- le estás dando permiso para otorgar esos mismos privilegios a otros usuarios.

-- NOTAS: 
-- FLUSH PRIVILEGES; es un comando en MySQL que se utiliza para recargar la información de los privilegios de usuario que se encuentran en la tabla de privilegios del sistema. 
-- Cuando se realizan cambios en los permisos de usuario o en la tabla de privilegios (por ejemplo, al agregar, modificar o eliminar usuarios o privilegios), 
-- es necesario ejecutar FLUSH PRIVILEGES para asegurarse de que los cambios surtan efecto inmediatamente.