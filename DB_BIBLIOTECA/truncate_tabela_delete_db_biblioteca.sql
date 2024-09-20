-- excluindo registros 

#sintaxe:
DELETE FROM tabela WHERE coluna = valor;

#obs: o uso da cláusula WHERE é usado para evitar
#perda de dados da tabela

-- TRUNCATE TABLE

#remove todas as linhas de uma tabela sem registrar
#as exclusões de linhas individuais.

#é como uma instrução DELETE sem usar a cláusulas WHERE

#sintaxe:
TRUNCATE TABLE tbl_teste;

