--Criar Usuario(usuario e senha)
CREATE USER perguntas IDENTIFIED BY perguntas;

--Privilegios Usuario
GRANT DBA TO perguntas;

--Perfil
create table perfil(
	codigo number not null,
        nome varchar(30) not null,
	descricao varchar2(100),
	constraint perfil_pk primary key (codigo) enable
);

create sequence s_id_perfil increment by 1 start with 1 minvalue 1;

--Curso
create table curso (
    codigo number not null,
    nome varchar2(50) not null,
    descricao varchar2(100),
    carga_horaria number(4) not null,
    constraint curso_pk primary key (codigo) enable
);

create sequence s_id_curso increment by 1 start with 1 minvalue 1;

--Unidade
create table unidade (
    codigo number not null,
    nome varchar2(50) not null,
    endereco varchar2(100) not null,
    numero number not null,
    bairro varchar2(50) not null,
    cep varchar2(9) not null,
    constraint unidade_pk primary key (codigo) enable
);

create sequence s_id_unidade increment by 1 start with 1 minvalue 1;

--Turma
create table turma (
    codigo number not null,
    codigo_curso number not null,
    codigo_unidade number not null,
    data_inicio date default (sysdate),
    previsao_termino date,
    constraint turma_pk primary key (codigo) enable,
    constraint curso_fk foreign key (codigo_curso) references curso(codigo) enable,
    constraint unidade_fk foreign key (codigo_unidade) references unidade(codigo) enable
);

create sequence s_id_turma increment by 1 start with 1 minvalue 1;

--Usuario
create table usuario (
	cpf varchar2(11) not null,
	codigo_perfil number not null,
	codigo_curso number not null,
        codigo_turma number,
	nome varchar2(250) not null,
	idade number,
	sexo varchar2(1),
	data_nascimento date,
	email varchar2(100),
	ativo char check (ativo in (0,1)),
	constraint usuario_pk primary key (cpf) enable,
	constraint perfil_fk foreign key (codigo_perfil) references perfil(codigo) enable,
	constraint curso_fk2 foreign key (codigo_curso) references curso(codigo) enable,
        constraint turma_fk foreign key (codigo_turma) references turma(codigo) enable
);

--Pergunta
create table pergunta(
	id_pergunta number not null,
        titulo varchar(60) not null,
	descricao varchar2(1000),
	data_criacao date default (sysdate),
	ativo char check (ativo in (0,1)),
	cpf_usuario varchar2(11) not null,
	constraint pergunta_pk primary key (id_pergunta) enable,
	constraint usuario_fk foreign key (cpf_usuario) references usuario(cpf) enable
);

--Sequence de Pergunta
create sequence s_id_pergunta increment by 1 start with 1 minvalue 1;

--Votação
create table votacao(
	id_votacao number not null,
	id_pergunta number not null,
	data_inicio date default (sysdate),
	data_fim date,
	constraint votacao_pk primary key (id_votacao) enable,
	constraint pergunta_fk foreign key (id_pergunta) references pergunta(id_pergunta) enable
);

--Sequence de Votação
create sequence s_id_votacao increment by 1 start with 1 minvalue 1;

--Resposta
create table resposta(
	id_resposta number not null,
	id_pergunta number not null,
	cpf_usuario varchar2(11) not null,
	descricao varchar2(2500),
	constraint resposta_pk primary key (id_resposta) enable,
	constraint resposta_pergunta_fk foreign key (id_pergunta) references pergunta(id_pergunta) enable,
	constraint resposta_usuario_fk foreign key (cpf_usuario) references usuario(cpf) enable
);

--Sequence de Resposta
create sequence s_id_resposta increment by 1 start with 1 minvalue 1;

--Votação Usuario
create table votacao_usuario (
	id_votacao number not null,
	cpf_usuario varchar2(11) not null,
	data date default (sysdate),
	constraint votacao_fk foreign key (id_votacao) references votacao(id_votacao) enable,
	constraint usuario_fk2 foreign key (cpf_usuario) references usuario(cpf) enable
);
