USE CampusReview;

DELIMITER //
CREATE VIEW VistaDatosUsuarios AS
SELECT U.PK_UserId, U.Name, COUNT(R.PK_RoleId) as RolesUsers,
TIMESTAMPDIFF(YEAR, U.FechaDeNacimiento, CURDATE()) As Edad
FROM Users U LEFT JOIN UserRoles UR ON U.PK_UserId = UR.FK_UserId
LEFT JOIN Roles R ON UR.FK_RoleId = R.PK_RoleId GROUP BY U.PK_UserId;
//
DELIMITER ;

SELECT * FROM VistaDatosUsuarios;