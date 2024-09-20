-- VIEWS

/*
*RESULTADO DE UMA TABELA VIRTUAL BASEADA NO CONJUNTO
DE RESULTADOS DE UMA CONSULTA SQL.

*CONTÉM LINHAS E COLUNAS COMO UMA TABELA REAL, E
PODE RECEBER COMANDOS COMO DECLARAÇÕES JOIN
WHERE E FUNÇÕES COMO UMA TABELA NORMAL.

*MOSTRA SEMPRE RESULTADOS DE DADOS ATUALIZADOS,
POIS O MOTOR DO BANCO DE DADOS RECRIA OS DADOS
TODA VEZ QUE UM USUÁRIO CONSULTA A VISÃO.

ex:
CREATE VIEW [nome_exibição]
AS SELECT  colunas
FROM tabela
WHERE condições;

*/
-- CRIANDO VIEW
CREATE VIEW vw_LivrosAutores
AS SELECT tbl_livro.Nome_livro AS Livro,
tbl_autores.Nome_Autor AS Autor
FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

SELECT Livro, Autor
FROM vw_livrosautores
ORDER BY Autor;


-- ALTERANDO VIEW
ALTER VIEW vw_livrosautores AS
SELECT 
tbl_livro.Nome_livro AS Livro,
tbl_autores.Nome_Autor AS Autor, 
Preco_livro AS Valor
FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor;

SELECT * FROM vw_livrosautores ORDER BY Valor;


-- PARA EXCLUSÃO DE UMA VIEW
DROP VIEW vw_livrosautores;


