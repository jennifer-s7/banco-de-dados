CREATE DATABASE vendas;
USE vendas;

CREATE TABLE Produto (
    Codigo_Produto INTEGER PRIMARY KEY,
    Descricao_Produto VARCHAR(50),
    Preco_Produto FLOAT,
    Peso FLOAT
);

CREATE TABLE Nota_Fiscal (
    Numero_NF INTEGER PRIMARY KEY,
    ValorTotal_NF FLOAT,
    ICMS FLOAT
);

RENAME TABLE Nota_Fiscal TO Venda;