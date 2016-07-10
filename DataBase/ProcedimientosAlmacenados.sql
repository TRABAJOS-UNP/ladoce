Use `BDLA12` ;

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
  Crea una reserva, con estado por defecto EN_PROCESO
*/
DROP PROCEDURE IF EXISTS CrearReserva;
CREATE PROCEDURE CrearReserva(in idCliente INT, in fechaReserva DATE)
BEGIN
  DECLARE default_estado CHAR(4);
  SET default_estado = (SELECT codigo FROM Parametro WHERE valor='EN_PROCESO');
  START TRANSACTION;
    INSERT INTO Reserva VALUES(DEFAULT, NOW(), fechaReserva, default_estado, O.O, idCliente);
  COMMIT;
END;
//

DELIMITER //
/*
  Devuelve todo el contenido de la tabla Parametro
*/
DROP PROCEDURE IF EXISTS ConsultarParametros;
CREATE PROCEDURE ConsultarParametros()
  SELECT * FROM Parametro;
//

DELIMITER //
/*
  Crea una nueva cuenta de usuario
*/
DROP PROCEDURE IF EXISTS CrearUsuario;
CREATE PROCEDURE CrearUsuario(in email VARCHAR(50), in password NVARCHAR(60),
 in nombres NVARCHAR(40), in apellidos NVARCHAR(50), in celular CHAR(9),
 in dni CHAR(8), in tipo CHAR(4), in estado CHAR(4) )
BEGIN
 START TRANSACTION;
 INSERT INTO Usuario VALUES(DEFAULT, email, password, nombres, apellidos, celular, dni, tipo, estado);
 COMMIT;
END;
//

DELIMITER //
/*
  Crea un Cliente y su respectiva cuenta de usuario
  tipo: CLIENTE
*/
DROP PROCEDURE IF EXISTS CrearCliente;
CREATE PROCEDURE CrearCliente(in _email VARCHAR(50), in _password NVARCHAR(60),
 in nombres NVARCHAR(40), in apellidos NVARCHAR(50), in celular CHAR(9),
 in dni CHAR(8), in estado CHAR(4) )
BEGIN
 DECLARE idUsuario INT;
 DECLARE tipo INT;
 SET tipo = (SELECT codigo FROM Parametro WHERE valor='CLIENTE');
 START TRANSACTION;
  CALL CrearUsuario(email, password, nombres, apellidos, celular, dni, tipo, estado);
  SET idUsuario = (SELECT idUsuario FROM Usuario WHERE email=_email AND password=_password);
  INSERT INTO Cliente VALUES(DEFAULT, estado, idUsuario);
 COMMIT;
END;
//

DELIMITER //
/*
  Crea un Operador y su respectiva cuenta de usuario
  tipo: OPERADOR
*/
DROP PROCEDURE IF EXISTS CrearOperador;
CREATE PROCEDURE CrearOperador(in _email VARCHAR(50), in _password NVARCHAR(60),
 in nombres NVARCHAR(40), in apellidos NVARCHAR(50), in celular CHAR(9),
 in dni CHAR(8), in estado CHAR(4) )
BEGIN
 DECLARE idUsuario INT;
 DECLARE tipo INT;
 SET tipo = (SELECT codigo FROM Parametro WHERE valor='OPERADOR');
 START TRANSACTION;
  CALL CrearUsuario(email, password, nombres, apellidos, celular, dni, tipo, estado);
  SET idUsuario = (SELECT idUsuario FROM Usuario WHERE email=_email AND password=_password);
  INSERT INTO Operador VALUES(DEFAULT, estado, idUsuario);
 COMMIT;
END;
//

DELIMITER //
/*
  Crea un Gerente y su respectiva cuenta de usuario
  tipo: GERENTE
*/
DROP PROCEDURE IF EXISTS CrearGerente;
CREATE PROCEDURE CrearGerente(in _email VARCHAR(50), in _password NVARCHAR(60),
 in nombres NVARCHAR(40), in apellidos NVARCHAR(50), in celular CHAR(9),
 in dni CHAR(8), in estado CHAR(4) )
