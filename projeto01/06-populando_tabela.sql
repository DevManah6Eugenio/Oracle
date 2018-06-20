/*modificando o nome da coluna limiti para limite*/
ALTER TABLE CONTA RENAME COLUMN LIMITI TO LIMITE;

/*inserindo dados na tabela conta*/
INSERT INTO CONTA(NUMERO, DONO, LIMITE, SALDO) VALUES ('12345', 'CLEITON', '10', '0');
INSERT INTO CONTA(NUMERO, DONO, LIMITE, SALDO) VALUES ('54321', 'Manasses', '10', '110');
INSERT INTO CONTA(NUMERO, DONO, LIMITE, SALDO) VALUES ('121212', 'Erica', '10', '120');
INSERT INTO CONTA(NUMERO, DONO, LIMITE, SALDO) VALUES ('112233', 'Miqueias', '10', '90');

/*inserindo dados na tabela endereço*/
INSERT INTO ENDERECO(RUA, NUMERO, COMPLEMENTO) VALUES ('RUA FULANA DE TAL', '300', 'CASA');
insert into endereco(rua, numero, complemento) values ('rua fulana de tal', '300', 'casa');
