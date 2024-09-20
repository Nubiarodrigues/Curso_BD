/* REGEXP -> é um tipo de operação que busca padrões
baseada em expressões regulares com o operador REGEXP

[...] qualquer caracter único no intervalo ou conjunto
especificado ([a-h]; [aeiou])

[^...] qualquer caracter único que não (negação) esteja no intervalo
ou conjunto especificado ([^a-h]; [^aeiou])

^ - início da string (fora dos colchetes é inicio de string);
$ - fim da string
a|b|c - alternação (a ou b ou c)

*/

-- busca os livros que iniciem com uma das letras que esta dentro do conjunto
SELECT Nome_livro FROM tbl_livro
WHERE Nome_livro REGEXP '^[FS]';

-- busca todos os livros que não tenham os caracter definido no conjunto
SELECT Nome_livro FROM tbl_livro
WHERE Nome_livro REGEXP '^[^FS]'; 

-- busca livros cujos terminem com as letras definidas nos conjuntos
SELECT Nome_livro FROM tbl_livro
WHERE Nome_livro REGEXP '[ng]$';

-- busca livros cujos nomes comecem com FS ou Mi
SELECT Nome_livro FROM tbl_livro
WHERE Nome_livro REGEXP '^[FS]|Mi';



