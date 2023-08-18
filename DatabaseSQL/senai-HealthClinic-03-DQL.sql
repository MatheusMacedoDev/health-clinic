-- DQL

SELECT
	Consultation.Id AS 'Id Consulta',
	Consultation.[Date] AS 'Data da Consulta',
	Consultation.[Time] AS 'Hor�rio da Consulta',
	Clinic.FancyName AS 'Nome da Cl�nica',
	PatientUser.[Name] AS 'Nome do Paciente',
	DoctorUser.[Name] AS 'Nome do M�dico',
	MedicalSpecialty.[Name] AS 'Especialidade do M�dico',
	Doctor.CRM AS 'CRM',
	MedicalRecord.[Text] AS 'Prontu�rio',
	Comment.[Text] AS 'Coment�rio',
	Comment.[Date] AS 'Data do Coment�rio'
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