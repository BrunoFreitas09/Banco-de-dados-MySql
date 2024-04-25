create database if not exists DETRAN ;
use DETRAN;

CREATE TABLE marca (
    id INT AUTO_INCREMENT,
    nome VARCHAR(50),
    PRIMARY KEY (id)
);
CREATE TABLE cor (
    id INT AUTO_INCREMENT,
    nome VARCHAR(30),
    PRIMARY KEY (id)
);
CREATE TABLE agente (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    matricula INT,
    nome VARCHAR(200),
    contratacao VARCHAR(50)
);
CREATE TABLE infracao (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    descricao VARCHAR(200),
    valor DOUBLE,
    pontos INT
);
CREATE TABLE sexo (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    descricao VARCHAR(100),
    nome varchar(30),
    inicial char (1)
);
CREATE TABLE estado (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    sigla CHAR(2),
    nome VARCHAR(50)
);
CREATE TABLE cidade (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    id_estado INT,
    nome VARCHAR(50),
    FOREIGN KEY (id_estado)
        REFERENCES estado (id)
);
CREATE TABLE endereco (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    logradouro VARCHAR(80),
    numero VARCHAR(10),
    bairro VARCHAR(50),
    cep CHAR(8),
    complemento VARCHAR(100)
);
CREATE TABLE proprietario (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    nome VARCHAR(50),
    cpf CHAR(11),
    cadastro VARCHAR(50),
    id_cidade INT,
    id_sexo INT,
    id_endereco int,
    FOREIGN KEY (id_cidade)
        REFERENCES cidade (id),
    FOREIGN KEY (id_sexo)
        REFERENCES sexo (id),
        foreign key(id_endereco) references endereco(id)
);
CREATE TABLE modelo (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    nome VARCHAR(50),
    id_marca int,
    FOREIGN KEY (id_marca)
        REFERENCES marca (id)
);
CREATE TABLE veiculo (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    placa CHAR(7),
    id_cor INT,
    id_proprietario INT,
    id_modelo INT,
    cadastro VARCHAR(50),
    FOREIGN KEY (id_cor)
        REFERENCES cor (id),
    FOREIGN KEY (id_proprietario)
        REFERENCES proprietario (id),
    FOREIGN KEY (id_modelo)
        REFERENCES modelo (id)
);
CREATE TABLE multa (
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id),
    lancamento VARCHAR(50),
    data DATE,
    hora TIME,
    local VARCHAR(150),
    id_veiculo INT,
    id_agente INT,
    id_cidade INT,
    id_infracao INT,
    FOREIGN KEY (id_veiculo)
        REFERENCES veiculo (id),
    FOREIGN KEY (id_agente)
        REFERENCES agente (id),
    FOREIGN KEY (id_cidade)
        REFERENCES cidade (id),
    FOREIGN KEY (id_infracao)
        REFERENCES infracao (id)
);