-- NOTA: Utilizando la base de datos eldiario:

-- NOTA: SI SE TRABAJA DESDE CONSOLA ESCRIBA EL SIGUIENTE COMANDO:
use eldiario

-- Se creo los siguientes usuarios con sus respectivos privilegios:

-- Administrador (todos los privilegios sobre la base de daros incluido el crear otros usuarios):
CREATE USER “admin_root”@”localhost” IDENTIFIED BY “12345”;
GRANT ALL PRIVILEGES ON eldiario.* TO “admin_root”@”localhost” WITH GRANT OPTION; 
FLUSH PRIVILEGES;

-- Periodista (tiene todos los privilegios sobre las tablas periodistas y noticia_registrada):
CREATE USER 'periodista'@'localhost' IDENTIFIED BY '45678';
GRANT ALL PRIVILEGES ON eldiario.periodistas TO 'periodista'@'localhost';
GRANT ALL PRIVILEGES ON eldiario.noticia_registrada TO 'periodista'@'localhost';

-- Editor (tiene todos los privilegios sobre la tabla editores y noticia_publicada):
CREATE USER 'editor'@'localhost' IDENTIFIED BY '45678';
GRANT ALL PRIVILEGES ON eldiario.editor TO 'periodista'@'localhost';
GRANT ALL PRIVILEGES ON eldiario.noticia_publicada TO 'periodista'@'localhost';

-- NOTAS:
-- La cláusula WITH GRANT OPTION se utiliza en MySQL al conceder privilegios a un usuario para permitirle otorgar
-- esos mismos privilegios a otros usuarios. Cuando concedes privilegios a un usuario con WITH GRANT OPTION, 
-- le estás dando permiso para otorgar esos mismos privilegios a otros usuarios.

-- NOTAS: 
-- FLUSH PRIVILEGES; es un comando en MySQL que se utiliza para recargar la información de los privilegios de usuario que se encuentran en la tabla de privilegios del sistema. 
-- Cuando se realizan cambios en los permisos de usuario o en la tabla de privilegios (por ejemplo, al agregar, modificar o eliminar usuarios o privilegios), 
-- es necesario ejecutar FLUSH PRIVILEGES para asegurarse de que los cambios surtan efecto inmediatamente.