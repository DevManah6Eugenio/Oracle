create table registro_entrada (
id int not null,
valor_total decimal(9,2) not null,
data_entrada date not null default current_date,
fornecedor_id int,
constraint registro_entrada_pk primary key(id) enable,
constraint fornecedor_fk foreign key(fornecedor_id) references fornecedor(id) enable,
);