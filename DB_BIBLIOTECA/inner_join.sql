-- JOIN
/*
A CLÁUSULA JOIN É USASA PARA COMBINAR DADOS
PROVENIENTES DE DUAS TABELAS OU MAIS, BASEADO
EM UM RELACIONANDO ENTRE COLUNAS DESTAS TABELAS.

*CATEGORIAS:

- INNER JOIN: RETORNA LINHAS QUANDO HOUVER PELO MENOS UMA 
CORRESPONDÊNCIA EM AMBAS TABELAS.
EX:
SELECT colunas 
FROM tabela1
INNER JOIN tabela2
ON tabela1.coluna = tabela2.coluna;

- OUTER JOIN: RETORNA LINHAS MESMO QUANDO NÃO HOUVER PELO MENOS
UMA CORRESPONDÊNCIA EM UMA DAS TABELAS (OU AMBAS).
O OUTER JOIN DIVIDE-SE EM LEFT JOIN, RIGTH JOIN E FULL JOIN.

*/

-- EX: INNER JOIN
SELECT * FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

SELECT tbl_livro.Nome_livro, 
tbl_livro.ISBN,
tbl_autores.Nome_Autor
FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

-- USANDO AS E CLÁUSULAS WHERE E LIKE
SELECT L.Nome_livro AS Livros, E.Nome_editora AS Editoras
FROM tbl_livro AS L
INNER JOIN tbl_editoras AS E
ON L.ID_editora = E.ID_Editora
WHERE E.Nome_editora LIKE 'M%';

-- CONSULTA DE 3 TABELAS
SELECT L.Nome_livro AS Livro, 
A.Nome_autor AS Autor,
E.Nome_editora AS Editora
FROM tbl_livro AS L
INNER JOIN tbl_autores AS A
ON L.ID_autor = A.ID_autor
INNER JOIN tbl_editoras AS E
ON L.ID_editora = E.ID_Editora;






