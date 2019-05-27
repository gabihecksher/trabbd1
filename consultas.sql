USE tabelas;

SELECT * FROM Cidade;
SELECT * FROM Pessoa;
SELECT * FROM Disciplina;
SELECT * FROM Turma;
SELECT * FROM Professor;
SELECT * FROM Aluno;
SELECT * FROM Escola;
SELECT * FROM Contato;
SELECT * FROM ProfMinistraTurma;


## Lista o nome de todos os alunos
SELECT nome from Aluno, Pessoa WHERE Aluno.id = Pessoa.id;

## Lista o nome e a matricula de todos os alunos de uma turma
SELECT nome, matricula from Aluno, Pessoa where Aluno.id = Pessoa.id AND  Aluno.id_turma = 8;

## Lista o nome de todas as disciplinas de um aluno
SELECT Disciplina.nome FROM Aluno, Disciplina, ProfMinistraTurma WHERE Aluno.id = 22 AND Aluno.id_turma = ProfMinistraTurma.id_turma AND Disciplina.id = ProfMinistraTurma.id_disciplina;

## Lista o nome de todas as disciplinas e turmas ministradas por um professor
SELECT DISTINCT Disciplina.id, Disciplina.nome, Turma.nome FROM Professor, Turma, Disciplina, ProfMinistraTurma WHERE Professor.id = 1 AND Professor.id = ProfMinistraTurma.id_prof AND Disciplina.id = ProfMinistraTurma.id_disciplina AND Turma.id = ProfMinistraTurma.id_turma;

## Retorna a quantidade de turmas
SELECT COUNT(*) FROM Turma;

## Retorna a média de Alunos por turma
SELECT AVG(count) FROM (SELECT COUNT(*) AS count FROM Aluno group by id_turma) as counts;

## Listar o nome de todos os professores que ministram uma disciplina
SELECT DISTINCT Pessoa.nome FROM Pessoa, Professor, ProfMinistraTurma, Disciplina
WHERE Pessoa.id = Professor.id AND 
   ProfMinistraTurma.id_prof = Professor.id AND 
     	ProfMinistraTurma.id_disciplina = Disciplina.id AND
		Disciplina.Id = 2 ;

## Lista o nome de todas as escolas de uma cidade
SELECT Escola.nome FROM Escola, Cidade
WHERE Escola.id_cidade = Cidade.id AND 
   Cidade.id = 9; 

## Lista o nome de todos os alunos de uma cidade
SELECT Pessoa.nome FROM Aluno, Pessoa, Cidade
WHERE Pessoa.id = Aluno.id AND 
   Pessoa.id_cidade = Cidade.id AND 
   Cidade.id = 1; 

## Lista o nome de todos os professores de uma cidade
SELECT Pessoa.nome FROM Professor, Pessoa, Cidade
WHERE Pessoa.id = Professor.id AND 
   Pessoa.id_cidade = Cidade.id AND 
   Cidade.id = 1; 


## Lista o nome de todos os professores que sao diretores de alguma escola
SELECT Pessoa.nome FROM Professor, Pessoa, Escola
WHERE Pessoa.id = Professor.id AND
   Escola.id_diretor  = Pessoa.id ;


## Lista a matrícula de todos os alunos de uma escola
SELECT matricula FROM Pessoa, Aluno, Turma, Escola
WHERE Pessoa.id = Aluno.id AND
	   Aluno.id_turma = Turma.id AND
	   Turma.id_escola = Escola.id AND 
	   Escola.id = 1;

## Lista o nome e a matrícula de todos os alunos de uma turma
SELECT Pessoa.id, Pessoa.nome, matricula FROM Pessoa, Aluno, Turma
WHERE Pessoa.id = Aluno.id AND 
   Aluno.id_turma = Turma.id AND
   Turma.id = 2 ;
