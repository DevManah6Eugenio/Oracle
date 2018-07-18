create table cliente (
cpf int not null,
nome varchar(50) not null,
email varchar(30),
telefone varchar(13) not null,
constraint cliente_pk primary key(cpf) enable
);