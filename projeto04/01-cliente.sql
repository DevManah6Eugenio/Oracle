create sequence s_id_registro_venda increment by 1 start with 1 minvalue 1;
create sequence s_id_produtos_venda increment by 1 start with 1 minvalue 1;
create sequence s_id_produto increment by 1 start with 1 minvalue 1;
create sequence s_id_produtos_entrada increment by 1 start with 1 minvalue 1;
create sequence s_id_registro_entrada increment by 1 start with 1 minvalue 1;
create sequence s_id_fornecedor increment by 1 start with 1 minvalue 1;
create sequence s_id_estoque increment by 1 start with 1 minvalue 1;

create table cliente (
cpf int not null,
nome varchar(50) not null,
email varchar(30),
telefone varchar(13) not null,
constraint cliente_pk primary key(cpf) enable
);

create table registro_venda (
id int not null,
valor_total decimal(9,2),
data_saida date default current_date,
constraint registro_venda_pk primary key(id) enable
);

create table produtos_venda (
id int not null,
qtd int,
constraint produtos_venda_pk primary key(id) enable
);

create table produto (
id int not null,
descricao varchar(100) not null,
estoque_minimo int,
estoque_maximo int,
preco decimal(9,2) not null,
constraint produto_pk primary key(id) enable
);

create table produtos_entrada (
id int not null,
qtd int not null,
constraint produtos_entrada_pk primary key(id) enable
);

create table registro_entrada (
id int not null,
valor_total decimal(9,2) not null,
data_entrada date not null default current_date,
constraint registro_entrada_pk primary key(id) enable
);

create table estoque (
id int not null,
qtd int,
valor_unitario numeric(9,2) not null,
constraint estoque_pk primary key(id) enable
);

create table fornecedor (
id int not null,
razao_social varchar(14) not null,
telefone varchar(13) not null,
constraint fornecedor_pk primary key(id) enable
);