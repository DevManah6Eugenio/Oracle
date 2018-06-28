/*Busque todos os alunos que não tenham nenhuma matrícula nos cursos*/
select aluno.nome from aluno where not exists (select matricula.id from matricula where matricula.aluno_id = aluno.id);

/*Busque todos os alunos que não tiveram nenhuma matrícula no último ano, usando a instrução EXISTS*/
select a.nome from aluno a where not exists (
    select m.id from matricula m where a.id = m.id and M.DATA > (select sysdate - interval '1' year from dual));

/*Busque todos os alunos que não tiveram nenhuma matrícula no ano de 2015, usando a instrução EXISTS*/
select a.nome from aluno a where not exists ( select m.id from matricula m 
    where m.aluno_id = a.id and m.data < '01-01-2015' );

-------------------------------------------------------------------------------------------------------------
/*Exiba a média das notas por curso.*/
select c.nome from curso c
    join nota;
