-- CONSULTAS SIMPLES (SELECT)

USE db_biblioteca;

-- selecione a coluna da tbl_livro
SELECT Nome_Autor FROM tbl_autores;
SELECT Nome_Livro FROM tbl_livro;


-- selecione todos (*) os registros da tbl_autores
SELECT * FROM tbl_autores;

-- especificando colunas
SELECT Nome_Livro, ID_Autor FROM tbl_livro;
SELECT Nome_Livro, ISBN FROM tbl_livro;
