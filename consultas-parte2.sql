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

# 1) Listar o nome e a cidade das escolas onde todos os alunos residam na mesma cidade onde a escola está localizada.

# 2) Listar o nome e matrícula dos alunos sem nenhum contato cadastrado.
SELECT Aluno.id, nome, matricula FROM Aluno, Pessoa WHERE Aluno.id = Pessoa.id AND (SELECT COUNT(*) FROM Contato WHERE Contato.id_aluno = Aluno.id) = 0;

# 3) Listar o código e nome das turmas com mais de 5 alunos.
SELECT id, nome FROM Turma WHERE (SELECT COUNT(*) FROM Aluno WHERE Aluno.id_turma = Turma.id) > 5;

# 4) Listar o código, nome e titulação dos professores que ministram aulas para pelo menos três turmas diferentes.

# 5) Listar por disciplina o número de professores que podem ministrá-la e quantos efetivamente ministram a mesma para uma turma.
#SELECT COUNT(*) FROM Disciplina, Professor, ProfMinistraDisciplina WHERE Disciplina.id = ProfMinistraDisciplina.id_disciplina;
#SET @var := SELECT COUNT(*) FROM Disciplina, Professor, ProfMinistraDisciplina WHERE ;
#SELECT id FROM Disciplina WHERE Disciplina.id = @var; 

# 6) Listar o nome da escola e o nome dos diretores de escola que residem em cidades diferentes da cidade da escola.
SELECT Escola.nome, Pessoa.nome FROM Escola, Professor, Pessoa WHERE Professor.id = Pessoa.id AND Escola.id_diretor = Professor.id AND Escola.id_cidade != Pessoa.id_cidade;

# 7) Listar por escola o número de turmas e o número de professores que ministram alguma disciplina para turmas da escola em questão.


# 8) Listar por escola a razão entre o número de alunos da escola e o número de professores que ministram alguma disciplina na escola em questão.


# 9) Listar todos os contatos dos alunos informando a matrícula e nome do aluno, nome e telefone do contato, ordenado por matrícula do aluno e nome do contato.
SELECT Contato.nome, Pessoa.nome, Aluno.matricula FROM Contato, Pessoa, Aluno WHERE Pessoa.id = Aluno.id AND Contato.id_aluno = Aluno.id ORDER BY Aluno.matricula, Contato.nome;

# 10) Listar todos os professores que ministram disciplinas para apenas uma turma.