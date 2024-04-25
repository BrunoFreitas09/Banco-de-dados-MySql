#funções de agregação
# a função abaixo usa-se para contar udando o count:
#Quantas vezes a disciplina OSA aparece na tabela boletins
select *from boletins;
select count(*) 
from boletins 
where disciplina = "OSA";

select count(*) 
from boletins 
where aluno like "coronel";

##Conte quantas notas maior que 5 no período de janeiro a marco de 2012
select count(*)
from boletins
where nota>=5 and data between  "2012-01-01" and "2012-03-31";

#quantas recuperações ficou o tonico bastos nos meses de outubro a dezembro 

select count(*)
from boletins 
where aluno like "tonico%" and data between "2012-10-01" and "2012-12-31" and nota<5.0;

#Quantas notas o aluno mundinho falcão tirou nmaiores que 7 no primeiro semestre?
select count(*)
from boletins 
where aluno="Mundinho Falcão"  and data between "2012-01-01" and "2012-06-30" and nota>7.0;