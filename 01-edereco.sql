/*EDEREÇO*/ 
CREATE TABLE ENDERECO(
ID_ENDERECO NUMBER NOT NULL,
RUA VARCHAR2(200 BYTE) NOT NULL,
NUMERO NUMBER NOT NULL,
COMPLEMENTO VARCHAR2(4 BYTE) NOT NULL,
CONSTRAINT ENDERECO_PK PRIMARY KEY(ID_ENDERECO) ENABLE
)
