-- Criação das tabelas
CREATE TABLE Consultorios (
  id_consultorio INT PRIMARY KEY,
  nome VARCHAR(50),
  localizacao VARCHAR(50)
);

CREATE TABLE Profissionais (
  id_profissional INT PRIMARY KEY,
  nome VARCHAR(50),
  especialidade VARCHAR(50),
  registro_medicina VARCHAR(50)
);

CREATE TABLE Pacientes (
  id_paciente INT PRIMARY KEY,
  nome VARCHAR(50),
  data_nascimento DATE,
  cartao_convenio VARCHAR(50)
);

CREATE TABLE Agendamentos (
  id_agendamento INT PRIMARY KEY,
  data_hora DATETIME,
  id_paciente INT,
  id_profissional INT,
  FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
  FOREIGN KEY (id_profissional) REFERENCES Profissionais(id_profissional)
);
