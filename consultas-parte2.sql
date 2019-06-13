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
SELECT Escola.nome as escolaNome, Cidade.nome as cidadeNome from Escola, Cidade where Cidade.id = Escola.id_cidade and Escola.nome not in (SELECT DISTINCT Escola.nome from Escola,Turma,Aluno,Pessoa, Cidade where Escola.id = Turma.id_escola AND Aluno.id_turma = Turma.id AND Aluno.id = Pessoa.id AND Escola.id_cidade = Cidade.id AND Pessoa.id_cidade != Cidade.id);

# 2) Listar o nome e matrícula dos alunos sem nenhum contato cadastrado.
SELECT Aluno.id, nome, matricula FROM Aluno, Pessoa WHERE Aluno.id = Pessoa.id AND (SELECT COUNT(*) FROM Contato WHERE Contato.id_aluno = Aluno.id) = 0;

# 3) Listar o código e nome das turmas com mais de 5 alunos.
SELECT id, nome FROM Turma WHERE (SELECT COUNT(*) FROM Aluno WHERE Aluno.id_turma = Turma.id) > 5;

# 4) Listar o código, nome e titulação dos professores que ministram aulas para pelo menos três turmas diferentes.
SELECT Pessoa.id, Pessoa.nome, Professor.titulacao FROM Pessoa, Professor, ProfMinistraTurma WHERE Professor.id = Pessoa.id AND
 Professor.id = ProfMinistraTurma.id_prof GROUP BY id HAVING COUNT(DISTINCT ProfMinistraTurma.id_turma) >=3;

# 5) Listar por disciplina o número de professores que podem ministrá-la e quantos efetivamente ministram a mesma para uma turma.
SELECT Disciplina.nome, COUNT(Professor) FROM Disciplina, Professor, ProfMinistraDisciplina, ProfMinistraTurma WHERE Professor.id = ProfMinistraDisciplina.id_prof AND Disciplina.id = ProfMinistraDisciplina.id_disciplina AND ProfMinistraTurma.id_prof = Professor.id GROUP BY Disciplina.nome;

# 6) Listar o nome da escola e o nome dos diretores de escola que residem em cidades diferentes da cidade da escola.
SELECT Escola.nome, Pessoa.nome FROM Escola, Professor, Pessoa WHERE Professor.id = Pessoa.id AND Escola.id_diretor = Professor.id AND Escola.id_cidade != Pessoa.id_cidade;

# 7) Listar por escola o número de turmas e o número de professores que ministram alguma disciplina para turmas da escola em questão.
SELECT Escola.nome, Count(Turma.id) as numero_de_turmas, Count(Professor.id) as numero_de_professores FROM Escola,Turma,Professor, ProfMinistraTurma WHERE ProfMinistraTurma.id_turma = Turma.id AND ProfMinistraTurma.id_prof  = Professor.id AND Turma.id_escola = Escola.id  group by Escola.nome;

# 8) Listar por escola a razão entre o número de alunos da escola e o número de professores que ministram alguma disciplina na escola em questão.
SELECT Escola.nome, count(Aluno.id) / count( distinct Professor.id) as razao_aluno_professor from Escola, Aluno, Professor, Turma, ProfMinistraTurma where Escola.id = Turma.id_escola and Aluno.id_turma = Turma.id and ProfMinistraTurma.id_turma = Turma.id and ProfMinistraTurma.id_prof  = Professor.id and Turma.id_escola = Escola.id group by Escola.nome;

# 9) Listar todos os contatos dos alunos informando a matrícula e nome do aluno, nome e telefone do contato, ordenado por matrícula do aluno e nome do contato.
SELECT Contato.nome, Pessoa.nome, Aluno.matricula FROM Contato, Pessoa, Aluno WHERE Pessoa.id = Aluno.id AND Contato.id_aluno = Aluno.id ORDER BY Aluno.matricula, Contato.nome;

# 10) Listar todos os professores que ministram disciplinas para apenas uma turma.
SELECT Pessoa.nome from Pessoa, Professor, ProfMinistraTurma Where Pessoa.id = Professor.id and ProfMinistraTurma.id_prof = Professor.id group by Pessoa.nome having count(ProfMinistraTurma.id_turma) = 1;
