-- OUTER JOINS

/*
*LEFT JOIN: RETORNA TODAS AS LINHAS DA TABELA À ESQUERDA,
MESMO SE NÃO HOUVER NENHUMA CORRESPONDÊNCIA NA TABELA À
DIREITA.
SINTAXE:
SELECT colunas
FROM tabela_esq
LEFT (OUTER) JOIN tabela_dir
ON tabela_esq.coluna = tabela_dir.coluna;

EXCLUINDO CORRESPONDÊNCIAS:
SELECT colunas
FROM tabela_esq
LEFT JOIN tabela_dir
ON tabela_esq.coluna = tabela_dir.coluna
WHERE tabela_dir.coluna IS NULL;


*RIGHT JOIN: RETORNA TODAS AS LINHAS DA TABELA À DIREITA,
MESMO SE NÃO HOUVER NENHUMA CORRESPONDÊNCIA NA TABELA À
ESQUERDA.
SINTAXE:
SELECT colunas
FROM tabela_esq
RIGHT (OUTER) JOIN tabela_dir
ON tabela_esq.coluna = tabela_dir.coluna;


*FULL JOIN: RETORNA LINHAS QUANDO HOUVER UMA CORRESPONDÊNCIA
EM QUALQUER UMA DAS TABELAS. É UMA COMBINAÇÃO DE LEFT E RIGTH JOINS.

*/

-- LEFT JOIN
SELECT * FROM tbl_autores
LEFT JOIN tbl_livro
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor;

-- EXCLUINDO CORRESPONDÊNCIA
SELECT * FROM tbl_autores
LEFT JOIN tbl_livro
ON tbl_livro.ID_Autor = tbl_autores.ID_Autor
WHERE tbl_livro.ID_Autor IS NULL;

-- RIGTH
SELECT * FROM tbl_livro AS Li
RIGHT JOIN tbl_editoras AS Ed
ON Li.ID_editora = Ed.ID_Editora;

INSERT INTO tbl_editoras(ID_editora, Nome_editora)
VALUES (5, 'Companhia das Letras');

SELECT * FROM tbl_editoras;


