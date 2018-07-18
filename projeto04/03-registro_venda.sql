create table registro_venda (
id int not null,
valor_total decimal(9,2),
data_saida date default current_date,
clinte_cpf int not null,
constraint registro_venda_pk primary key(id) enable,
constraint cliente_fk foreign key(clinte_cpf) references cliente(cpf) ENABLE,
);