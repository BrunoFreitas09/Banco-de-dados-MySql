SELECT* FROM boletins; ## Seleciona todos os dados da tabela boletim

#EX: Selecione o aluno/disciplina da tabela boletim
select aluno, disciplina
from boletins;

# SELECIONE O ALUNO,DISCIPLINA E NOTA DA DISCIPLINA OZA

select ALUNO,DISCIPLINA,NOTA
from boletins 
where disciplina="OSA";

#Selecione todos os alunos cuja a data da prova está entre os meses de janeiro a junho de 2012

select ALUNO,DATA
from boletins 
where data between "2012-01-01" and "2012-06-01" ;

#ex:Quantas provas foram feitas entre os meses de agosto e dezembro de 2012
select * from boletins;
select count(*) data from boletins
where data between "2012-08-01" and "2012-12-31";

# selecione todos os alunos da disciplina tlbd-I cuja a nota for maior que cinco

select * from boletins;
select aluno,disciplina,nota
from boletins
where disciplina="tlbd-I" and nota>5;	

select aluno,avg(nota) ##função de agregação. 
from boletins
where aluno like "mundinho%"
group by aluno,disciplina;