/*Busque todos os alunos que não tenham nenhuma matrícula nos cursos*/
select a.nome from aluno a where not exists (select m.id from matricula m where m.aluno_id = a.id);

/*Busque todos os alunos que não tiveram nenhuma matrícula no último ano, usando a instrução EXISTS*/
select a.nome from aluno a where not exists (select m.id from matricula m where a.id = m.id and M.DATA > (select sysdate - interval '1' year from dual));

select a.nome from aluno a where (
    select count(m.id) from matricula m where m.aluno_id = a.id and 
    m.data > (select sysdate - interval '1' year from dual)) = 0;
    
/*Busque todos os alunos que não tiveram nenhuma matrícula no ano de 2015, usando a instrução EXISTS*/
select a.nome from aluno a join matricula where 
