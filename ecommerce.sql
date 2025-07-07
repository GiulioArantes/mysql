CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
estoque INT,
categoria VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO tb_produtos (nome, preco, estoque, categoria)
VALUE ("Tv", 1500.90, 25, "Eletrônicos"),
("Camiseta", 49.90, 100, "Vestuários"),
("Livro SQL", 89.00, 15, "Livros"),
("Notebook", 2999.99, 30, "Eletrônicos"),
("Garrafa", 74.50, 60, "Casa"),
("Caneca", 504.90, 70, "Casa"),
("Mochila", 739.90, 22, "Vestuários"),
("Carregador", 179.99, 50, "Eletrônicos"),
("Livro Java", 79.90, 10, "Livros");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 54.90 WHERE id = 5;