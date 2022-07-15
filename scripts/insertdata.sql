USE CampusReview;

INSERT INTO 
	Users(Name, Edad, FechaDeNacimiento)
VALUES
	('Daniel Sebastiao', 38, '1984-07-15'),
    ('Edwin Julian', 30, '1992-06-21'),
	('Mariano Pacienza', 50, '1972-05-07'),
    ('Saulo Villasenor', 37, '1985-04-13'),
    ('Hector Cisnero', 37, '1985-03-14'),
    ('Horeb Gastelum', 30, '1992-02-03');

SELECT * FROM Users;

INSERT INTO 
	Roles(ProfileName)
VALUES
	('Admin'),
    ('RH'),
    ('Student'),
    ('Squad');

SELECT * FROM Roles;

INSERT INTO 
	UserRoles(FK_UserId, FK_RoleId)
VALUES
	(1,1),
    (2,1),
    (3,2),
    (5,4),
    (6,3);

SELECT * FROM UserRoles;
