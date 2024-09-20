-- Operadores IN e NOT IN

-- Operadores para filtragem usando listas de valores no Mysql

USE db_biblioteca;

/*Sintaxe:
SELECT coluna(s)
FROM tabela(s)
WHERE expressão | valor NOT IN (lista de valores);*/

#exemplo 1:
SELECT Nome_livro, ID_editora
FROM tbl_livro
WHERE ID_editora IN (2,4);

#exemplo 2:
SELECT Nome_livro, Edicao
FROM tbl_livro
WHERE Edicao NOT IN (1,2);

SELECT * FROM tbl_livro;

SELECT Nome_editora, ID_editora
FROM tbl_editoras;

#exemplo 3:
SELECT Nome_livro, ID_editora
FROM tbl_livro
WHERE ID_editora IN (
	SELECT ID_editora 
	FROM tbl_editoras
	WHERE Nome_editora = 'Wiley' OR Nome_editora = 'Microsoft Press'
);


