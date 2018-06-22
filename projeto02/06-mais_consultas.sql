/*valor total das compras ja realizada*/
select sum(valor) from compras;

/*valor total das compras feita as do dia de janeiro de 2010*/
select sum(valor) from compras where data < '01-JAN-2010';
