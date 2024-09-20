-- BETWEEN - Seleção de intervalos
-- O operador BETWEEN é usado para selecionar valores dentro de um determinado intervalo.
-- Ele inclui tanto os valores de início quanto os valores de fim (inclusive).

#sintaxe:
SELECT colunas FROM tabela
WHERE coluna BETWEEN valor1 AND valor2;

#exemplo 1:
-- Este exemplo seleciona todos os registros da tabela 'tbl_livro' 
-- onde a data de publicação (Data_Pub) está entre '2004-05-17' e '2011-05-17'.
SELECT * FROM tbl_livro
WHERE Data_Pub 
BETWEEN '20040517' AND '20110517';

#exemplo 2:
-- Este exemplo seleciona o nome do livro (Nome_livro) e o preço do livro (Preco_livro) 
-- de todos os livros cujo preço está entre 40.00 e 60.00.
SELECT Nome_livro AS Livro, Preco_livro AS Preço
FROM tbl_livro
WHERE Preco_Livro BETWEEN 40.00 AND 60.00;