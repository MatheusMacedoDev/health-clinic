-- DQL

SELECT
	Consultation.Id AS 'Id Consulta',
	FORMAT(CAST(Consultation.[Date] AS DATETIME), 'dd/MM/yyyy') AS 'Data da Consulta',
	FORMAT(CAST(Consultation.[Time] as DATETIME), 'HH:mm') AS 'Hor�rio da Consulta',
	Clinic.FancyName AS 'Nome da Cl�nica',
	PatientUser.[Name] AS 'Nome do Paciente',
	DoctorUser.[Name] AS 'Nome do M�dico',
	MedicalSpecialty.[Name] AS 'Especialidade do M�dico',
	CONCAT('CRM/', SUBSTRING(Doctor.CRM, 1, 2), ' ', SUBSTRING(Doctor.CRM, 3, 3), '.', SUBSTRING(Doctor.CRM, 6, 3)) AS 'CRM',
	MedicalRecord.[Text] AS 'Prontu�rio',
	Comment.[Text] AS 'Coment�rio',
	FORMAT(CAST(Comment.[Date] AS DATETIME), 'dd/MM/yyyy') AS 'Data do Coment�rio'
FROM Consultation
	JOIN Clinic ON Consultation.ClinicId = Clinic.Id
	JOIN Patient ON Consultation.PatientId = Patient.Id
	JOIN [User] AS PatientUser ON Patient.UserId = PatientUser.Id 
	JOIN DoctorMedicalSpecialty ON Consultation.DoctorMedicalSpecialtyId = DoctorMedicalSpecialty.Id
	JOIN Doctor ON DoctorMedicalSpecialty.DoctorId = Doctor.Id
	JOIN [User] AS DoctorUser ON Doctor.UserId = DoctorUser.Id
	JOIN MedicalSpecialty ON DoctorMedicalSpecialty.MedicalSpecialtyId = MedicalSpecialty.Id
	JOIN MedicalRecord ON Consultation.MedicalRecordId = MedicalRecord.Id
	LEFT JOIN Comment ON Comment.ConsultationId = Consultation.Id;