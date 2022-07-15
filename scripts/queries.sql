USE CampusReview;

SELECT* FROM Users;
SELECT * FROM Roles;

SELECT * from Users U INNER JOIN UserRoles UR ON U.PK_UserId = UR.FK_UserId;

SELECT * from Users U LEFT JOIN UserRoles UR ON U.PK_UserId = UR.FK_UserId WHERE UR.FK_UserId IS NULL;

SELECT SUM(EDAD) AS SumaEdad FROM Users;

SELECT COUNT(PK_UserId) AS TotalRegistros FROM Users;