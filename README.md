# Oracle
código SQL para banco de dados Oracle


/*EDEREÇO*/
create table endereco (
rua VARCHAR(20)not null,
numero NUMBER not null,
complemento VARCHAR(4) not null,
id_endereco NUMBER not null,
CONSTRAINT endereco_pk PRIMARY KEY(id_endereco) enable
);

/*PESSOA*/
create table pessoa (
nome VARCHAR(200) not null,
idade number not null,
cpf varchar(11) not null,
sexo VARCHAR(2) not null,
id_endereco number not null,
CONSTRAINT pessoa_pk PRIMARY key(cpf)enable
);

/*conta*/
create table conta (
numero NUMBER not null,
saldo number not null,
limite number not null,
constraint numero_pk primary key(numero)enable 
);  

/*criando as chaves estrangeiras*/
alter table pessoa add CONSTRAINT fk_id_endereco foreign key(id_endereco) REFERENCES endereco(id_endereco);
alter table pessoa add CONSTRAINT fk_numero_conta FOREIGN key(numero_conta) references conta(numero);

/*criando sequence*/
create sequence s_id_endereco increment by 1 STARt with 1 MINVALUE 1;

/*criando trigger de autoincremento*/
create or replace trigger t_id_endereco
before insert on endereco
for each row
begin
    if INSERTING then 
        if :NEW.ID_ENDERECO IS NULL THEN
            SELECT S_ID_ENDERECO.NEXTVAL INTO :NEW.ID_ENDERECO FROM DUAL;
        END IF;
    END IF;
END;

insert into endereco (rua, numero, complemento) values ('Alguma rua', '123', 'AP');
insert into pessoa (nome, idade, sexo, cpf, id_endereco) values ('Cleiton de Aguiar', '31', 'H', '123456789', '1');

update pessoa set cpf = '123123123' where cpf = '123456789';
delete from pessoa where cpf = '123';

select p.nome, p.cpf, p.idade, p.sexo from pessoa p;

select p.nome, p.cpf, e.rua, e.numero from pessoa p, endereco e where p.ID_ENDERECO = e.ID_ENDERECO;

update pessoa set numero_conta = 555, ID_ENDERECO = 3 where  cpf = '123123123';

insert into endereco(rua, numero, complemento) values ("Algum Lugar", 77, "casa");

select * from conta;



