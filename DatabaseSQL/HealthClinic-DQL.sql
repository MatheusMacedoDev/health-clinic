-- DQL

SELECT
	Consultation.Id AS 'Id Consulta',
	Consultation.[Date] AS 'Data da Consulta',
	Consultation.[Time] AS 'Horário da Consulta',
	Clinic.FancyName AS 'Nome da Clínica',
	PatientUser.[Name] AS 'Nome do Paciente',
	DoctorUser.[Name] AS 'Nome do Médico',
	MedicalSpecialty.[Name] AS 'Especialidade do Médico',
	Doctor.CRM AS 'CRM',
	MedicalRecord.[Text] AS 'Prontuário',
	Comment.[Text] AS 'Comentário',
	Comment.[Date] AS 'Data do Comentário'
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