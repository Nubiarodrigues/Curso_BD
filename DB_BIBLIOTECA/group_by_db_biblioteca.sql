/*GROUP BY -> Agrupa registros em subgrupos
baseados em colunas ou valores retornados por
uma expressão.

sintaxe básica:

SELECT colunas, função_agregação()
FROM tabela
WHERE filtro
GROUP BY colunas

*/

-- criação de tabela teste GROUP BY
CREATE TABLE Vendas (
	ID SMALLINT PRIMARY KEY,
    Nome_Vendedor VARCHAR(20),
    Quantidade INT,
    Produto VARCHAR(20),
    Cidade VARCHAR(20)
);

-- inserção de dados
INSERT INTO Vendas(ID, Nome_Vendedor, Quantidade, Produto, Cidade)
VALUES (10, 'Jorge', 1400, 'Mouse', 'São Paulo');

INSERT INTO Vendas(ID, Nome_Vendedor, Quantidade, Produto, Cidade)
VALUES (12, 'Tatianna', 1220, 'Teclado', 'São Paulo');

INSERT INTO Vendas(ID, Nome_Vendedor, Quantidade, Produto, Cidade)
VALUES (14, 'Ana', 1700, 'Teclado', 'Rio de Janeiro');

INSERT INTO Vendas(ID, Nome_Vendedor, Quantidade, Produto, Cidade)
VALUES (15, 'Rita', 2120, 'Webcam', 'Recife');

INSERT INTO Vendas(ID, Nome_Vendedor, Quantidade, Produto, Cidade)
VALUES (18, 'Marcos', 980, 'Mouse', 'São Paulo');

INSERT INTO Vendas(ID, Nome_Vendedor, Quantidade, Produto, Cidade)
VALUES (19, 'Carla', 1120, 'Webcam', 'Recife');

INSERT INTO Vendas(ID, Nome_Vendedor, Quantidade, Produto, Cidade)
VALUES (22, 'Roberto', 3145, 'Mouse', 'São Paulo');

SELECT * FROM vendas;

-- Consulta usando agregação para obter total de vendas de mouses
SELECT SUM(Quantidade) AS TotalMouses
FROM Vendas
WHERE Produto = 'Mouse';

-- Consulta totalizando as vendas de todos os produtos por cidade
SELECT Cidade, SUM(Quantidade) AS Total
FROM Vendas
GROUP BY Cidade;

-- Consulta que conte o numero de registros de vendas por cidade
SELECT Cidade, COUNT(*) AS TotalVendas
FROM Vendas
GROUP BY Cidade;

-- Consulta que me devolva a média de registros de vendas por produto
SELECT Produto, AVG(Quantidade) AS MédiaProduto
FROM Vendas
GROUP BY Produto;


