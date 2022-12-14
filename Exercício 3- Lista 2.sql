CREATE DATABASE DB_FARMACIA_BEM_ESTAR;

USE DB_FARMACIA_BEM_ESTAR;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
DESCRICAO VARCHAR(255) NOT NULL,
PRIMARY KEY(ID)
);

CREATE TABLE TB_PRODUTOS (
REFERENCIA BIGINT AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
PRECO FLOAT(6,2) NOT NULL,
CATEGORIA_ID BIGINT,
PRIMARY KEY (REFERENCIA),
FOREIGN KEY (CATEGORIA_ID) REFERENCES TB_CATEGORIAS (ID)
);

INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("INFANTIL");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("SAÚDE DA MULHER");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("HIGIENE PESSOAL");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("MEDICAMENTOS");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("BOMBONIERE");

SELECT * FROM TB_CATEGORIAS;

INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("FRALDAS", 32.90, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("SABONETE INFANTIL", 13.40, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("ABSORVENTE", 7.50, 2);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("DIPIRONA", 3.85, 4);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("TINTA PARA CABELO", 28.90, 2);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("POMADA HIPOGLOS", 8.9, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("ANTICONCEPCIONAL YAZ FLEX", 5110.85, 2);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("CHOCOLATE BRANCO", 12.00, 5);

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 50;
SELECT * FROM TB_PRODUTOS WHERE PRECO >= 5 AND PRECO <= 60;
SELECT * FROM TB_PRODUTOS WHERE NOME LIKE "%C%";
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID;
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID WHERE ID = 1;