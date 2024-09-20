/* Blocos begin...end

	São "contêineres" usados para delimitar blocos de comandos
    a serem executados pela função ou stored procedure
    Cada declaração aninhada possui um delimitador(;)
    Um bloco BEGIN pode ser aninhado dentro de outros blocos.
    
    Porém, o delimitador ; pode ser problemático pois, ao ser
    encontrado em um procedimento ou função, ele a finaliza 
    imediatamente. É uma espécie de alias para p comando GO.
    
    Devemos então mudar esse "atalho" e, para isso, usamos o 
    comando DELIMITER para criar rotinas com declarações compostas.

*/

-- Exemplo em uma função:
DELIMITER $$
CREATE FUNCTION aumenta_preco (preco DECIMAL(10,2), taxa DECIMAL(10,2))
RETURNS DECIMAL(10,2)  
BEGIN
RETURN preco + preco * taxa / 100;    
END$$
DELIMITER ;

-- invocando função para aumentar o preço em 10%
SELECT aumenta_preco(50.00,10.00) AS Resultados;


-- Exemplo em um procedimento:
DELIMITER //
CREATE PROCEDURE vejaPreco (varLivro SMALLINT)
BEGIN
	SELECT CONCAT('O preço é ', Preco_Livro) AS Preço
	FROM tbl_livro
	WHERE ID_Livro = varLivro;
	SELECT 'Procedimento executado com sucesso!';
END //
DELIMITER ;

-- Invocando o procedimento:
CALL verPreco(3);