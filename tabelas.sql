DROP  DATABASE IF EXISTS tabelas;
create database tabelas;
USE tabelas;

CREATE TABLE Cidade(
  id mediumint,
  nome varchar(255),
  PRIMARY KEY (id)
) ;

CREATE TABLE Disciplina(
  id mediumint,
  nome varchar(255),
  PRIMARY KEY (id)
) ;


CREATE TABLE Pessoa(
  id mediumint,
  nome varchar(255),
  tel varchar(100),
  id_cidade mediumint,

  PRIMARY KEY (id),
  FOREIGN KEY (id_cidade) REFERENCES Cidade(id)
);


CREATE TABLE Professor(
  id mediumint,
  rg varchar(15),
  cpf varchar(13) ,
  titulacao varchar(255),
  PRIMARY KEY (id),
  FOREIGN KEY (id) REFERENCES Pessoa(id)
);

CREATE TABLE Escola(
  id mediumint,
  nome varchar(255),
  id_cidade mediumint,
  id_diretor mediumint,
  PRIMARY KEY (id),
  FOREIGN KEY (id_cidade) REFERENCES Cidade(id),
  FOREIGN KEY (id_diretor) REFERENCES Professor(id)
);
CREATE TABLE Turma(
  id mediumint,
  nome varchar(255),
  id_escola mediumint,
  PRIMARY KEY (id),
  FOREIGN KEY (id_escola) REFERENCES Escola(id)
);


CREATE TABLE Aluno(
  id mediumint,
  matricula varchar(255),
  data_nasc varchar(255),
  id_turma mediumint,
  PRIMARY KEY (id),
  FOREIGN KEY (id_turma) REFERENCES Turma(id),
  FOREIGN KEY (id) REFERENCES Pessoa(id)
) ;


CREATE TABLE Contato(
    nome VARCHAR(255),
    tel VARCHAR(100),
    id_aluno MEDIUMINT,
    PRIMARY KEY (nome, id_aluno),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id)
);


CREATE TABLE ProfMinistraDisciplina(
	id_prof MEDIUMINT,
    id_disciplina MEDIUMINT,
    PRIMARY KEY (id_prof, id_disciplina),
    FOREIGN KEY (id_prof) REFERENCES Professor,
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina
);

CREATE TABLE ProfMinistraTurma(
	id_prof_min_disc MEDIUMINT,
    id_turma MEDIUMINT,
    PRIMARY KEY (id_prof_min_disc, id_turma),
    FOREIGN KEY (id_prof_min_disc) REFERENCES ProfMinistraDisciplina,
    FOREIGN KEY (id_turma) REFERENCES Turma
);



