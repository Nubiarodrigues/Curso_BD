/* Stored Procedures

	Um procedimento armazenado é uma sub-rotina disponível para
    aplicações que acessam sistemas de bancos de dados relacionais.
    
    Podem ser usados para validação de dados, controle de acesso,
    execução de declarações SQL complexas e outras situações.
    
    Desde a versão 5.0 o MySQL suporta a execução de Stored Procedures.

SINTAXE:
CREATE PROCEDURE nome_procedimento (parâmetros) declarações;

INVOCANDO PROCEDIMENTO:
CALL nome_procedimento (parâmetros)

*/

-- Exemplos:

-- criando procedimento
CREATE PROCEDURE verPreco (varLivro SMALLINT)
SELECT CONCAT('O preço é ', Preco_Livro) AS Preço
FROM tbl_livro
WHERE ID_Livro = varLivro;

-- invocando procedimento
CALL verPreco(3);


-- excluindo procedimento
DROP PROCEDURE nome_procedimento;