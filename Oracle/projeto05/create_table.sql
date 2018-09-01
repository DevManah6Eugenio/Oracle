--criar usuario
CREATE USER fuctura IDENTIFIED BY fuctura;

--privilegios para o usuario
GRANT DBA TO fuctura;

create table perfil(
	codigo number not null,
	descricao varchar2(50),
	constraint perfil_pk primary key (codigo) enable
);

create table curso (
	codigo number not null,
	descricao varchar2(50),
	constraint curso_pk primary key (codigo) enable
);

create table usuario(
	cpf varchar2(11) not null,
	codigo_perfil number not null,
	codigo_curso number not null,
	nome varchar2(250) not null,
	idade number,
	sexo varchar2(1),
	data_nascimento date default (sysdate),
	email varchar2(100),
	ativo varchar2(1),
	constraint usuario_pk primary key (cpf) enable,
	constraint perfil_fk foreign key (codigo_perfil) references perfil(codigo) enable,
	constraint curso_fk foreign key (codigo_curso) references curso(codigo) enable
);

create table pergunta(
	id_pergunta number not null,
	descricao varchar2(1000),
	data_criacao date default (sysdate),
	ativo varchar2(1),
	cpf_usuario varchar2(11) not null,
	constraint pergunta_pk primary key (id_pergunta) enable,
	constraint usuario_fk foreign key (cpf_usuario) references usuario(cpf) enable
);

create sequence s_id_pergunta increment by 1 start with 1 minvalue 1;

create table votacao(
	id_votacao number not null,
	id_pergunta number not null,
	data_inicio date default (sysdate),
	data_fim date default (sysdate),
	constraint votacao_pk primary key (id_votacao) enable,
	constraint pergunta_fk foreign key (id_pergunta) references pergunta(id_pergunta) enable
);

create sequence s_id_votacao increment by 1 start with 1 minvalue 1;

create table resposta(
	id_resposta number not null,
	id_pergunta number not null,
	cpf_usuario varchar2(11) not null,
	descricao varchar2(2500),
	data date default (sysdate),
	constraint resposta_pk primary key (id_resposta) enable,
	constraint resposta_pergunta_fk foreign key (id_pergunta) references pergunta(id_pergunta) enable,
	constraint resposta_usuario_fk foreign key (cpf_usuario) references usuario(cpf) enable
);

create sequence s_id_resposta increment by 1 start with 1 minvalue 1;

create table votacao_usuario (
	id_votacao number not null,
	cpf_usuario varchar2(11) not null,
	data date default (sysdate),
	constraint votacao_fk foreign key (id_votacao) references votacao(id_votacao) enable,
	constraint usuario_fk2 foreign key (cpf_usuario) references usuario(cpf) enable
);
