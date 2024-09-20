-- ALTERANDO TABELAS (ALTER)

USE db_biblioteca;

SELECT * FROM tbl_livro;
SELECT * FROM tbl_editoras;

-- excluindo coluna da tbl_livro
ALTER TABLE tbl_livro
DROP COLUMN ID_Autor;

-- adicionando coluna
ALTER TABLE tbl_livro
ADD ID_Autor SMALLINT NOT NULL;

-- adicionando chave estrangeira (conexão entre duas ou mais tabelas)
ALTER TABLE tbl_livro
ADD CONSTRAINT fk_ID_Autor -- nome da minha chave estrangeira
FOREIGN KEY (ID_Autor)
REFERENCES tbl_autores(ID_Autor);

-- adicionando coluna
ALTER TABLE tbl_livro
ADD ID_editora SMALLINT NOT NULL;

-- adicionando chave estrangeira (conexão entre duas ou mais tabelas)
ALTER TABLE tbl_livro
ADD CONSTRAINT fk_ID_editora
FOREIGN KEY(ID_editora)
REFERENCES tbl_editoras(ID_editora);
