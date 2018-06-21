/*campo observação não pode ser nullo*/
ALTER TABLE COMPRAS MODIFY (OBSERVACOES VARCHAR2(30) NOT NULL);

/*compo recebido por padrão deve receber o valor de falso*/
ALTER TABLE COMPRAS MODIFY (RECEBIDO CHAR DEFAULT '0' CHECK (RECEBIDO IN (0,1)));
