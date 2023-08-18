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
	('09321270', 'SP', 'Mauá', 'Jardim Zaira', 146, 'Rua Manoel Carlos Pinto', NULL),
	('09390040', 'SP', 'Mauá', 'Centro', 232, 'Avenida Governador Mário Covas Júnior', NULL),
	('09371320', 'SP', 'Mauá', 'Parque São Vicente', 65, 'Avenida Armando Salles Oliveira', NULL);

-- DELETE FROM [Address];

INSERT INTO Clinic VALUES
	(8, 'Health Clinic Mauá', 'Health Center LTDA', '7:00', '23:00');

INSERT INTO UserType VALUES
	('Paciente'),
	('Médico'),
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
	('Clínico Geral');

INSERT INTO DoctorMedicalSpecialty VALUES
	(1, 2),
	(1, 3);

INSERT INTO Patient VALUES (2);

INSERT INTO ClinicPatient VALUES (2, 1);

INSERT INTO MedicalRecord VALUES ('O prontuário médico possui uma série de dados que geram um histórico do paciente.')

INSERT INTO ConsultationStatus VALUES
	('Aguardando'),
	('Confirmado'),
	('Cancelado'),
	('Remarcado');

INSERT INTO Consultation VALUES
	(2, 1, 1, 1, 1, '2023-08-24', '14:00');

INSERT INTO Comment VALUES
	(1, '2023-08-16', 'Estou no aguardo pelo atendimento', 0);
