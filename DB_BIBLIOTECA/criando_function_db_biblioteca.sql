/* Funções e procedimentos

	São dois tipos de rotinas armazenadas, parte da especificação SQL.alter
	São um pouco similiares, mas com aplicações diferentes.
    São invocadas de formas diferentes também (CALL x declaração)

FUNÇÕES:
	Uma função pe usada para gerar um valor que pode ser usado em uma expressão.
    O valor é geralmente baseado em um ou mais parâmetros fornecidos à função.
    É executada como parte de uma expressão.

SINTAXE:
	CREATE FUNCTION nome_função (parâmetros)
    RETURNS tipo_dados
    código_da_função
    
INVOCANDO UMA FUNÇÃO:
	SELECT nome_função(parâmetros)
*/ 

-- Exemplos:

CREATE FUNCTION fn_teste (a DECIMAL(10,2), b INT)
RETURNS INT
RETURN a * b;

SELECT fn_teste(2.5,4) AS Resultado;

SELECT Nome_livro, fn_teste(Preco_Livro, 6) AS 'Preço de 6 unidades'
FROM tbl_livro
WHERE ID_Livro = 2;

DROP FUNCTION fn_teste;
