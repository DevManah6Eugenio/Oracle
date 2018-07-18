create table produtos_venda (
id int not null,
qtd int,
registro_venda_id int,
produto_id int,
constraint produtos_venda_pk primary key(id) enable,
constraint registro_venda_fk foreign key(registro_venda_id) references registro_venda(id) enable,
constraint produto_fk foreign key(produto_id) references produto(id) enable,
);
