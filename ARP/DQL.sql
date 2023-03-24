-- Listar todos os consultórios disponíveis na clínica
SELECT *
FROM Consultorios;

-- Listar todos os pacientes e suas respectivas consultas agendadas, incluindo nome do profissional e especialidade
SELECT p.nome AS Nome_Paciente, a.data_hora AS Data_Hora_Agendamento, c.nome AS Nome_Consultorio, pr.nome AS Nome_Profissional, pr.especialidade AS Especialidade_Profissional 
FROM pacientes p
INNER JOIN agendamentos a ON p.id_paciente = a.id_paciente
INNER JOIN consultorios c ON a.id_consultorio = c.id_consultorio
INNER JOIN profissionais pr ON a.id_profissional = pr.id_profissional
ORDER BY Nome_Paciente;

-- Listar todos os profissionais da clínica e suas respectivas especialidades
SELECT *
FROM Profissionais;

-- Listar todos os pacientes da clínica e suas respectivas datas de nascimento
SELECT *
FROM Pacientes;

-- Listar todas as consultas agendadas para um determinado dia
SELECT *
FROM Agendamentos
WHERE DATE(data_hora) = '2023-03-25';

-- Listar todas as consultas agendadas para um determinado profissional em um intervalo de datas
SELECT a.data_hora AS Data_Hora_Agendamento, c.nome AS Nome_Consultorio, p.nome AS Nome_Paciente, p.data_nascimento AS Data_Nascimento_Paciente 
FROM agendamentos a
INNER JOIN consultorios c ON a.id_consultorio = c.id_consultorio
INNER JOIN pacientes p ON a.id_paciente = p.id_paciente
WHERE a.id_profissional = 1 AND a.data_hora BETWEEN '2022-01-01' AND '2022-12-31'
ORDER BY Data_Hora_Agendamento;

-- Listar todas as consultas agendadas para um determinado paciente
SELECT *
FROM Agendamentos
WHERE id_paciente = 1;

--Inserir um novo agendamento de consulta
INSERT INTO Agendamentos (DataHora, IdPaciente, IdProfissional)
VALUES ('2023-04-10 14:00:00', 123, 456);

--Atualizar os dados de um agendamento existente
UPDATE Agendamentos
SET DataHora = '2023-04-15 16:30:00'
WHERE IdAgendamento = 789;

--Excluir um agendamento de consulta
DELETE FROM Agendamentos
WHERE IdAgendamento = 789;

--Operadores de comparação
SELECT * FROM Profissionais WHERE especialidade = 'Cardiologia';

--Combinando diferentes operadores lógicos
SELECT * FROM Agendamentos WHERE id_paciente = 1 AND data_agendamento >= '2023-04-01';

--Operadores de intervalo
SELECT * FROM Agendamentos WHERE data_agendamento BETWEEN '2023-04-01' AND '2023-04-30';

--Operadores de padrão
SELECT * FROM Pacientes WHERE nome LIKE 'João%';

--Operações de conjuntos
SELECT * FROM Consultorios WHERE localizacao = 'São Paulo'
UNION
SELECT * FROM Consultorios WHERE localizacao = 'Rio de Janeiro';

--Operadores de agregação
SELECT COUNT(*) FROM Agendamentos WHERE data

