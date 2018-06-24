/*
ATIVIDADE

inserir em suas tabelas respectivamente:

  5 registros de Endereço;
  5 registros de Pessoa;
  5 registros de Conta;
  
realizar duas consultas simples e uma complexa(SELECT) que retorne as seguintes informações:

  1 - Quero todas as pessoas que residem em apartamentos.
  2 - Quero todas as pessoas que tenha saldoda conta MAIOR que R$100,00
  3 - Quero os endereços das pessoas que não tem saldo em conta e residem em casa.
*/

/*5 registros de Endereço*/
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'rua da saldade', '123', 'casa');
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'rua do hospicio', '2001', 'apar');
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'agamenon magalhães', '4008', 'apar');
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'cruz cabuga', '38', 'casa');
insert into endereco (id_endereco, rua, numero, complemento) values ( s_id_endereco.nextval, 'rua Imperial', '47', 'casa');

/*5 registros de Conta*/
insert into conta (numero, dono, limite, saldo, saldo) values ();

/*5 registros de Pessoa*/
insert into endereco (nome, idade, sexo, id_endereco, numero_conta) values ('cleiton', 32, 'm', 1, );
