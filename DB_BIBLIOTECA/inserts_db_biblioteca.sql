-- INSERINDO DADOS (INSERT)

USE db_biblioteca;

-- INSERINDO DADOS NA tbl_autores:
INSERT INTO tbl_autores(ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (1, 'Daniel', 'Barret');

INSERT INTO tbl_autores(ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (2, 'Gerald', 'Carter');

INSERT INTO tbl_autores(ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (3, 'Mark', 'Sobell');

INSERT INTO tbl_autores(ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (4, 'Willian', 'Stanek');

INSERT INTO tbl_autores(ID_Autor, Nome_Autor, SobreNome_Autor)
VALUES (5, 'Richard', 'Blum');

-- CONSULTA PARA TESTAR SE OS DADOS FORAM INSERIDOS COM SUCESSO (SELECT)
SELECT * FROM tbl_autores;


-- INSERINDO DADOS NA tbl_editora
INSERT INTO tbl_editoras(Nome_Editora)
VALUES ('Prentice Hall');

INSERT INTO tbl_editoras(Nome_Editora)
VALUES ('O´Reilly');

INSERT INTO tbl_editoras(Nome_Editora)
VALUES ('Microsoft Press');

INSERT INTO tbl_editoras(Nome_Editora)
VALUES ('Wiley');

SELECT * FROM tbl_editoras;


-- INSERINDO DADOS NA tbl_livro;
INSERT INTO tbl_livro (Nome_livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_editora)
VALUES ('Linux Command Line and Shell Scripting', 143856969, '20091221', 68.35, 5, 4);

INSERT INTO tbl_livro (Nome_livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_editora)
VALUES ('SSH, the Secure Shell', 127658789, '20091221', 58.30, 1, 2);

INSERT INTO tbl_livro (Nome_livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_editora)
VALUES ('Using Samba', 123456789, '20091221', 61.45, 2, 2);

INSERT INTO tbl_livro (Nome_livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_editora)
VALUES ('Fedora and Red Hat Linux', 123456789, '20101101', 62.24, 3, 1);

INSERT INTO tbl_livro (Nome_livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_editora)
VALUES ('Windows Server 2012 Inside Out', 123456789, '20040517', 66.80, 4, 3);

INSERT INTO tbl_livro (Nome_livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_editora)
VALUES ('Microsoft Exchange Server 2010', 123456789, '20091221', 45.30, 4, 3);

SELECT * FROM tbl_livro;










