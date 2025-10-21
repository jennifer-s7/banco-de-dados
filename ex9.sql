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
    Data_NF DATE,
    Valor_NF FLOAT,
    ICMS FLOAT
);

CREATE TABLE Itens (
    Codigo_Produto INTEGER,
    Numero_NF INTEGER,
    Num_Item INTEGER PRIMARY KEY,
    Qtde_Item INTEGER,
    FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo_Produto),
    FOREIGN KEY (Numero_NF) REFERENCES Nota_Fiscal(Numero_NF)
);

DESCRIBE Produto;