/*HAVING -> é usada para especificar condições de filtragem
em grupos de registros ou agregações.

É frequentemente usada com a cláusula GROUP BY para filtrar colunas agrupadas.

sintaxe:

SELECT colunas, função_agregação()
FROM tabela
WHERE filtro
GROUP BY colunas
HAVING filtro_agrupamento

*/

-- consulta retornando total de vendas das cidades com menos de 2500 produtos vendidos
SELECT Cidade, SUM(Quantidade) AS Total
FROM Vendas
GROUP BY Cidade
HAVING SUM(Quantidade) < 2500;

-- consulta retornando total de vendas do produto 'Teclado' das cidades com menos de 1500 teclados vendidos
SELECT Cidade, SUM(Quantidade) AS TotalTeclados
FROM Vendas
WHERE Produto = 'Teclado'
GROUP BY Cidade
HAVING SUM(Quantidade) < 1500;



