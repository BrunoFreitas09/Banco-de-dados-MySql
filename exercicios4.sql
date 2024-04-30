select * from boletins;
## achar a media das notas de tonico bastos ma disciplina OSA

select aluno,disciplina,avg(nota)## a função de agregção é o avg. todos os campos que não estão na na função de agregação entram no group by
from boletins 
where aluno="tonico bastos"
group by aluno,disciplina;

select aluno,disciplina,avg(nota)## só quer a media da disciplina OSA
from boletins 
where aluno="tonico bastos" and disciplina="OSA"
group by aluno,disciplina;

##Some todas as notas da aluno zarolha por disciplina 
select aluno,disciplina,sum(nota)
from boletins 
where aluno="zarolha"
group by aluno,disciplina
order by disciplina;

  ##quantas notas a zarolha tem de cada disciplina?
  select aluno,disciplina,count(*) nota
  from boletins	
  where aluno="zarolha" 
  group by aluno,disciplina;

##qual a disciplina e a maior nota de todos os alunos
select disciplina,aluno,max(nota)
from boletins
group by aluno,disciplina
order by disciplina,aluno;

##quais as maiores notas dos alunos de disciplina da TLBD-I
select aluno,disciplina,max(nota)
from boletins
where disciplina="TLBD-I"
group by aluno,disciplina
order by aluno,disciplina;

## mostre médias que são maiores do que 7.9
select aluno,disciplina,avg(nota)
from boletins
group by aluno,disciplina
having avg(nota)>=7.9;


##cidade com maior número cadasatrados?
select count(*) cidades,max(alunos)
from alunos;

