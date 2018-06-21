/*campo observação não pode ser nullo*/
ALTER TABLE COMPRAS MODIFY (OBSERVACOES VARCHAR2(30) NOT NULL);

/*compo recebido por padrão deve receber o valor de falso*/
ALTER TABLE COMPRAS MODIFY (RECEBIDO CHAR DEFAULT '0' CHECK (RECEBIDO IN (0,1)));

/*nova coluna com a informação do tipo de pagamento onde os valores permitidos são cartão, boleto e dinheiro*/
ALTER TABLE COMPRAS ADD (FORMA_PAGTO VARCHAR2(15) CHECK (FORMA_PAGTO IN ('CARTAO', 'BOLETO', 'DINHEIRO')));

/*modificar todos as formas de pagamento nulas pra tipo de pagamento boleto*/
UPDATE compras SET forma_pagto = 'BOLETO' WHERE forma_pagto IS NULL;

/*o campo observação não pode ser nullo*/
UPDATE COMPRAS SET OBSERVACOES = '(VAZIO)' WHERE OBSERVACOES IS NULL;

/*não permitir valores nullos em observações*/
ALTER TABLE COMPRAS MODIFY (OBSERVACOES VARCHAR2(30) NOT NULL);
