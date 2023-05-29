use db_cds;


INSERT INTO tb_Artista (nome_Art) VALUES ('John Lennon');
INSERT INTO tb_Artista (nome_Art) VALUES ('Bob Dylan');
INSERT INTO tb_Artista (nome_Art) VALUES ('David Bowie');
INSERT INTO tb_Artista (nome_Art) VALUES ('Adele');
INSERT INTO tb_Artista (nome_Art) VALUES ('Ed Sheeran');
INSERT INTO tb_Artista (nome_Art) VALUES ('Taylor Swift');

INSERT INTO tb_Gravadora (nome_Grav) VALUES ('Universal Music');
INSERT INTO tb_Gravadora (nome_Grav) VALUES ('Sony Music');
INSERT INTO tb_Gravadora (nome_Grav) VALUES ('Warner Music');
INSERT INTO tb_Gravadora (nome_Grav) VALUES ('Atlantic Records');
INSERT INTO tb_Gravadora (nome_Grav) VALUES ('Capitol Records');
INSERT INTO tb_Gravadora (nome_Grav) VALUES ('Republic Records');

INSERT INTO tb_Categoria (nome_Cat) VALUES ('Rock');
INSERT INTO tb_Categoria (nome_Cat) VALUES ('Pop');
INSERT INTO tb_Categoria (nome_Cat) VALUES ('Hip Hop');
INSERT INTO tb_Categoria (nome_Cat) VALUES ('R&B');
INSERT INTO tb_Categoria (nome_Cat) VALUES ('Country');

INSERT INTO tb_Estado (sigla_Est, nome_Est) VALUES ('SP', 'São Paulo');
INSERT INTO tb_Estado (sigla_Est, nome_Est) VALUES ('RJ', 'Rio de Janeiro');
INSERT INTO tb_Estado (sigla_Est, nome_Est) VALUES ('MG', 'Minas Gerais');
INSERT INTO tb_Estado (sigla_Est, nome_Est) VALUES ('BH', 'Bahia');
INSERT INTO tb_Estado (sigla_Est, nome_Est) VALUES ('NY', 'New York');
INSERT INTO tb_Estado (sigla_Est, nome_Est) VALUES ('CA', 'California');
INSERT INTO tb_Estado (sigla_Est, nome_Est) VALUES ('TX', 'Texas');

INSERT INTO tb_Cidade (sigla_Cid, nome_Cid) VALUES ('SP', 'São Paulo');
INSERT INTO tb_Cidade (sigla_Cid, nome_Cid) VALUES ('RJ', 'Rio de Janeiro');
INSERT INTO tb_Cidade (sigla_Cid, nome_Cid) VALUES ('BH', 'Belo Horizonte');

INSERT INTO tb_Cliente (cod_Cid, nome_Cli, end_Cli, renda_Cli, sexo_Cli) VALUES (1, 'João', 'Rua A, 123', 5000, 'M');
INSERT INTO tb_Cliente (cod_Cid, nome_Cli, end_Cli, renda_Cli, sexo_Cli) VALUES (2, 'Maria', 'Rua B, 456', 3000, 'F');
INSERT INTO tb_Cliente (cod_Cid, nome_Cli, end_Cli, renda_Cli, sexo_Cli) VALUES (3, 'Pedro', 'Rua C, 789', 4000, 'M');

INSERT INTO tb_Conjuge (cod_Cli, nome_Conj, renda_Conj, sexo_Conj) VALUES (1, 'Ana', 2000, 'F');
INSERT INTO tb_Conjuge (cod_Cli, nome_Conj, renda_Conj, sexo_Conj) VALUES (3, 'Carla', 2500, 'F');

INSERT INTO tb_Funcionario (nome_Func, end_Func, sal_Func, sexo_Func) VALUES ('Lucas', 'Av. X, 987', 4000, 'M');
INSERT INTO tb_Funcionario (nome_Func, end_Func, sal_Func, sexo_Func) VALUES ('Julia', 'Av. Y, 654', 3500, 'F');

INSERT INTO tb_Dependente (cod_Func, nome_Dep, sexo_Dep) VALUES (1, 'Mariana', 'F');
INSERT INTO tb_Dependente (cod_Func, nome_Dep, sexo_Dep) VALUES (2, 'Rafael', 'M');

INSERT INTO tb_Titulo (cod_Cat, cod_Grav, nome_CD, val_CD, qtd_Estq) VALUES (1, 1, 'Album 1', 20.99, 100);
INSERT INTO tb_Titulo (cod_Cat, cod_Grav, nome_CD, val_CD, qtd_Estq) VALUES (2, 2, 'Album 2', 15.99, 50);
INSERT INTO tb_Titulo (cod_Cat, cod_Grav, nome_CD, val_CD, qtd_Estq) VALUES (3, 3, 'Album 3', 12.99, 80);

INSERT INTO tb_Pedido (num_Ped, cod_Cli, cod_Func, data_Ped, val_Ped) VALUES (1, 1, 1, NOW(), 50.99);
INSERT INTO tb_Pedido (num_Ped, cod_Cli, cod_Func, data_Ped, val_Ped) VALUES (2, 2, 2, NOW(), 30.99);

INSERT INTO tb_Titulo_Pedido (num_Ped, cod_Tit, qtd_CD, val_CD) VALUES (1, 1, 2, 41.98);
INSERT INTO tb_Titulo_Pedido (num_Ped, cod_Tit, qtd_CD, val_CD) VALUES (2, 2, 1, 15.99);

INSERT INTO tb_Titulo_Artista (cod_Tit, cod_Art) VALUES (1, 1);
INSERT INTO tb_Titulo_Artista (cod_Tit, cod_Art) VALUES (2, 2);
INSERT INTO tb_Titulo_Artista (cod_Tit, cod_Art) VALUES (3, 3);