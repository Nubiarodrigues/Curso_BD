-- Usando valor padrão

/*sintaxe para modificação:
ALTER TABLE nome_tabela
MODIFY COLUMN nome_coluna tipo_dados
DEFAULT 'valor_padrão'

sintaxe para criação de tabela
CREATE TABLE nome_tabela(
	idade INT DEFAULT 18
);

*/

ALTER TABLE tbl_autores
MODIFY COLUMN Sobrenome_Autor VARCHAR(60)
DEFAULT 'da Silva';

-- inserir registro p/teste
INSERT INTO tbl_autores (ID_Autor, Nome_Autor)
VALUES (6, 'João');

INSERT INTO tbl_autores (ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES (7, 'Rita', 'de Souza');

SELECT * FROM tbl_autores;

-- desaplicando padrão
ALTER TABLE tbl_autores
MODIFY COLUMN Sobrenome_Autor VARCHAR(60);

INSERT INTO tbl_autores (ID_Autor, Nome_Autor)
VALUES (8, 'Núbia');