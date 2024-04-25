insert into marca(nome) values ("Toyota"),
("Chevrolet"),
("Volkswagen");

select * from marca;

insert into Cor(nome) values 
("Preto"),
("Prata"),
("Azul");

select * from cor;

insert into agente(nome, matricula, contratacao) values
("Marcelo", "00897", "7723"),
("Anderson", "01022", "8860"),
("Julio", "02797", "7469");

select * from agente;

insert into infracao(descricao,valor,pontos)
values ("Estacionar na contramao da direcao",85.13,4),
 ("Dirigir sem usar lentes corretoras de visao",191.54,7),
 ("Estacionar em faixa destinada a pedestre",127.69,5);

select * from  infracao;

insert into sexo (inicial,nome)
values ("F","Feminino"),
 ("F","Feminino"),
 ("M","Masculino");

insert into estado (sigla,nome)
values("SP","Sao paulo"),
("RS","Rio Grande do Sul"),
("RJ","RIo de Janeiro");

select * from estado;

insert into cidade (nome,id_estado)
values ("Belo Horizonte",1),
("Bauru",2),
("Niteroi",3);

select * from cidade;

insert into endereco (logradouro,numero,bairro,cep,complemento)
values (340,1140, "Vila Antena",3045135,"apartamento"),
(340,1140,"Vila Antena",17015070,"apartamento"),
(789,1140,"centro",24020290,"casas");

select * from cidade;

insert into proprietario (nome,cpf,cadastro,id_cidade,id_sexo,id_endereco)
values ("Andrea",99999999999,55555,1,1,1),
("Fernanda",22222222222,44444,3,2,3),
("Pedro",33333333333,88888,2,3,2);

select * from proprietario;

insert into modelo (nome,id_marca)
values ("Fusca",1),
("porshe",2),
("omnix",3);

select * from modelo;
