create database if not exists cantina ;
use cantina;

	/* criação de tabela*/
	CREATE TABLE IF NOT EXISTS produtos (
    id SMALLINT AUTO_INCREMENT,
    produto VARCHAR(40),
    unidade varchar(10),
    qtde DOUBLE,
    valor DOUBLE,
    categoria VARCHAR(30),
    fornecedor VARCHAR(50),
    contato VARCHAR(40),
    PRIMARY KEY (id)
);
drop table produtos;