BEGIN
 DECLARE idUsuario INT;
 DECLARE tipo INT;
 SET tipo = (SELECT codigo FROM Parametro WHERE valor='GERENTE');
 START TRANSACTION;
  CALL CrearUsuario(email, password, nombres, apellidos, celular, dni, tipo, estado);
  SET idUsuario = (SELECT idUsuario FROM Usuario WHERE email=_email AND password=_password);
  INSERT INTO Gerente VALUES(DEFAULT, estado, idUsuario);
 COMMIT;
END;
//

DELIMITER //
/*c
  Crea un detalle de la reserva y actualiza el campo total de Reserva
*/
DROP PROCEDURE IF EXISTS CrearDetalleReserva;
CREATE PROCEDURE CrearDetalleReserva(in _horaInicio TIME, in _horaFin TIME, in _idReserva INT,
  in idCancha INT)
BEGIN
  DECLARE subTotal DECIMAL(10,2);
  Declare _fechaReserva DATE;
  DECLARE idDetalleReserva INT;
  SET _fechaReserva = (SELECT fechaReserva FROM Reserva WHERE idReserva=_idReserva);
  SET idDetalleReserva = (SELECT idDetalleReserva FROM DetalleReserva
    WHERE horaInicio=_horaInicio AND horaFin=_horaFin AND
    idReserva in (SELECT idReserva FROM Reserva WHERE fechaReserva = _fechaReserva));
  IF idDetalleReserva!=NULL THEN
    SET subTotal = (SELECT subTotal FROM PrecioHora WHERE horaInicio=_horaInicio AND horaFin=_horaFin);
    START TRANSACTION;
      INSERT INTO DetalleReserva VALUES(DEFAULT, horaInicio, horaFin, subTotal, idReserva, idCancha);
      UPDATE Reserva SET total=total+subTotal WHERE idReserva=_idReserva;
    COMMIT;
  ELSE
    SELECT 'EL DETALLE DE RESERVA YA EXISTE' AS 'MSG_ERROR'
  END IF
END;
//

DELIMITER //
/*

*/
DROP PROCEDURE IF EXISTS CrearCancha;
CREATE PROCEDURE CrearCancha(in numero INT, in estado CHAR(4), nomSede NVARCHAR(50))
BEGIN
	Declare idSe INT;
	SET idSe = (SELECT idSede FROM Sede WHERE nombre = nomSede);
	BEGIN
	START TRANSACTION;
	INSERT INTO Cancha VALUES (DEFAULT, numero, estado, idSe);
	COMMIT;
END;
//

DELIMITER //
/*
*/
DROP PROCEDURE IF EXISTS CrearSede;
CREATE PROCEDURE CrearSede(in nombre NVARCHAR(50), in direccion NVARCHAR(60), in estado CHAR(4), in referencia TEXT, in nomDist NVARCHAR(45))
BEGIN
	Declare idDis INT;
	SET idDis = (SELECT idDistrito FROM Distrito WHERE nombre = nomDist);
	BEGIN
	START TRANSACTION;
	INSERT INTO Sede VALUES (DEFAULT, nombre, direccion, estado, referencia, idDis);
	COMMIT;
END;
//
DELIMITER //
/*

*/
DROP PROCEDURE IF EXISTS AsignarOperador;
CREATE PROCEDURE AsignarOperador (nomSede varchar(50), dniOpe char(8), fechaIni time)
BEGIN
    DECLARE idSe int;
    DECLARE idOpe1 int;
    DECLARE idOpe2 int;
    DECLARE idDir int;
    SET idOpe2 = -1;
    SET idSe = (SELECT idSede FROM Sede WHERE nombre = nomSede);
    SET idOpe1 = (SELECT idOperador FROM Operador WHERE Operador_idUsuario = (SELECT idUsuario FROM usuario WHERE DNI = dniOpe));
    SET idOpe2 = (SELECT Dirige_idOperador FROM Dirige WHERE Dirige_idSede = idSe);
    if idOpe2 <> -1 THEN
    	SET idDir = (SELECT idDirige FROM Dirige WHERE Dirige_idSede = idSe AND Dirige_idOperador = idOpe2);
    	UPDATE Dirige SET fin = fechaIni WHERE idDirige = idDir;
    end if;
    BEGIN
      START TRANSACTION;
    	INSERT INTO Dirige VALUES (DEFAULT, fechaIni, NULL, idSe, idOpe);
    COMMIT;
END;
//
