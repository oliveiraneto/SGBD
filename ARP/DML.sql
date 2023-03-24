-- Inserção de dados nas tabelas
INSERT INTO Consultorios (idConsultorio, nomeConsultorio, localizacao)
VALUES (1, 'Consultorio 1', 'São Paulo');

INSERT INTO Consultorios (idConsultorio, nomeConsultorio, localizacao)
VALUES (2, 'Consultorio 2', 'Rio de Janeiro');

INSERT INTO Profissionais (idProfissional, nomeProfissional, especialidade, registroCRM)
VALUES (1, 'Médico 1', 'Cardiologia', '123456-SP');

INSERT INTO Profissionais (idProfissional, nomeProfissional, especialidade, registroCRM)
VALUES (2, 'Médico 2', 'Dermatologia', '654321-RJ');

INSERT INTO Pacientes (idPaciente, nomePaciente, dataNascimento, cartaoConvenio)
VALUES (1, 'Paciente 1', '1990-01-01', '123456789');

INSERT INTO Pacientes (idPaciente, nomePaciente, dataNascimento, cartaoConvenio)
VALUES (2, 'Paciente 2', '1985-05-20', '987654321');

INSERT INTO Agendamentos (idAgendamento, dataHora, idPaciente, idProfissional)
VALUES (1, '2023-04-01 09:00:00', 1, 1);

INSERT INTO Agendamentos (idAgendamento, dataHora, idPaciente, idProfissional)
VALUES (2, '2023-04-02 10:00:00', 2, 2);

-- Atualização de um agendamento existente
UPDATE Agendamentos
SET dataHora = '2023-04-01 10:30:00'
WHERE idAgendamento = 1;

-- Exclusão de um agendamento
DELETE FROM Agendamentos
WHERE idAgendamento = 2;

