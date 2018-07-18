create table produto (
id int not null,
descricao varchar(100) not null,
estoque_minimo int not null,
estoque_maximo int not null,
preco decimal(9,2) not null,
constraint produto_pk primary key(id) enable
);