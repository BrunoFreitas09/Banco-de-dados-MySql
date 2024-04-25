select * from alunos;

SELECT NOME , RG, BAIRRO, CIDADE
FROM ALUNOS
WHERE CIDADE="Rio de Janeiro" and bairro like "Vila%";

SELECT NOME , RG , BAIRRO , PAI , MAE
FROM ALUNOS
WHERE PAi LIKE "Coronel%" and MAE LIKE "Florzinha%";


# para entregar: 
select NOME NOME_ALUNO , DATA_NASCIMENTO , CIDADE
from ALUNOS
where  DATA_NASCIMENTO  between "1972-01-01" and "1981-12-31" AND CIDADE="Brasília";

