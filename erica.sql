/*Endereco*/
create table Endereco(
Rua VARCHAR (200) not null,
numero NUMBER NOT NULL ,
Complento VARCHAR(4) NOT NULL,
Id_Endereco NUMBER NOT NULL,
CONSTRAINT Endereco_pk PRIMARY KEY
(
Id_Endereco
)
ENABLE
);

create table Pessoa(
Nome VARCHAR(200) NOT NULL,
Idade NUMBER NOT NULL,
Sexo  VARCHAR(2) NOT NULL,
Cpf VARCHAR(11) NOT NULL,
Id_Endereco NUMBER NULL,
CONSTRAINT Pessoa_pk PRIMARY KEY 
(
Cpf
)
ENABLE
);

/*Conta*/
create table Conta(
Numero NUMBER NOT NULL,
Saldo NUMBER NOT NULL,
Limite NUMBER NOT NULL,
CONSTRAINT Numero_pk PRIMARY KEY 
(
Numero
)
ENABLE
);


