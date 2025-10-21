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

CREATE TABLE Itens (
    Codigo_Produto INTEGER,
    Numero_NF INTEGER,
    Num_Item INTEGER,
    Qtde_Item INTEGER,
    PRIMARY KEY (Codigo_Produto, Numero_NF),
    FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo_Produto),
    FOREIGN KEY (Numero_NF) REFERENCES Nota_Fiscal(Numero_NF)
);

ALTER TABLE Produto
MODIFY COLUMN Descricao_Produto VARCHAR(50);