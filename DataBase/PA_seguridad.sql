USE `SEGURIDAD` ;

DELIMITER //
/*
  Devuelve el usuario, si existe en la base de datos
*/
DROP PROCEDURE IF EXISTS AutenticarUsuario;
CREATE PROCEDURE  AutenticarUsuario(in _email VARCHAR(50), in _password VARCHAR(60), in _estado CHAR(4))
BEGIN
  SELECT * FROM Usuario WHERE email=_email AND password =_password AND estado!=_estado;
END;
//

DELIMITER //
/*
  Crea una nueva cuenta de usuario
*/
DROP PROCEDURE IF EXISTS CrearUsuario;
CREATE PROCEDURE CrearUsuario(in email VARCHAR(50), in password NVARCHAR(60),
 in tipo CHAR(4), in estado CHAR(4) )
BEGIN
 START TRANSACTION;
  INSERT INTO Usuario VALUES(DEFAULT, email, password, tipo, estado);
  AutenticarUsuario(email, password, estado);
 COMMIT;
END;
//
