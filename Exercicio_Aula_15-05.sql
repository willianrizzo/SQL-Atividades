create database db_curso;
use db_curso;

create table tb_instrutor(
	id_instrutor int auto_increment primary key,
    Nome_Instrutor varchar (50),
    Sexo char(1),
    Data_Nasc date,
    Data_Admissao date,
    Salario decimal (10,2)
);

select * from tb_instrutor;

insert into tb_instrutor values (null, 'Diego Ribas', 'M', '1998-10-20', '2015-08-25', '4000');
insert into tb_instrutor values (null, 'João Silva', 'M', '1990-05-10', '2010-02-15', '4500');
insert into tb_instrutor values (null, 'Ana Souza', 'F', '1995-12-02', '2013-07-20', '3500');
insert into tb_instrutor values (null, 'Lucas Oliveira', 'M', '1988-03-15', '2008-11-10', '5000');
insert into tb_instrutor values (null, 'Carla Rodrigues', 'F', '1992-07-25', '2011-05-30', '4200');
insert into tb_instrutor values (null, 'Pedro Santos', 'M', '1994-01-18', '2012-08-22', '3800');
insert into tb_instrutor values (null, 'Fernanda Castro', 'F', '1985-11-12', '2005-09-01', '5500');
insert into tb_instrutor values (null, 'Rafaela Almeida', 'F', '1993-08-05', '2014-04-12', '4200');
insert into tb_instrutor values (null, 'Gustavo Silva', 'M', '1996-02-28', '2016-10-05', '4700');
insert into tb_instrutor values (null, 'Mariana Santos', 'F', '1989-09-22', '2009-12-18', '4000');
insert into tb_instrutor values (null, 'Guilherme Oliveira', 'M', '1991-04-30', '2010-06-05', '4800');
insert into tb_instrutor values (null, 'Bianca Souza', 'F', '1997-06-11', '2017-01-20', '3600');
insert into tb_instrutor values (null, 'Leonardo Ribeiro', 'M', '1990-12-01', '2012-05-28', '4200');
insert into tb_instrutor values (null, 'Camila Ferreira', 'F', '1994-04-08', '2013-11-15', '3900');
insert into tb_instrutor values (null, 'Thiago Lima', 'M', '1998-08-22', '2018-03-10', '3500');
insert into tb_instrutor values (null, 'Natália Costa', 'F', '1991-02-14', '2011-10-01', '4300');
insert into tb_instrutor values (null, 'Vinícius Pereira', 'M', '1987-09-08', '2007-07-20', '6000');
insert into tb_instrutor values (null, 'Beatriz Rodrigues', 'F', '1993-11-30', '2015-05-12', '4200');
insert into tb_instrutor values (null, 'Marcelo Silva', 'M', '1995-07-19', '2016-12-01', '4500');
insert into tb_instrutor values (null, 'Amanda Oliveira', 'F', '1988-06-20' , '2020-10-20' , '2000' );

alter table tb_instrutor add column Email varchar(50);
alter table tb_instrutor add column Telefone varchar(11);
alter table tb_instrutor add column Nacionalidade varchar(50);

alter table tb_instrutor drop column Data_Nasc;
update tb_instrutor set Nacionalidade = 'Brasileira';

select * from tb_instrutor where Data_Admissao < '2013-01-01';
select * from tb_instrutor where Sexo = 'F';

select * from tb_instrutor;

start transaction;

update tb_instrutor set Salario = Salario + 320 where Data_Admissao < '2013-01-01';
update tb_instrutor set Salario = Salario + 320 where Sexo = 'F';

delete from tb_instrutor where id_instrutor = 10;
delete from tb_instrutor where id_instrutor = 15;
delete from tb_instrutor where id_instrutor = 20;