-- Funções de agregação SQL

#sintaxe básica:
-- funcao(ALL | DISTINCT expressao)

-- DISTINCT -> ele garante que os resultados retornados sejam únicos, 
-- ou seja, sem linhas duplicadas.

# MIN -> valor mínimo
# MAX -> valor máximo
# AVG -> média aritmética
# SUM -> total (soma)
# COUNT -> contar qunatidade de itens

#exemplo 1 COUNT:
SELECT COUNT(*) AS Total_autores FROM tbl_autores;
SELECT COUNT(DISTINCT ID_Autor) FROM tbl_livro;

#exemplo 2 MAX:
SELECT MAX(Preco_Livro) FROM tbl_livro;

#exemplo 3 MIN:
SELECT MIN(Preco_Livro) FROM tbl_livro;

#exemplo 4 AVG:
SELECT AVG(Preco_Livro) FROM tbl_livro;

#exemplo 5 SUM:
SELECT SUM(Preco_Livro) FROM tbl_livro;

