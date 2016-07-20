Use `BDLA12` ;

DELIMITER //
/*  Devuelve todo el contenido de la tabla Parametro */
DROP PROCEDURE IF EXISTS ConsultarParametros;
CREATE PROCEDURE ConsultarParametros()
  SELECT * FROM Parametro;
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
  IF idDetalleReserva is NULL THEN
    SET subTotal = (SELECT subTotal FROM PrecioHora WHERE horaInicio=_horaInicio AND horaFin=_horaFin);
    START TRANSACTION;
      INSERT INTO DetalleReserva VALUES(DEFAULT, horaInicio, horaFin, subTotal, idReserva, idCancha);
      UPDATE Reserva SET total=total+subTotal WHERE idReserva=_idReserva;
    COMMIT;
  ELSE
    SELECT 'EL DETALLE DE RESERVA YA EXISTE' AS 'MSG_ERROR';
  END IF;
END;
//


DELIMITER //
/*
  Crea una nueva Persona
*/
DROP PROCEDURE IF EXISTS CrearPersona;
CREATE PROCEDURE CrearPersona(in nombres NVARCHAR(40), in apellidos NVARCHAR(50),
 in celular CHAR(9), in dni CHAR(8), in tipo CHAR(4),in idUsuario INT UNSIGNED )
BEGIN
 START TRANSACTION;
  INSERT INTO Persona VALUES(DEFAULT, nombres, apellidos, celular, dni, tipo,idUsuario);
 COMMIT;
END;
//

DELIMITER //
/*
  Crea un Cliente y su respectiva cuenta de usuario
  tipo: CLIENTE
*/
DROP PROCEDURE IF EXISTS CrearCliente;
CREATE PROCEDURE CrearCliente(in nombres NVARCHAR(40), in apellidos NVARCHAR(50),
 in celular CHAR(9), in dni CHAR(8), in _idUsuario INT UNSIGNED )
BEGIN
 DECLARE Persona INT UNSIGNED;
 DECLARE tipo CHAR(4);
 DECLARE default_estado CHAR(4);
 SET tipo = (SELECT codigo FROM Parametro WHERE valor='CLIENTE');
 SET default_estado = (SELECT codigo FROM Parametro WHERE valor='HABILITADO');
 START TRANSACTION;
  CALL CrearPersona(nombres, apellidos, celular, dni, tipo, _idUsuario);
  SET Persona = (SELECT idPersona FROM Persona WHERE idUsuario=_idUsuario);
  INSERT INTO Cliente VALUES(DEFAULT, default_estado, Persona);
 COMMIT;
END;
//

DELIMITER //
/*
  Crea un Operador y su respectiva cuenta de usuario
  tipo: OPERADOR
*/
DROP PROCEDURE IF EXISTS CrearOperador;
CREATE PROCEDURE CrearOperador(in nombres NVARCHAR(40), in apellidos NVARCHAR(50),
 in celular CHAR(9), in dni CHAR(8), in estado CHAR(4), in _idUsuario INT UNSIGNED)
BEGIN
 DECLARE _idUsuario INT UNSIGNED;
 DECLARE _idPersona INT UNSIGNED;
 DECLARE tipo CHAR(4);
 SET tipo = (SELECT codigo FROM Parametro WHERE valor='OPERADOR');
 START TRANSACTION;
  CALL CrearPersona(nombres, apellidos, celular, dni, tipo, _idUsuario);
  SET _idPersona = (SELECT idPersona FROM Persona WHERE idUsuario=_idUsuario);
  INSERT INTO Operador VALUES(DEFAULT, estado, _idPersona);
 COMMIT;
END;
//

DELIMITER //
/*
  Crea un Gerente y su respectiva cuenta de usuario
  tipo: GERENTE
*/
DROP PROCEDURE IF EXISTS CrearGerente;
CREATE PROCEDURE CrearGerente(in nombres NVARCHAR(40), in apellidos NVARCHAR(50),
 in celular CHAR(9), in dni CHAR(8), in estado CHAR(4), in _idUsuario INT UNSIGNED)
BEGIN
 DECLARE _idPersona INT UNSIGNED;
 DECLARE tipo CHAR(4);
 SET tipo = (SELECT codigo FROM Parametro WHERE valor='GERENTE');
 START TRANSACTION;
  CALL CrearPersona(nombres, apellidos, celular, dni, tipo, _idUsuario);
  SET _idPersona = (SELECT idPersona FROM Persona WHERE idUsuario=_idUsuario);
  INSERT INTO Gerente VALUES(DEFAULT, estado, _idPersona);
 COMMIT;
END;
//

