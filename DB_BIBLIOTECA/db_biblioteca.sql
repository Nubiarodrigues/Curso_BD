
SHOW DATABASES; -- mostra todos os bancos já criados

CREATE DATABASE db_Biblioteca;

USE db_biblioteca; -- diz para o SGBD o banco especifico que irá rodar os comandos a seguir
SELECT DATABASE(); -- mostra o banco selecionado no USE
SHOW TABLES; -- mostra as tabelas criadas no banco selecionado

-- CRIAÇÃO DE TABELAS(CREATE)

CREATE TABLE IF NOT EXISTS tbl_livro (
	ID_Livro SMALLINT AUTO_INCREMENT PRIMARY KEY,
    Nome_livro VARCHAR(50) NOT NULL,
    ISBN VARCHAR(30) NOT NULL,
    ID_Autor SMALLINT NOT NULL,
    Data_Pub DATE NOT NULL,
    Preco_Livro DECIMAL NOT NULL
);

CREATE TABLE tbl_autores (
	ID_Autor SMALLINT PRIMARY KEY,
    Nome_Autor VARCHAR(50),
    Sobrenome_Autor VARCHAR(60)
);

CREATE TABLE tbl_editoras (
	ID_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
    Nome_editora VARCHAR(50) NOT NULL
);




