-- CONSULTA COM ORDENAÇÃo

/*ORDER BY É UTILIZADO PARA ORDENAR O CONJUNTO DE 
RESULTADOS DE REGISTROS*/


/*ASC - ORDEM ASCENDENTE
DESC - ORDEM DESCENDENTE (INVERSA)*/

/*SINTAXE: 
SELECT colunas FROM tabela
ORDER BY coluna_a_ordenar;*/


USE db_biblioteca;

SELECT * FROM tbl_livro;

SELECT * FROM tbl_livro
ORDER BY Nome_livro ASC;

SELECT * FROM tbl_livro
ORDER BY Nome_livro DESC;


SELECT Nome_livro, ID_editora FROM tbl_livro
ORDER BY ID_editora;

SELECT Nome_livro, Preco_livro FROM tbl_livro 
ORDER BY Preco_livro DESC;

