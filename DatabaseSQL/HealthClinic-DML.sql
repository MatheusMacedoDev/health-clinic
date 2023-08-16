-- Basic DQL 

SELECT * FROM [Address];
SELECT * FROM  Clinic;
SELECT * FROM Comment;
SELECT * FROM Consultation;
SELECT * FROM ConsultationStatus;
SELECT * FROM Doctor;
SELECT * FROM ClinicDoctor;
SELECT * FROM DoctorMedicalSpecialty;
SELECT * FROM MedicalRecord;
SELECT * FROM MedicalSpecialty;
SELECT * FROM Patient;
SELECT * FROM ClinicPatient;
SELECT * FROM [User];
SELECT * FROM UserType;

-- DML

INSERT INTO [Address] VALUES
	('09321270', 'SP', 'Mau�', 'Jardim Zaira', 146, 'Rua Manoel Carlos Pinto', NULL),
	('09390040', 'SP', 'Mau�', 'Centro', 232, 'Avenida Governador M�rio Covas J�nior', NULL),
	('09371320', 'SP', 'Mau�', 'Parque S�o Vicente', 65, 'Avenida Armando Salles Oliveira', NULL);

-- DELETE FROM [Address];

INSERT INTO Clinic VALUES
	(8, 'Health Clinic Mau�', 'Health Center LTDA', '7:00', '23:00');

INSERT INTO UserType VALUES
	('Paciente'),
	('M�dico'),
	('Administrador');

INSERT INTO [User] VALUES
	(7, 3, 'Eduardo Hulck', 'eduardo.hulck@email.com', '1992-04-21', NULL, NULL, '123456'),
	(7, 1, 'Matheus Macedo', 'matheus.macedo@email.com', '2006-01-23', NULL, NULL, '123456');

INSERT INTO Doctor VALUES
	(1, 'SP115573');

INSERT INTO ClinicDoctor VALUES
	(2, 1);

INSERT INTO MedicalSpecialty VALUES
	('Pediatra'),
	('Ortopedista'),
	('Cl�nico Geral');

INSERT INTO DoctorMedicalSpecialty VALUES
	(1, 2),
	(1, 3);

INSERT INTO Patient VALUES (2);

INSERT INTO ClinicPatient VALUES (2, 1);

INSERT INTO MedicalRecord VALUES ('O prontu�rio m�dico possui uma s�rie de dados que geram um hist�rico do paciente.')

INSERT INTO ConsultationStatus VALUES
	('Aguardando'),
	('Confirmado'),
	('Cancelado'),
	('Remarcado');

INSERT INTO Consultation VALUES
	(2, 1, 1, 1, 1, '2023-08-24', '14:00');

INSERT INTO Comment VALUES
	(1, '2023-08-16', 'Estou no aguardo pelo atendimento', 0);
