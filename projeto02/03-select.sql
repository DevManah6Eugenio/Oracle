/*selecionando as colunas valor e observacoes onde data seja ingual ou maior que 15 de novembro de 2008*/
select valor, observacoes from compras where data >= '15-NOV-2008';

/*Selecionando todas as compras cuja data seja maior ou igual que 
15/11/2008 e menor do que 15/11/2010.*/
select * from compras where data >= '15-NOV-2008' and data <= '15-NOV-2010';

/*Selecionando todas as compras cujo valor esteja entre R$15,00 e R$35,00 e a
observação comece com a palavra 'LANCHONETE'.*/
select * from compras where valor >= '15' and valor <= '35' and LIKE 'LANCHONETE%';

/*Selecionando todas as compras que já foram recebidas.*/
select * from compras where recebido = '1';

/*Selecionando todas as compras que ainda não foram recebidas.*/
select * from compras where recebido = '0';

/*Selecionando todas as compras com valor maior que 5.000,00 ou que já foram recebidas.*/
SELECT * FROM COMPRAS WHERE RECEBIDO = '1' OR VALOR > 5000;

/*Selecionando todas as compras que o valor esteja entre 1.000,00 e 3.000,00 ou seja maior que 5.000,00.*/
select * from compras where valor > '1000' and valor < '3000' or valor > '5000';
