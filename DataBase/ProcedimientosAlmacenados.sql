Use `BDLA12` ;

DELIMITER //
CREATE PROCEDURE AutenticarUsuario(in _email VARCHAR(50), in _password VARCHAR(60), in _estado CHAR(4))
BEGIN
  SELECT * FROM Usuario WHERE email=_email AND password =_password AND estado!=_estado;
END;
//

DELIMITER //
CREATE PROCEDURE CrearReserva(in idCliente INT, in fechaReserva DATE)
BEGIN
  /*Estado por defecto EN_PROCESO*/
  DECLARE default_estado CHAR(4);
  SET default_estado = '0002';
  START TRANSACTION;
    INSERT INTO Reserva VALUES(DEFAULT, NOW(), fechaReserva, default_estado, O.O, idCliente);
  COMMIT;
END;
//

DELIMITER //
CREATE PROCEDURE ConsultarParametros()
BEGIN
  SELECT * FROM Parametro;
END;
//

DELIMITER //
CREATE PROCEDURE AgregarUsuario(in email VARCHAR(50), in password NVARCHAR(60),
 in nombres NVARCHAR(40), in apellidos NVARCHAR(50), in celular CHAR(9),
 in dni CHAR(8), in tipo CHAR(4), in estado CHAR(4)  )
BEGIN
 START TRANSACTION;
 INSERT INTO Usuario VALUES(DEFAULT, email, password, nombres, apellidos, celular, dni, tipo, estado);
 COMMIT;
END;
//
DELIMITER //
CREATE PROCEDURE AgregarDetalleReserva(in horaInicio TIME, in horaFin TIME, in _idReserva INT, in idCancha INT)
BEGIN
  DECLARE subTotal DECIMAL(10,2);
  DECLARE idDetalleReserva INT;
  SELECT FROM Reserva WHERE
  SET idDetalleReserva = (SELECT idDetalleReserva FROM DetalleReserva
    WHERE horaInicio=_horahoraInicio AND horaFin=_horahoraFin AND idReserva=_idReserva);
  IF idDetalleReserva!=NULL
  BEGIN
    START TRANSACTION;
      INSERT INTO DetalleReserva VALUES(DEFAULT, horaInicio, horaFin, subTotal, idReserva, idCancha);
    COMMIT;
  END;
  ELSE
  BEGIN
    SELECT 'El Detalle De Reserva Ya Existe' AS 'msg_error';
  END;
END;
//
DELIMITER
CREATE PROCEDURE AgregarCancha(in numero INT, in estado CHAR(4), nomSede NVARCHAR(50))
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
CREATE PROCEDURE paAsignarOperador (nomSede varchar(50), dniOpe char(8), fechaIni time)
BEGIN
    DECLARE idSe int;
    DECLARE idOpe int;
    SET idSe = (SELECT idSede FROM Sede WHERE nombre = nomSede);
    SET idOpe = (SELECT idOperador FROM Operador WHERE Operador_idUsuario = (SELECT idUsuario FROM usuario WHERE DNI = dniOpe));
    BEGIN
      START TRANSACTION;
    	INSERT INTO Dirige VALUES (DEFAULT, fechaIni, idSe, idOpe);
    COMMIT;
END;
//
