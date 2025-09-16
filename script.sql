create database LojaBrinquedo; 
use LojaBrinquedo;

create table Produto(
Id int primary key auto_increment, 
Nome varchar(50) not null, 
Descricao varchar(100) not null, 
Preco decimal(10,2) not null, 
UrlImg varchar(250) not null, 
Estoque int not null); 

create table Pedido(
Id int primary key auto_increment, 
DataPedido datetime not null, 
Total decimal(10,2) not null, 
Status varchar(50) not null, 
Endereco varchar(100) not null, 
FormaPag varchar(100) not null, 
Frete decimal(10,2) not null);

create table ItemPedido(
Id int primary key auto_increment, 
PedidoId int not null, 
ProdutoId int not null, 
Qtd int not null, 
PrecoUnitario decimal(10,2) not null);

insert into Produto(Nome, Descricao, Preco, UrlImg, Estoque) values ('Torre', 'Jogo para raciocínio', 100.00, 'img/torre.jpg', 2);
insert into Produto(Nome, Descricao, Preco, UrlImg, Estoque) values ('Monster', 'Diário da Draculaura', 150.00, 'img/monster.jpg', 2);
insert into Produto(Nome, Descricao, Preco, UrlImg, Estoque) values ('Encaixa', 'Jogo de encaixar as peças', 80.00, 'img/encaixa.jpg', 2);
insert into Produto(Nome, Descricao, Preco, UrlImg, Estoque) values ('Joaninha', 'Brinquedo interativo', 60.00, 'img/joaninha.jpg', 2);
insert into Produto(Nome, Descricao, Preco, UrlImg, Estoque) values ('Massinha', 'Massinha de modelar', 50.00, 'img/massinha.jpg', 2);
insert into Produto(Nome, Descricao, Preco, UrlImg, Estoque) values ('Pato', 'Brinquedo de pato', 30.00, 'img/pato.jpg', 2);