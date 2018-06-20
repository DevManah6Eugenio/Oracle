/*TABELA COMPRAS*/
create table compras (
    id number primary key,
    valor number,
    data date,
    observacoes varchar2(30),
    recebido char check (recebido in (0,1))
);

/*sequende*/
create sequence id_seq;
