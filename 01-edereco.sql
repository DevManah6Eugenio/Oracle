/*EDEREÇO*/ 
create table endereco (
rua VARCHAR(20)not null, 
numero NUMBER not null, 
complemento VARCHAR(4) not null, 
id_endereco NUMBER not null, 
CONSTRAINT endereco_pk PRIMARY KEY(id_endereco) enable 
);
