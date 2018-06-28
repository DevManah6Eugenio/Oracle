CREATE TABLE secao (
  id number primary key,
  curso_id number NOT NULL,
  titulo varchar2(25) DEFAULT '' NOT NULL,
  explicacao varchar2(50) NOT NULL,
  numero number NOT NULL
);

INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (1, 1, 'Aprendendo o SELECT', 'Explicacao do capitulo Aprendendo o SELECT',1);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (2, 1, 'Aprendendo o UPDATE', 'Explicacao do capitulo Aprendendo o UPDATE',2);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (3, 1, 'Aprendendo o DELETE', 'Explicacao do capitulo Aprendendo o DELETE',3);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (4, 1, 'Aprendendo o INSERT', 'Explicacao do capitulo Aprendendo o INSERT',4);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (5, 2, 'O que eh a Web?', 'Explicacao do capitulo O que eh a Web?',1);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (6, 2, 'Entendendo o MVC', 'Explicacao do capitulo Entendendo o MVC',2);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (7, 2, 'O objeto Result', 'Explicacao do capitulo O objeto Result',3);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (8, 2, 'Interceptor', 'Explicacao do capitulo Interceptor',4);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (9, 3, 'Planejando a iteracao', 'Explicacao do capitulo Planejando a iteracao',1);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (10, 3, 'Retrospectivas', 'Explicacao do capitulo Retrospectivas',2);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (11, 3, 'Reuniao Diaria', 'Explicacao do capitulo Reuniao Diaria',3);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (12, 3, 'Kanban e XP', 'Explicacao do capitulo Kanban e XP',4);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (13, 4, 'Introducao a Web', 'Explicacao do capitulo Introducao a Web',1);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (14, 4, 'O servidor Apache', 'Explicacao do capitulo O servidor Apache',2);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (15, 4, 'Lidando com o MySql', 'Explicacao do capitulo Lidando com o MySql',3);
INSERT INTO secao (id, curso_id, titulo, explicacao, numero) VALUES (16, 4, 'Instalando a aplicacao', 'Explicacao do capitulo Instalando a aplicacao',4);