DELIMITER //
/*

*/
DROP PROCEDURE IF EXISTS CrearDepartamento;
CREATE PROCEDURE CrearDepartamento(in nombreDepartamento NVARCHAR(45))
BEGIN
  DECLARE default_estado CHAR(4);
  SET default_estado = (SELECT codigo FROM Parametro WHERE valor='HABILITADO');
  START TRANSACTION;
    INSERT INTO Departamento VALUES(DEFAULT, nombreDepartamento, default_estado);
  COMMIT;
END;
//

DELIMITER //
/*

*/
DROP PROCEDURE IF EXISTS CrearProvincia;
CREATE PROCEDURE CrearProvincia(in nombreProvincia NVARCHAR(45), in nombreDepartamento NVARCHAR(45))
BEGIN
  DECLARE default_estado CHAR(4);
  DECLARE _idDepartamento INT UNSIGNED;
  SET default_estado = (SELECT codigo FROM Parametro WHERE valor='HABILITADO');
  SET _idDepartamento = (SELECT idDepartamento FROM Departamento WHERE nombre=nombreDepartamento);
  START TRANSACTION;
    INSERT INTO Provincia VALUES(DEFAULT, nombreProvincia, default_estado, _idDepartamento);
  COMMIT;
END;
//

DELIMITER //
/*

*/
DROP PROCEDURE IF EXISTS CrearDistrito;
CREATE PROCEDURE CrearDistrito(in nombreDistrito NVARCHAR(45), in nombreProvincia NVARCHAR(45))
BEGIN
  DECLARE default_estado CHAR(4);
  DECLARE _idProvincia INT UNSIGNED;
  DECLARE _idDistrito INT UNSIGNED;
  SET default_estado = (SELECT codigo FROM Parametro WHERE valor='HABILITADO');
  SET _idProvincia = (SELECT idProvincia FROM Provincia WHERE nombre=nombreProvincia);
  SET _idDistrito = (SELECT idDistrito FROM Distrito WHERE Distrito_idProvincia=_idProvincia AND nombre=nombreDistrito);
  IF _idDistrito IS NULL THEN
    START TRANSACTION;
      INSERT INTO Distrito VALUES(DEFAULT, nombreDistrito, default_estado, _idProvincia);
    COMMIT;
  ELSE
    SELECT 'EL DISTRITO YA EXISTE' AS 'MSG_ERROR';
  END IF;
END;
//

DELIMITER //
/*

*/
DROP PROCEDURE IF EXISTS CrearCancha;
CREATE PROCEDURE CrearCancha(in numero INT, in estado CHAR(4), nombreSede NVARCHAR(50))
BEGIN
	DECLARE _idSede INT UNSIGNED;
	SET _idSede = (SELECT idSede FROM Sede WHERE nombre=nombreSede);
  IF _idSede IS NULL THEN
    SELECT 'LA SEDE NO EXISTE' AS 'MSG_ERROR';
  ELSE
    START TRANSACTION;
     INSERT INTO Cancha VALUES (DEFAULT, numero, estado, _idSede);
    COMMIT;
  END IF;
END;
//

DELIMITER //
/*
*/
DROP PROCEDURE IF EXISTS CrearSede;
CREATE PROCEDURE CrearSede(in nombreSede NVARCHAR(50), in direccion NVARCHAR(60),
 in estado CHAR(4), in referencia TEXT, in nombreDistrito NVARCHAR(45))
BEGIN
	DECLARE _idDistrito INT UNSIGNED;
	SET _idDistrito = (SELECT idDistrito FROM Distrito WHERE nombre=nombreDistrito);
  IF _idDistrito IS NULL THEN
    SELECT 'EL DISTRITO NO EXISTE' AS 'MSG_ERROR';
  ELSE
    START TRANSACTION;
      INSERT INTO Sede VALUES (DEFAULT, nombreSede, direccion, estado, referencia, _idDistrito);
    COMMIT;
  END IF;
END;
//

DELIMITER //
/*
Falta corregir
*/
DROP PROCEDURE IF EXISTS AsignarOperador;
CREATE PROCEDURE AsignarOperador (nomSede varchar(50), dniOpe char(8), fechaIni DATE)
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
    START TRANSACTION;
    	INSERT INTO Dirige VALUES (DEFAULT, fechaIni, NULL, idSe, idOpe);
    COMMIT;
END;
//

Delimiter //
Drop Procedure if Exist CanchasDisponibles;
Create Procedure CanchasDisponibles(in hora Time, in nomSede nvarchar(50))
Begin
Select numero From Cancha Where idCancha = (
	Select DR_idCancha From DetalleReserva Where horaInicio not like hora) and Cancha_idSede = (
		Select idSede From Sede Where nombre like nomSede)
End;
//


Delimeter //
Drop Procedure If Exists horasDisponibles;
Create Procedure horasDisponibles(in cancha int)
Begin
	Select horaInicio From PrecioHora Where horaInicio not like (
		Select horaInicio From DetalleReserva Where DR_idCancha like cancha)
End
//
