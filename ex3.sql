CREATE DATABASE vendas;
USE vendas;

CREATE TABLE Produto (
    Codigo_Produto INTEGER PRIMARY KEY,
    Descricao_Produto VARCHAR(30),
    Preco_Produto FLOAT
);

CREATE TABLE Nota_Fiscal (
    Numero_NF INTEGER PRIMARY KEY,
    Data_NF DATE,
    Valor_NF FLOAT
);