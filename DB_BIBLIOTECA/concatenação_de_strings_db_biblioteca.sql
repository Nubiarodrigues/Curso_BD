-- CONCATENAÇÃO DE STRINGS

/*
 É possível concatenar strings usando-se a função CONCAT()
 
 Sintaxe:
 CONCAT(string | nome_coluna, <String | nome_coluna)
 
 SELECT CONCAT('Fábio ', 'dos Reis') AS 'Meu nome';

*/

-- Tabela demostrativa
CREATE TABLE teste_nulos (
	id SMALLINT PRIMARY KEY AUTO_INCREMENT,
    item VARCHAR(20),
    quantidade SMALLINT NULL
);

-- Inserindo dados
INSERT INTO teste_nulos(id, item, quantidade)
VALUES (1, 'Pendrive', 5);

INSERT INTO teste_nulos(id, item, quantidade)
VALUES (2, 'Pendrive', 7); 

INSERT INTO teste_nulos(id, item, quantidade)
VALUES (3, 'Teclado', NULL); 

UPDATE teste_nulos SET item = 'Monitor'
WHERE id = 2;

SELECT * FROM teste_nulos;

------------------------------------------------------------
-- Se uma string for concatenada com NULL, o resultado
-- retornado será apenas NULL>

SELECT CONCAT('A quantidade adquirida é ', ' ', quantidade)
FROM teste_nulos
WHERE item = 'Monitor';

SELECT CONCAT('A quantidade adquirida é ', ' ', quantidade)
FROM teste_nulos
WHERE item = 'Teclado';


--  funções IFNULL E COALESCE

-- USO DO IFNULL (IFNULL(COLUNA, VALOR DE SUBSTITUIÇÃO)
SELECT CONCAT('A quantidade adquirida é ', ' ', IFNULL(quantidade, 0))
FROM teste_nulos
WHERE item = 'Teclado';


-- COALESCE (VALOR1, VALOR2, .... VALORN)
-- Essa função retornará o primeiro valor não-nulo encontrado em seus argumentos.

SELECT CONCAT('A quantidade adquirida é ', ' ', COALESCE(NULL, quantidade, NULL, 0))
FROM teste_nulos
WHERE item = 'Teclado';

------------------------------------------------------------
-- Exemplos

SELECT CONCAT(Nome_autor, ' ', Sobrenome_autor)
AS 'Nome completo' FROM tbl_autores;

SELECT CONCAT('Eu gosto do livro ', Nome_livro)
FROM tbl_Livro WHERE ID_autor = 2;
