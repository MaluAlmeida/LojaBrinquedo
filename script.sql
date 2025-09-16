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