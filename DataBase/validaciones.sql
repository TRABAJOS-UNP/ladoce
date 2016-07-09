DROP TRIGGER IF EXISTS check_ins_cancha;
DELIMITER $$
CREATE TRIGGER check_ins_cancha BEFORE INSERT ON cancha FOR EACH ROW 
BEGIN
	if numero < 0  THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error numero mayor a 0';
    	end if;
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_cancha;
DELIMITER $$
CREATE TRIGGER check_upd_cancha BEFORE UPDATE ON cancha FOR EACH ROW 
BEGIN
	if numero < 0  THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error numero mayor a 0';
    	end if;
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_cliente;
DELIMITER $$
CREATE TRIGGER check_ins_cliente BEFORE INSERT ON cliente FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_cliente;
DELIMITER $$
CREATE TRIGGER check_upd_cliente BEFORE UPDATE ON cliente FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_departamento;
DELIMITER $$
CREATE TRIGGER check_ins_departamento BEFORE INSERT ON departamento FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_departamento;
DELIMITER $$
CREATE TRIGGER check_upd_departamento BEFORE UPDATE ON departamento FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_detallereserva;
DELIMITER $$
CREATE TRIGGER check_ins_detallereserva BEFORE INSERT ON detallereserva FOR EACH ROW 
BEGIN
    	if new.subTotal < 0.0 THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error sub Total mayor a 0;
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_detallereserva;
DELIMITER $$
CREATE TRIGGER check_upd_detallereserva BEFORE UPDATE ON detallereserva FOR EACH ROW 
BEGIN
    	if new.subTotal < 0.0 THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error sub Total mayor a 0;
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_distrito;
DELIMITER $$
CREATE TRIGGER check_ins_distrito BEFORE INSERT ON distrito FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_distrito;
DELIMITER $$
CREATE TRIGGER check_upd_distrito BEFORE UPDATE ON distrito FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_gerente;
DELIMITER $$
CREATE TRIGGER check_ins_gerente BEFORE INSERT ON gerente FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_gerente;
DELIMITER $$
CREATE TRIGGER check_upd_gerente BEFORE UPDATE ON gerente FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_historialcancha;
DELIMITER $$
CREATE TRIGGER check_ins_historialcancha BEFORE INSERT ON historialcancha FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_historialcancha;
DELIMITER $$
CREATE TRIGGER check_upd_historialcancha BEFORE UPDATE ON historialcancha FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_historialsede;
DELIMITER $$
CREATE TRIGGER check_ins_historialsede BEFORE INSERT ON historialsede FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_historialsede;
DELIMITER $$
CREATE TRIGGER check_upd_historialsede BEFORE UPDATE ON historialsede FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_operador;
DELIMITER $$
CREATE TRIGGER check_ins_operador BEFORE INSERT ON operador FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_operador;
DELIMITER $$
CREATE TRIGGER check_upd_operador BEFORE UPDATE ON operador FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_parametro;
DELIMITER $$
CREATE TRIGGER check_ins_parametro BEFORE INSERT ON parametro FOR EACH ROW 
BEGIN
    	if new.sep1 not rlike '[0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error sep1 - solo digitos';
	end if;
	if new.sep2 not rlike '[0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error sep2 - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_parametro;
DELIMITER $$
CREATE TRIGGER check_upd_parametro BEFORE UPDATE ON parametro FOR EACH ROW 
BEGIN
    	if new.sep1 not rlike '[0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error sep1 - solo digitos';
	end if;
	if new.sep2 not rlike '[0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error sep2 - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_preciohora;
DELIMITER $$
CREATE TRIGGER check_ins_preciohora BEFORE INSERT ON preciohora FOR EACH ROW 
BEGIN
	if new.diaSemana not IN ('L','M','X','J','V','S','D') THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error dia semana';
	END IF;
	if new.horaInicio not BETWEEN '06:00:00' AND '24:00:00' THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error hora inicio';
	end if;
    	if new.horaFin not BETWEEN '06:00:00' AND '24:00:00' THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error hora fin';
	end if;
	if new.precio < 0.0 then
		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error precio mayor a 0';
	end if;
	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_preciohora;
DELIMITER $$
CREATE TRIGGER check_upd_preciohora BEFORE UPDATE ON preciohora FOR EACH ROW 
BEGIN
	if new.diaSemana not IN ('L','M','X','J','V','S','D') THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error dia semana';
	END IF;
	if new.horaInicio not BETWEEN '06:00:00' AND '24:00:00' THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error hora inicio';
	end if;
    	if new.horaFin not BETWEEN '06:00:00' AND '24:00:00' THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error hora fin';
	end if;
	if new.precio < 0.0 then
		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error precio mayor a 0';
	end if;
	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_provincia;
DELIMITER $$
CREATE TRIGGER check_ins_provincia BEFORE INSERT ON provincia FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_provincia;
DELIMITER $$
CREATE TRIGGER check_upd_provincia BEFORE UPDATE ON provincia FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_reserva;
DELIMITER $$
CREATE TRIGGER check_ins_reserva BEFORE INSERT ON reserva FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
	if new.total < 0.0 THEN
		SIGANL SQLTATE '45000' set MESSAGE_TEXT = 'Error total mayor a 0';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_reserva;
DELIMITER $$
CREATE TRIGGER check_upd_reserva BEFORE UPDATE ON reserva FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
	if new.total < 0.0 THEN
		SIGANL SQLTATE '45000' set MESSAGE_TEXT = 'Error total mayor a 0';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_sede;
DELIMITER $$
CREATE TRIGGER check_ins_sede BEFORE INSERT ON sede FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_sede;
DELIMITER $$
CREATE TRIGGER check_upd_sede BEFORE UPDATE ON sede FOR EACH ROW 
BEGIN
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_usuario;
DELIMITER $$
CREATE TRIGGER check_ins_usuario BEFORE INSERT ON usuario FOR EACH ROW 
BEGIN
	if CHAR_length(new.password) < 8 THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error password - mayor de 7 caracteres';
    	end if;
	if new.celular not rlike '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error celular - solo digitos';
	end if;
    	if new.DNI not rlike '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error DNI - solo digitos';
	end if;
	if new.tipo not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error tipo - solo digitos';
	end if;
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_usuario;
DELIMITER $$
CREATE TRIGGER check_upd_usuario BEFORE UPDATE ON usuario FOR EACH ROW 
BEGIN
	if CHAR_length(new.password) < 8 THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error password - mayor de 7 caracteres';
    	end if;
	if new.celular not rlike '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error celular - solo digitos';
	end if;
    	if new.DNI not rlike '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error DNI - solo digitos';
	end if;
	if new.tipo not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error tipo - solo digitos';
	end if;
    	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;
