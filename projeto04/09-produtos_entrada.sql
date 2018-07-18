create table produtos_entrada (
id int not null,
qtd int not null,
produto_id int,
registro_entrada_id int,
constraint produtos_entrada_pk primary key(id) enable,
constraint produto_fk foreign key(produto_id) references produto(id) enable,
constraint registro_entrada_fk foreign key(registro_entrada_id) references registro_entrada(id) enable
);