-- UPDATE - Atualizar registros

#sintaxe:
UPDATE tabela
SET coluna = novo_valor_armazenado
WHERE coluna = valor_filtro;

/*Caso não seja usada a cláusula WHERE
para filtrar registros, todos os dados
da coluna serão alterados*/

UPDATE tbl_livro
SET Nome_livro = 'SSH, o shell Seguro'
WHERE ID_livro = 7;

SELECT * FROM tbl_livro;