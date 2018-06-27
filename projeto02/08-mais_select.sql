/*adicionar a tabela compras o compo comprador_id*/
alter table compras add (comprador_id number);

/*quando o valor de identificação da compra for maior que 20 o valor de comprador_id de ser 2
e se for menor 1*/
update compras set comprador_id = 1 where id < 20;
update compras set comprador_id = 2 where id > 20;

alter table compras modify (comprador_id number not null);

alter table compras add foreign key (comprador_id) references compradores(id);

/*Exiba o NOME do comprador e o VALOR de todas as compras feitas antes de 09/07/2010. */
select nome, valor from compras join compradores on compras.comprador_id = compradores.id
    where data < '09-06-2010';
    
/*Exiba todas as compras do comprador que possui ID igual a 1.*/
select * from compras where comprador_id = 1;

/*Exiba o nome do comprador e a soma de todas as suas compras.*/
select nome, sum(valor) as soma from compras join compradores on compras.comprador_id = compradores.id group by nome;
