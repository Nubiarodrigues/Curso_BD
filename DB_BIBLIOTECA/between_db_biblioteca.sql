-- BETWEEN - Seleção de intervalos

#sintaxe:
SELECT colunas FROM tabela
WHERE coluna BETWEEN valor1 AND valor2;

#exemplo 1:
SELECT * FROM tbl_livro
WHERE Data_Pub 
BETWEEN '20040517' AND '20110517';

#exemplo 2:
SELECT Nome_livro AS Livro, Preco_livro AS Preço
FROM tbl_livro
WHERE Preco_Livro BETWEEN 40.00 AND 60.00;