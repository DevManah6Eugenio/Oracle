CREATE TABLE matricula (
  id number primary key,
  aluno_id number NOT NULL,
  curso_id number NOT NULL,
  data date NOT NULL,
  tipo varchar2(20) DEFAULT '' NOT NULL
);

INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (1, 1, 1, '25-NOV-2014','PAGA_PF');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (2, 2, 1, '25-MAI-2015','PAGA_PJ');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (3, 3, 3, '21-JUL-2015','PAGA_PF');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (4, 4, 4, '15-MAI-2015','PAGA_CHEQUE');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (5, 7, 1, '10-MAR-2015', 'PAGA_BOLETO');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (6, 8, 3, '05-MAI-2014', 'PAGA_PJ');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (7, 9, 2, '07-FEV-2015', 'PAGA_PF');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (8, 10, 7, '15-JAN-2015', 'PAGA_PJ');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (9, 4, 7, '08-JUL-2014', 'PAGA_PJ');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (10, 8, 1, '01-JUN-2014', 'PAGA_CHEQUE');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (11, 1, 4, '10-NOV-2014', 'PAGA_BOLETO');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (12, 2, 4, '01-OUT-2014', 'PAGA_PJ');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (13, 3, 4, '15-NOV-2014', 'PAGA_PF');
INSERT INTO matricula (id, aluno_id, curso_id, data, tipo) VALUES (14, 2, 2, '04-JAN-2015', 'PAGA_PJ');
