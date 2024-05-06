select * from alunos;

select nome,data_nascimento
from alunos
where data_nascimento = "1979-03-26" or data_nascimento = "1981-03-20" or data_nascimento = "1933-01-27" or data_nascimento = "1972-05-27" or data_nascimento = "1967-02-10"; 

 ##quantos quantos alunos moram em casa
 ##quantos quantos alunos tem pai coronel
 ##quantos alunos tem sobrenome bastos
 
 select count(*) 
 from alunos
 where complemento = "casa";

 
  select count(*) 
 from alunos
 where pai like"coronel%";

 select count(*) 
 from alunos
 where nome like "%Bastos" ;
 
 ## qual a menor media de qual disciplina do aluno Mundinho falcao?
 select min(nota),aluno,disciplina
 from boletins
 where aluno="mundinho Falcão" and nota >= 6  ;