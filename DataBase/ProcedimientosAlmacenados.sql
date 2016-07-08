Use `BDLA12` ;

DELIMITER //
CREATE PROCEDURE AutenticarUsuario(in _email VARCHAR(50), in _password VARCHAR(60))
BEGIN
  SELECT * FROM Usuario WHERE email=_email AND password =_password AND NOT estado!='0001' ;
END
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
CREATE PROCEDURE AgregarDetalleReserva(in horaInicio TIME, in horaFin TIME, in _idReserva INT, in idCancha INT)
BEGIN
  DECLARE subTotal DECIMAL(10,2);
  DECLARE idDetalleReserva INT;
  SELECT FROM Reserva WHERE
  SET idDetalleReserva = (SELECT idDetalleReserva FROM DetalleReserva
    WHERE horaInicio=_horahoraInicio AND horaFin=_horahoraFin AND idReserva=_idReserva)
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

END
//



DELIMITER $$
CREATE PROCEDURE paAsignarOperador (nomSede varchar(50), dniOpe char(8), fechaIni time)
BEGIN
	DECLARE idSe int;
    DECLARE idOpe int;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
    	ROLLBACK;
    END;
    SET idSe = (SELECT * FROM sede WHERE nombre = nomSede);
    SET idOpe = (SELECT * FROM operador WHERE Operador_idUsuario = (SELECT idUsuario FROM usuario WHERE DNI = dniOpe));
    START TRANSACTION;
    INSERT INTO dirige (inicio, Dirige_idSede, Dirige_idOperador) VALUES (fechaIni, idSe, idOpe);
COMMIT;
END;
$$
