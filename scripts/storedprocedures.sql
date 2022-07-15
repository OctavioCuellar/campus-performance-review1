USE CampusReview;

-- Recuperar registros
DELIMITER //
CREATE PROCEDURE spReturnUserRegisters (IN spUserId INT)
BEGIN
    IF spUserId IS NOT NULL THEN
		SELECT * FROM Users WHERE PK_UserId = spUserId;
	ELSE 
		SELECT * FROM Users;
	END IF;	
END
//
DELIMITER ;

CALL spReturnUserRegisters(5);

-- Insercion de datos
DELIMITER //
CREATE PROCEDURE spNuevoRol (IN spNombreRol VARCHAR(150))
    BEGIN
        INSERT INTO Roles (ProfileName) VALUES (spNombreRol);
END
//
DELIMITER ;
-- Pruebas
CALL spNuevoRol('Prueba');
SELECT * FROM Roles;

DELIMITER //
CREATE PROCEDURE spNuevoUser (IN spNombre VARCHAR(150), spFechaDeNacimiento DATE)
    BEGIN
        INSERT INTO Users (Name, FechaDeNacimiento) VALUES (spNombre, spFechaDeNacimiento);
    END
//
DELIMITER ;
-- Pruebas
CALL spNuevoUser('Aram Naim', '1996-07-13');
SELECT * FROM Users;

DELIMITER //
CREATE PROCEDURE spAsignarRol (IN spUserId INT, spRoleId INT)
    BEGIN
        INSERT INTO UserRoles (FK_UserId, FK_RoleId) VALUES (spUserId, spRoleId);
    END
//
DELIMITER ;
-- Pruebas
CALL spAsignarRol(7, 1);
SELECT * FROM UserRoles;
