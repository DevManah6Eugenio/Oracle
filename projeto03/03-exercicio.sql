CREATE TABLE exercicio (
  id number primary key,
  secao_id number NOT NULL,
  pergunta varchar2(30) NOT NULL,
  resposta_oficial varchar2(75) NOT NULL
);

INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (1, 1, 'O que eh um select?', 'Uma consulta que devolve resultados');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (2, 1, 'Como funciona um select?', 'select campos from tabela');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (3, 2, 'O que eh um update?', 'Serve pra alterar dados');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (4, 2, 'Perigos do update?', 'Nao pode esquecer de colocar where');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (5, 3, 'O que eh um delete?', 'Deleta uma linha do banco de dados');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (6, 3, 'Cuidados com ele?', 'Nao pode esquecer do where');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (7, 4, 'O que eh um insert?', 'Serve para inserir um dado no banco');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (8, 4, 'Como funciona?', 'insert into (coluna1, coluna2) values (v1, v2)');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (9, 5, 'Como funciona a web?', 'Requisicao e resposta');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (10, 5, 'Que linguagens posso ajudar?', 'Varias, como Java, Php, C#, etc');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (11, 6, 'O que eh MVC?', 'Model View Controller');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (12, 6, 'Frameworks que usam?', 'Vraptor, Spring MVC, Struts, etc');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (13, 7, 'O que eh a classe Result?', 'Serve para lidar com o resultado');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (14, 8, 'O que eh um interceptor?', 'Eh como se fosse um filtro que eh executado antes');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (15, 8, 'Quando usar?', 'Tratamento de excecoes, conexao com o banco de dados');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (16, 9, 'O que eh iteracao', 'Tempo que voce tem pra agregar valor');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (17, 9, 'Qual tamanho bom?', 'De 2 a 4 semanas, segundo o Scrum Guide antigo');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (18, 10, 'O que sao retrospectiva?', 'Reunioes onde a ideia eh melhorar o processo');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (19, 10, 'Quando devemos fazer?', 'Geralmente a cada iteracao');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (20, 11, 'O que eh a reuniao diaria?', 'Uma pequena reuniao para informar a equipe sobre o andamento da iteracao');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (21, 11, 'Quando fazemos?', 'Uma vez por dia, em um horario fixo e pre definido');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (22, 12, 'O que eh kanban?', 'Um metodo agil');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (23, 12, 'O que eh xp?', 'Outro metodo agil');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (24, 12, 'Tem outros?', 'Lean, Crystal, FDD');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (25, 13, 'O que eh a web?', 'Eh a internet, ue');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (26, 13, 'Como funciona a web?', 'Requisicao e resposta');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (27, 14, 'O que eh o apache?', 'Servidor que sabe trabalhar com HTTP');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (28, 14, 'Java funciona?', 'Sim, quando colocamos o tomcat junto com ele');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (29, 15, 'O que eh mysql', 'Essa voce sabe, certo? :)');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (30, 16, 'O que eh deploy?', 'Eh o processo de colocarmos a aplicacao no ar');
INSERT INTO exercicio (id, secao_id, pergunta, resposta_oficial) VALUES (31, 16, 'Como faz?', 'Em php, basta copiar os arquivos Php, em Java, basta copiar o jar');
