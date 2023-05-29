SELECT tb_categoria.nome_Cat, tb_titulo.nome_CD FROM tb_categoria JOIN tb_titulo ON tb_titulo.cod_Cat = tb_categoria.cod_Cat;

SELECT tb_pedido.num_Ped, tb_cliente.nome_Cli FROM tb_pedido JOIN tb_cliente ON tb_cliente.cod_Cli = tb_pedido.cod_Cli;

SELECT f.nome_Func AS NomeFuncionario, d.nome_Dep AS NomeDependente FROM tb_funcionario f
JOIN tb_dependente d ON d.cod_Func = f.cod_Func;

SELECT f.nome_Func AS NomeFuncionario, p.val_Ped AS ValorPedido, t.nome_CD AS Titulo from tb_funcionario f 
JOIN tb_pedido p ON f.cod_Func = p.cod_Func
JOIN tb_Titulo_Pedido tp ON p.num_Ped = tp.num_Ped
JOIN tb_Titulo t ON tp.cod_Tit = t.cod_Tit;

SELECT c.nome_Cli, cid.nome_Cid FROM tb_cliente c JOIN tb_cidade cid ON c.cod_Cid = cid.cod_Cid WHERE c.sexo_Cli = "F";

SELECT t.nome_CD AS NomeCD, g.nome_Grav AS NomeGravadora
FROM tb_Titulo t JOIN tb_Gravadora g ON t.cod_Grav = g.cod_Grav
WHERE t.nome_CD LIKE 'R%' OR t.nome_CD LIKE 'T%';
  
SELECT g.nome_Grav AS NomeGravadora, t.nome_CD AS NomeCD, t.val_CD AS ValorUnitario, t.qtd_Estq AS QuantidadeEstoque
FROM tb_Titulo t JOIN tb_Gravadora g ON t.cod_Grav = g.cod_Grav WHERE t.qtd_Estq < 500;

SELECT c.nome_Cli AS NomeCliente, p.val_Ped AS ValorPedido
FROM tb_Cliente c JOIN tb_Pedido p ON c.cod_Cli = p.cod_Cli
WHERE c.sexo_Cli = 'F' AND YEAR(p.data_Ped) = 2002 AND MONTH(p.data_Ped) = 6;

SELECT p.num_Ped AS NumeroPedido, p.val_Ped AS ValorPedido, p.data_Ped AS DataPedido, f.nome_Func AS NomeFuncionario
FROM tb_Pedido p JOIN tb_Funcionario f ON p.cod_Func = f.cod_Func
WHERE YEAR(p.data_Ped) = 2003 AND f.nome_Func LIKE 'Paula%';

SELECT p.num_Ped AS NumeroPedido, c.nome_Cli AS NomeCliente
FROM tb_Pedido p JOIN tb_Cliente c ON p.cod_Cli = c.cod_Cli
WHERE p.val_Ped = (SELECT MAX(val_Ped) FROM tb_Pedido);

SELECT DISTINCT a.nome_Art AS NomeArtista, cat.nome_Cat AS NomeCategoria
FROM tb_Artista a
JOIN tb_Titulo_Artista ta ON a.cod_Art = ta.cod_Art
JOIN tb_Titulo t ON ta.cod_Tit = t.cod_Tit
JOIN tb_Categoria cat ON t.cod_Cat = cat.cod_Cat;

SELECT c.nome_Cli AS NomeCliente, f.nome_Func AS NomeFuncionario
FROM tb_Cliente c
JOIN tb_Pedido p ON c.cod_Cli = p.cod_Cli
JOIN tb_Funcionario f ON p.cod_Func = f.cod_Func;

SELECT c.nome_Cli AS NomeCliente, t.nome_CD AS NomeCD
FROM tb_Cliente c
JOIN tb_Pedido p ON c.cod_Cli = p.cod_Cli
JOIN tb_Titulo_Pedido tp ON p.num_Ped = tp.num_Ped
JOIN tb_Titulo t ON tp.cod_Tit = t.cod_Tit;

SELECT t.nome_CD AS NomeCD, g.nome_Grav AS NomeGravadora, cat.nome_Cat AS NomeCategoria
FROM tb_Titulo t
JOIN tb_Gravadora g ON t.cod_Grav = g.cod_Grav
JOIN tb_Categoria cat ON t.cod_Cat = cat.cod_Cat;

SELECT f.nome_Func AS NomeFuncionario, d.nome_Dep AS NomeDependente, c.nome_Cli AS NomeCliente, co.nome_Conj AS NomeConjuge
FROM tb_Funcionario f
LEFT JOIN tb_Dependente d ON f.cod_Func = d.cod_Func
LEFT JOIN tb_Cliente c ON f.cod_Func = c.cod_Cli
LEFT JOIN tb_Conjuge co ON c.cod_Cli = co.cod_Cli;

SELECT c.nome_Cli AS NomeCliente, f.nome_Func AS NomeFuncionario, t.nome_CD AS NomeCD, cat.nome_Cat AS NomeCategoria, g.nome_Grav AS NomeGravadora
FROM tb_Cliente c
JOIN tb_Pedido p ON c.cod_Cli = p.cod_Cli
JOIN tb_Funcionario f ON p.cod_Func = f.cod_Func
JOIN tb_Titulo_Pedido tp ON p.num_Ped = tp.num_Ped
JOIN tb_Titulo t ON tp.cod_Tit = t.cod_Tit
JOIN tb_Categoria cat ON t.cod_Cat = cat.cod_Cat
JOIN tb_Gravadora g ON t.cod_Grav = g.cod_Grav;