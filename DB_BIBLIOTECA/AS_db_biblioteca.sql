-- SQL Alias

#pode se dar um nome diferente a uma coluna
#ou tabela em uma consulta

#sintaxe:
SELECT colunas
AS nome_coluna
FROM tabela AS nome_coluna;


SELECT Nome_livro
AS Livro
FROM tbl_livro;

SELECT Nome_livro AS Livro, 
Preco_Livro AS Preço FROM tbl_livro;