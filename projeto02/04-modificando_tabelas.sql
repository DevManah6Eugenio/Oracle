/*alterar as compras feitas no dias 25/12/2010 ou no dia 12/10/2010 
ou ainda no dia 12/06/2010 para conter a observação "datas festivas".*/
UPDATE COMPRAS SET OBSERVACOES = 'datas festivas' WHERE DATA IN ('25-DEC-2010', '12-OCT-2010', '12-JUN-2010');

/*deletar todas as compras feitas antes de 1 de janeiro de 2009*/
DELETE FROM COMPRAS WHERE DATA < '01-JAN-2009';

/*Alterar as compras, colocando a observação 'compras do dia dos namorados'
para todas as que foram efetuadas no dia 12/06/2010.*/
update compras set observacoes = 'compras do dia dos namorados' where data = '12-06-2010';

/*Alterar o VALOR das compras feitas antes de 01/06/2009. Some R$10,00 ao valor atual.*/
update compras set valor = valor+10 where data < '01-06-2009';

/*Atualize todas as compras feitas entre 01/07/2009 e 01/07/2010 para que elas tenham 
a observação 'entregue antes de 2011' e a coluna recebido com o valor '1' (TRUE).*/
update compras set observacoes = 'entregue antes de 2011', recebido = '1' where data between '01-07-2009' and '01-07-2010';

/*Excluir as compras realizadas entre 05 e 20 março de 2009.*/
delete from compras where data between '05-03-2009' and '20-03-2009';

/*Selecione todas as compras com valor diferente de R$ 108,00.*/
select * from compras where not valor = '108';
