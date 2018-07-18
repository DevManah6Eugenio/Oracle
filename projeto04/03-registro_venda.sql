create table registro_venda (
id int not null,
valor_total decimal(9,2),
data_saida date default current_date,
constraint registro_venda_pk primary key(id) enable
);