-- LIKE e NOT LIKE -> filtragem de padrões de caracteres

/*determina se uma cadeia de caracteres específica
corresponde a um padrão especificado. Pode incluir
caracteres normais e curingas.

O NOT LIKE inverte a comparação, verificando se a cadeia
de caracteres NÃO corresponde ao padrão especificado.
*/

#LIKE
#metacaratres

# % -- qualquer cadeia de 0 ou mais caracteres
# _ -- sublinhado: qualquer caractere único

#exemplo LIKE 1:
SELECT * FROM tbl_livro
WHERE Nome_livro LIKE 'F%';

SELECT * FROM tbl_livro
WHERE Nome_livro NOT LIKE 'S%';

SELECT Nome_livro 
FROM tbl_livro
WHERE Nome_livro LIKE '_i%';