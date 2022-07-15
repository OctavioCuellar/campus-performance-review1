USE CampusReview;

DELIMITER //
CREATE TRIGGER TR_CalcularEdad
BEFORE INSERT
ON Users FOR EACH ROW
BEGIN
DECLARE edad int;
DECLARE fechaDeNacimiento DATE;
SET fechaDeNacimiento = NEW.FechaDeNacimiento;
SET edad = (SELECT timestampdiff(YEAR, fechaDeNacimiento, CURDATE())AS edad);
    IF EDAD >= 18 AND edad <= 120 THEN
		SET NEW.Edad=edad;
    ELSE
		SET NEW.Edad = 0;
	END IF;
END
//
DELIMITER ;

-- Probando el trigger

INSERT INTO 
	Users(Name, FechaDeNacimiento)
VALUES
	('Octavio Cuellar', '1998-01-01');

SELECT * FROM Users;
    