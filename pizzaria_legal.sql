CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
ingredientes VARCHAR(255),
tempo_preparo INT,
PRIMARY KEY(id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255) NOT NULL,
estilo VARCHAR(255) NOT NULL
);

INSERT INTO tb_pizzas(sabor, preco, ingredientes, tempo_preparo)
VALUES ('Margherita', 54.90, 'Mussarela, tomate, manjericão', 15),
('Calabresa', 39.90, 'Calabresa, cebola, orégano', 18),
('Portuguesa', 52.00, 'Presunto, ovo, cebola, azeitona, mussarela', 20),
('Frango com Catupiry', 45.50, 'Frango desfiado, catupiry, milho', 22),
('Quatro Queijos', 44.90, 'Mussarela, parmesão, gorgonzola, catupiry', 18),
('Pepperoni', 46.90, 'Pepperoni, mussarela, orégano', 16),
('Vegetariana', 61.00, 'Tomate, pimentão, cebola, azeitona, milho', 19),
('Chocolate com Morango', 68.90, 'Chocolate ao leite, morango, leite condensado', 14),
('Romeu e Julieta', 36.00, 'Goiabada, queijo minas', 13),
('Carne Seca com Catupiry', 47.90, 'Carne seca, catupiry, cebola roxa', 22);

INSERT INTO tb_categorias(descricao, estilo) VALUES
('Sabores marcantes com perfil internacional', 'Internacional'),
('Clássicas e populares, com ingredientes tradicionais que agradam a todos', 'Tradicional'),
('Especiais com toque cremoso e sabores intensos','Especial da Casa'),
('Opções vegetarianas, leves e cheias de sabor', 'Leve e Natural'),
('Doces irresistíveis para fechar a refeição com chave de ouro', 'Sobremesa');

ALTER TABLE tb_pizzas ADD categoria_id BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

UPDATE tb_pizzas SET categoria_id = 1 WHERE id IN (6);
UPDATE tb_pizzas SET categoria_id = 2 WHERE id IN (2, 3, 5);
UPDATE tb_pizzas SET categoria_id = 3 WHERE id IN (4, 10);
UPDATE tb_pizzas SET categoria_id = 4 WHERE id IN (1, 7);
UPDATE tb_pizzas SET categoria_id = 5 WHERE id IN (8, 9);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id 
WHERE estilo = 'Sobremesa';

