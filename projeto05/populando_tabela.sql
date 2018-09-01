--perfil
insert into perfil (codigo, descricao) values (1, 'administrador');
insert into perfil (codigo, descricao) values (2, 'usuario');

--curso
insert into curso (codigo, descricao) values (1, 'java');
insert into curso (codigo, descricao) values (2, 'linux');

--usuario
insert into usuario (cpf, codigo_perfil, codigo_curso, nome, idade, sexo, data_nascimento, email, ativo) 
	values ('11111111111', 1, 1, 'manasses eugenio', 24, 'M', '28-08-1994', 'manasses.java@gmail.com', 't');
insert into usuario (cpf, codigo_perfil, codigo_curso, nome, idade, sexo, data_nascimento, email, ativo) 
	values ('22222222222', 2, 2, 'erica', 25, 'F', '28-12-1994', 'erica@gmail.com', 't');

--pergunta
insert into pergunta (id_pergunta, descricao, data_criacao, ativo, cpf_usuario) 
	values (s_id_pergunta.nextval, 'qual é a cor do cavalo branco de napoleão', '01-09-2018', 't', '11111111111');
insert into pergunta (id_pergunta, descricao, data_criacao, ativo, cpf_usuario) 
	values (s_id_pergunta.nextval, 'no ceu tem pão', '01-09-2018', 't', '22222222222');

--votacao
insert into votacao (id_votacao, id_pergunta, data_inicio, data_fim) 
	values (s_id_votacao.nextval, 1, '01-09-2018', '10-09-2018');
insert into votacao (id_votacao, id_pergunta, data_inicio, data_fim) 
	values (s_id_votacao.nextval, 2, '01-09-2018', '10-09-2018');

--resposta
insert into resposta (id_resposta, id_pergunta, cpf_usuario, descricao, data) 
	values (s_id_resposta.nextval, 1, '22222222222', 'a cor do cavalo é preto', '01-09-2018');
insert into resposta (id_resposta, id_pergunta, cpf_usuario, descricao, data) 
	values (s_id_resposta.nextval, 2, '11111111111', 'não, tem mandioca', '01-09-2018');

--votacao_usuario
insert into votacao_usuario (id_votacao, cpf_usuario, data) values (1, '11111111111', '01-09-2018');
insert into votacao_usuario (id_votacao, cpf_usuario, data) values (2, '22222222222', '01-09-2018');


