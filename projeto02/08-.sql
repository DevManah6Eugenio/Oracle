/*adicionar a tabela compras o compo comprador_id*/
alter table compras add (comprador_id number);

/*quando o valor de identificação da compra for maior que 20 o valor de comprador_id de ser 2
e se for menor 1*/
update compras set comprador_id = 1 where id < 20;
update compras set comprador_id = 2 where id > 20;

alter table compras add foreign key (comprador_id) references compradores(id);
