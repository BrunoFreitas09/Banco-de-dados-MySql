create database if not exists cantina;
use cantina;
create table categoria (
id int auto_increment,
primary key (id),
descricao varchar(100)
);

create table produto(
id int auto_increment,
primary key(id),
nome varchar(50),
data_validade date,
preco double,
sabor varchar(30),
quantidade int,
id_categoria int,
 foreign key (id_categoria) references categoria(id)

);

create table endereco(
id int auto_increment,
primary key(id),
cidade varchar(25),
bairro varchar(30),
estado char(2),
cep char(11),
logradouro varchar(30)
);

create table fornecedor(
id int auto_increment,
primary key(id),
nome varchar(25),
email varchar(30),
telefone varchar(20),
cnpj char(14),
id_endereco int,
foreign key (id_endereco) references endereco(id)
);

create table produto_fornecedor_assoc(
id_produto int,
id_fornecedor int,
primary key (id_produto,id_fornecedor),
foreign key (id_produto) references produto(id),
foreign key (id_fornecedor) references fornecedor(id)
);

create table despesa(
id int auto_increment,
primary key(id),
descricao varchar(25),
data_vencimento date,
valor double
);

create table pagamento(
id int auto_increment,
primary key(id),
data_pagamento date,
valor double,
id_despesa int,
id_fornecedor int,
foreign key (id_despesa) references despesa(id),
foreign key (id_fornecedor) references fornecedor(id)
);
 
create table cargo(
id int auto_increment,
primary key(id),
tipo varchar(30),
descricao varchar (50)
);

create table funcionario(
id int auto_increment,
primary key(id),
nome varchar(50),
telefone char(13),
endereco varchar(40),
genero varchar (10),
id_cargo int,
id_endereco int,
foreign key (id_cargo ) references cargo(id),
foreign key (id_endereco) references endereco(id)
);

create table cliente(
id int auto_increment,
primary key(id),
nome varchar (30),
rg char (8),
genero varchar (20),
data_nascimento date,
cpf char( 11),
id_funcionario int,
id_endereco int,
foreign key (id_funcionario) references funcionario(id),
foreign key (id_endereco) references endereco(id)
);

create table venda(
id int auto_increment,
primary key(id),
data_venda date,
id_funcionario int,
id_cliente int,
foreign key (id_funcionario) references funcionario(id),
foreign key (id_cliente) references cliente(id)
);

create table recebimento(
id int auto_increment,
primary key(id),
data_recebimento date,
forma_pagamento varchar(10),
valor varchar (15),
id_venda int,
foreign key (id_venda) references venda(id)
);

create table item(
valor_unitario varchar(10),
quantidade varchar(10),
desconto varchar (15),
valor_total varchar (15),
id_produto int,
id_venda int,
primary key (id_venda, id_produto),
foreign key (id_venda) references venda(id),
foreign key(id_produto) references produto(id)
);






