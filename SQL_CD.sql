CREATE DATABASE DB_CDS;

USE DB_CDS;

CREATE TABLE tb_Artista(
	cod_Art int AUTO_INCREMENT PRIMARY KEY,
  nome_Art varchar(100) not null UNIQUE
);

CREATE TABLE tb_Gravadora(
	cod_Grav int AUTO_INCREMENT PRIMARY KEY,
  nome_Grav varchar(50) NOT null UNIQUE
);

CREATE TABLE tb_Categoria(
	cod_Cat int AUTO_INCREMENT PRIMARY KEY,
  nome_Cat varchar(50) NOT null UNIQUE
);

CREATE TABLE tb_Estado(
	sigla_Est char(2) NOT null PRIMARY KEY,
  nome_Est char(50) NOT null UNIQUE
);

CREATE TABLE tb_Cidade(
	cod_Cid int AUTO_INCREMENT PRIMARY KEY,
  sigla_Cid char(2) NOT null,
  nome_Cid varchar(100) not null,
  FOREIGN KEY (sigla_Cid) REFERENCES tb_estado (sigla_Est)
);

CREATE TABLE tb_Cliente (
	cod_Cli int AUTO_INCREMENT PRIMARY KEY,
  cod_Cid int NOT null REFERENCES tb_Cidade (cod_Cid),
  nome_Cli varchar(100) NOT null,
  end_Cli varchar(200) NOT null,
  renda_Cli decimal(10, 2) NOT null DEFAULT 0 CHECK (renda_Cli >= 0),
  sexo_Cli char(1) NOT null DEFAULT 'F' CHECK (sexo_Cli IN ('F', 'M'))
);

CREATE TABLE tb_Conjuge (
	cod_Cli int NOT null PRIMARY KEY REFERENCES tb_Cliente (cod_Cli),
  nome_Conj varchar(100) NOT null,
  renda_Conj decimal(10, 2) NOT null DEFAULT 0 CHECK (renda_Conj >= 0),
  sexo_Conj char(1) NOT null DEFAULT 'M' CHECK (sexo_Conj IN ('F', 'M'))
);

CREATE TABLE tb_Funcionario (
	cod_Func int AUTO_INCREMENT PRIMARY KEY,
  nome_Func varchar(100) NOT null,
  end_Func varchar(200) NOT null,
  sal_Func decimal(10, 2) NOT null DEFAULT 0 CHECK (sal_Func >= 0),
  sexo_Func char(1) NOT null DEFAULT 'M' CHECK (sexo_Func IN ('F', 'M'))
);


CREATE TABLE tb_Dependente (
	cod_Dep int AUTO_INCREMENT PRIMARY KEY,
  cod_Func int NOT null REFERENCES tb_Funcionario (cod_Func),
  nome_Dep varchar(100) NOT null,
  sexo_Dep char(1) NOT null DEFAULT 'M' CHECK (Sexo_Dep IN ('F', 'M'))
);

CREATE TABLE tb_Titulo (
	cod_Tit int AUTO_INCREMENT PRIMARY KEY,
  cod_Cat int NOT null REFERENCES tb_categoria (cod_Cat),
  cod_Grav int NOT null REFERENCES tb_gravadora (cod_Grav),
  nome_CD varchar(100) NOT null UNIQUE,
  val_CD decimal(10, 2) NOT null CHECK (val_CD > 0),
  qtd_Estq int NOT null CHECK (qtd_Estq >= 0)
);

CREATE TABLE tb_Pedido (
	num_Ped int NOT null PRIMARY KEY,
  cod_Cli int NOT null REFERENCES tb_Cliente (cod_Cli),
  cod_Func int NOT null REFERENCES tb_Funcionario (cod_Func),
  data_Ped datetime NOT null,
  val_Ped decimal(10, 2) NOT null CHECK (Val_Ped >= 0) DEFAULT 0
);

CREATE TABLE tb_Titulo_Pedido(
	num_Ped int NOT null REFERENCES tb_Pedido (num_Ped),
  cod_Tit int NOT null REFERENCES tb_Titulo (cod_Tit),
  qtd_CD int NOT null CHECK (qtd_CD >= 1),
  val_CD decimal(10, 2) NOT null check (val_CD > 0),
  PRIMARY KEY (num_Ped, cod_Tit)
 );
  
 CREATE TABLE tb_Titulo_Artista (
  cod_Tit int NOT null REFERENCES tb_Titulo(cod_Tit),
 	cod_Art int NOT null REFERENCES tb_Artista(cod_Art),
 	PRIMARY KEY (cod_Tit, cod_Art)
 );