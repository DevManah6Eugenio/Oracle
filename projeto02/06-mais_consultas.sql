/*valor total das compras ja realizada*/
select sum(valor) from compras;

/*valor total das compras feita as do dia 1 de janeiro de 2010*/
select sum(valor) as soma from compras where data < '01-JAN-2010';

/*media de valor gasto nas compras antes do dia 1 de janeiro de 2010*/
select avg(valor) as media from compras where data < '01-01-2010';

/*media e total de compras feitas*/
select avg(valor) as media, sum(valor) as soma from compras;

/*numero de compras*/
select count(valor) from compras;

/*valor total das compras separadas por compras recebidas e que ainda faltam receber*/
select recebido, sum(valor) from compras group by recebido;

/*media das compras feitas antes do dia 12 do 03 de 2009*/
select avg(valor) as media from compras where data < '12-03-2009';

/*Calcule a soma dos valores de todas as compras com 
datas inferiores a 10/11/2010, agrupadas por forma de pagamento.*/
select forma_pagto, sum(valor) as total from compras where data < '10-11-2010' group by forma_pagto;

/*Calcule a quantidade de compras com datas inferiores a 12/03/2009 e que já foram recebidas.*/
select count(1) as quantidade from compras where data < '12-03-2009' and recebido = '1';

/*Calcule a soma dos valores de todas as compras, agrupadas por forma de pagamento e por compra recebida ou não*/
select recebido, forma_pagto, sum(valor) as total from compras group by forma_pagto, recebido;
