create table estoque (
id int not null,
qtd int,
valor_unitario numeric(9,2) not null,
produto_id int,
constraint estoque_pk primary key(id) enable,
constraint produto_fk foreign key(produto_id) references produto(id) enable
);