/*
Operadores aritméticos

É possível realizar operações matemáticas simples nos valores
de uma coluna e retornar resultados em uma coluna calculada.
Para isso usamos os operadores aritméticos comuns:

+ soma
- subtração
/ divisão
* multiplicação
% ou MOD módulo ou resto da divisão
DIV divisão inteira
*/

-- Exemplos

SELECT 3 * 9;

SELECT Nome_Livro, Preco_Livro * 5 AS 'Preço de 5 unidades'
FROM tbl_livro;

SELECT 2 * 9 / 3;

SELECT Nome_Livro, Preco_Livro / 2 AS 'Preço com 50% de desconto'
FROM tbl_livro;

SELECT 10 / 3;
SELECT 10 MOD 3;

-------------------------------------------
/* Funções matemáticas

	É possível também utilizar funções matemáticas nos valores de uma coluna
    e retornar resultados em uma coluna calculada.
    
Abaixo vemos algumas funções matemáticas mais comuns:

CEILING() ->  arredondar para cima
FLOOR() ->    arredondar para baixo
PI() ->       retorna o valor de PI
POW(x, y) ->  retorna x elevado a y
SQRT() ->     raiz quadrada de um argumento
SIN() ->      retorna o seno de um número dado em radianos
HEX() ->      retorna a representação hexadecimal de um valor decimal.

*/

-- Exemplos:
SELECT Nome_Livro, CEILING(Preco_Livro * 5) AS 'Preco arredondado'
FROM tbl_livro;

SELECT PI();
SELECT POW(2, 4);
SELECT SQRT(81);
SELECT SIN(PI());
SELECT HEX(1200);











