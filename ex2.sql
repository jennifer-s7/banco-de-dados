CREATE DATABASE vendas;
USE vendas;

CREATE TABLE Produto (
    Codigo_Produto INTEGER PRIMARY KEY,
    Descricao_Produto VARCHAR(30),
    Preco_Produto FLOAT
);