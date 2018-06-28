CREATE TABLE resposta (
  id number primary key,
  exercicio_id number DEFAULT NULL,
  aluno_id number DEFAULT NULL,
  resposta_dada varchar2(85)
);

INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (1, 1, 1, 'Uma selecao');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (2, 2, 1, 'Vish, nao sei');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (3, 3, 1, 'Alterar dados');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (4, 4, 1, 'Asquecer o where e alterar tudo');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (5, 5, 1, 'Apagar coisas');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (6, 6, 1, 'Tambem nao pode esquecer o where');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (7, 7, 1, 'Inserir dados');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (8, 1, 2, 'Buscar dados');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (9, 2, 2, 'Select campos from tabela');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (10, 13, 2, 'Alterar coisas');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (11, 4, 2, 'Vish, nao sei');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (12, 16, 3, 'Tempo pra fazer algo');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (13, 17, 3, '1 a 4 semanas');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (14, 18, 3, 'Melhoria do processo');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (15, 19, 3, 'Todo dia');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (16, 20, 3, 'Reuniao de status');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (17, 21, 3, 'Todo dia');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (18, 22, 3, 'O quadro branco');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (19, 23, 3, 'Um metodo agil');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (20, 24, 3, 'Tem varios outros');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (21, 25, 4, 'Eh a internet');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (22, 26, 4, 'Browser faz requisicao, servidor manda resposta');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (23, 27, 4, 'Eh o servidor que lida com http');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (24, 28, 4, 'Nao sei');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (25, 29, 4, 'Banco de dados!');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (26, 30, 4, 'Eh colocar a app na internet');
INSERT INTO resposta (id, exercicio_id, aluno_id, resposta_dada) VALUES (27, 31, 4, 'Depende da tecnologia, mas geralmente eh levar pra um servidor que ta na internet');
