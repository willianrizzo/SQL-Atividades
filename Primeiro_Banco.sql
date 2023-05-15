create database db_livraria;
use db_livraria;

create table tb_livro(
	pk_IdLivro int primary key auto_increment,
    Autor varchar(100), 
    Titulo varchar(100),
    Preco int(7),
    Genero varchar(100),
    Classificação varchar(5),
    Tipo varchar(100),
    Capa varchar(20),
    Editora varchar(100),
    Idioma varchar (20),
    fk_IdFornecedor int NOT NULL,
    Estoque int,
    QuantidadeVenda int,
    fk_IdCliente int
);


alter table tb_livro add foreign key (fk_IdCliente) references tb_cliente (pk_IdCliente);
select * from tb_cliente;

create table tb_cliente(
	pk_IdCliente int primary key auto_increment,
    Nome varchar(100),
    DataNascimento varchar (10),
    email varchar(100),
    TelCliente varchar(14),
    Endereco varchar (100),
    Cpf varchar (14),
    Cep varchar (7),
    Cidade varchar (50),
    Estado varchar (50),
    Pais varchar (50),
    fk_IdLivro int,
    foreign key (fk_IdLivro) references tb_livro (pk_IdLivro)
);

create table tb_fornecedor(
	pk_IdFornecedor int primary key auto_increment,
    Nome varchar(100),
    Cnpj varchar (18),
    Endereco varchar(100),
    TelFornecedor varchar (11),
    EmailFornecedor varchar(100),
    Cidade varchar (50),
    Estado varchar (50), 
    Pais varchar (50),
    Cep varchar (7),
    fk_IDProduto int,
    foreign key (fk_IDProduto) REFERENCES tb_produto (pk_IdProduto)
);
    
    
create table tb_vendedor(
    pk_IdVendedor int primary key auto_increment,
    NomeVendedor varchar (100),
    Unidade varchar(100),
    Cpf varchar (14),
    DataNascimento date,
    TelVendedor varchar (11),
    EmailVendedor varchar (100),
    Endereco varchar (50),
    Salario float, 
    DataAdmissão date,
    Cargo varchar(50),
    CargaHoraria int
);

create table tb_produto(
	pk_IdProduto int primary key auto_increment,
    NomeProduto varchar (100),
    Descricao varchar(100),
    Fornecedor varchar(100),
    Preco float,
    TipoProduto varchar(100),
    imposto float
);
