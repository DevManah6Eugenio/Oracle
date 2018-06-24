/*
ATIVIDADE

inserir em suas tabelas respectivamente:

  5 registros de Endereço;
  5 registros de Pessoa;
  5 registros de Conta;
  
realizar duas consultas simples e uma complexa(SELECT) que retorne as seguintes informações:

  1 - Quero todas as pessoas que residem em apartamentos.
  2 - Quero todas as pessoas que tenha saldo da conta MAIOR que R$100,00
  3 - Quero os endereços das pessoas que não tem saldo em conta e residem em casa.
*/

/*5 registros de Endereço*/
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'rua da saldade', '123', 'casa');
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'rua do hospicio', '2001', 'apar');
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'agamenon magalhães', '4008', 'apar');
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'cruz cabuga', '38', 'casa');
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'rua Imperial', '47', 'casa');

/*5 registros de Conta*/
insert into conta (numero, dono, limite, saldo) values ('123', null, null, '100');
insert into conta (numero, dono, limite, saldo) values ('321', null, null, '50');
insert into conta (numero, dono, limite, saldo) values ('456', null, null, '150');
insert into conta (numero, dono, limite, saldo) values ('789', null, null, '200');
insert into conta (numero, dono, limite, saldo) values ('987', null, null, '0');

/*5 registros de Pessoa*/
insert into pessoa (nome, idade, sexo, cpf, id_endereco, numero_conta) values ('cleiton', '32', 'M', '12345678900', '1', '123');
insert into pessoa (nome, idade, sexo, cpf, id_endereco, numero_conta) values ('manasses', '23', 'M', '09876543211', '2', '321');
insert into pessoa (nome, idade, sexo, cpf, id_endereco, numero_conta) values ('erica', '24', 'F', '12312312312', '3', '456');
insert into pessoa (nome, idade, sexo, cpf, id_endereco, numero_conta) values ('rebeca', '20', 'F', '32132132132', '4', '789');
insert into pessoa (nome, idade, sexo, cpf, id_endereco, numero_conta) values ('miqueias', '22', 'M', '24242424242', '5', '987');

/* 1 - Quero todas as pessoas que residem em apartamentos.*/
select nome from pessoa inner join endereco on (pessoa.id_endereco = endereco.id_endereco) where complemento = 'apar';

/* 2 - Quero todas as pessoas que tenha saldo da conta MAIOR que R$100,00*/
select nome from pessoa inner join conta on (pessoa.numero_conta = conta.numero) where saldo > '100';

/* 3 - Quero os endereços das pessoas que não tem saldo em conta e residem em casa.*/
select endereco.numero, rua, complemento from pessoa 
    inner join endereco on 
    (pessoa.id_endereco = endereco.id_endereco) 
    inner join conta on 
    (pessoa.numero_conta = conta.numero)
    where (saldo is null or saldo = '0')
    and complemento = 'casa';
