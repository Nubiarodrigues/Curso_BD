-- WHERE -> PERMITE FILTRAR REGISTROS EM UMA CONSULTA

/*SINTAXE: SELECT colunas FROM tabela WHERE coluna = valor;*/

SELECT Nome_livro, Data_pub FROM tbl_livro
WHERE ID_Autor = 1;

SELECT ID_Autor, Nome_autor FROM tbl_autores
WHERE Sobrenome_Autor = 'Stanek';