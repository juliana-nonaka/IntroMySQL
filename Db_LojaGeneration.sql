CREATE DATABASE DB_LOJAGENERATION;    
USE DB_LOJAGENERATION;

CREATE TABLE TB_CATEGORIA(
    ID BIGINT(5) AUTO_INCREMENT,
    DESCRICAO VARCHAR(255) NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE TB_PRODUTOS(
    ID BIGINT(5) AUTO_INCREMENT,
    NOME VARCHAR(255) NOT NULL,
    PRECO DECIMAL(6,2) NOT NULL,
    QTPRODUTO INT NOT NULL,
    CATEGORIA_ID BIGINT,
    PRIMARY KEY(ID),
    
);

INSERT INTO TB_CATEGORIA(DESCRICAO)
    VALUES("PERIFERICOS");
    
INSERT INTO TB_CATEGORIA(DESCRICAO)
    VALUES("SOFTWARE");
    
INSERT INTO TB_CATEGORIA(DESCRICAO)
    VALUES("ADESIVOS");    

SELECT * FROM TB_CATEGORIA;

INSERT INTO TB_PRODUTOS(NOME,PRECO,QTPRODUTO,CATEGORIA_ID)
    VALUES("MOUSE",20.00,4,1);
   
INSERT INTO TB_PRODUTOS(NOME,PRECO,QTPRODUTO,CATEGORIA_ID)
    VALUES("TECLADO",35.000,10,1);

INSERT INTO TB_PRODUTOS(NOME,PRECO,QTPRODUTO,CATEGORIA_ID)
    VALUES("MENINAS SUPER PODEROSAS",35.000,10,3);
    
SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE NOME= "MOUSE";

SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIA ON
TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIA.ID;

SELECT * FROM TB_PRODUTOS RIGHT JOIN TB_CATEGORIA ON
TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIA.ID;