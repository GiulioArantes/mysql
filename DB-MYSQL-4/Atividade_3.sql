CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
data_fabricacao DATE,
data_validade DATE,
categoria_id BIGINT,
PRIMARY KEY(id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255) NOT NULL,
publico_alvo VARCHAR(255) NOT NULL
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

INSERT INTO tb_produtos(nome, preco, data_fabricacao, data_validade)
VALUES ('Paracetamol', 9.99, '2023-12-15', '2025-12-15'),
('Dipirona', 12.49, '2024-01-10', '2026-01-10'),
('Protetor Solar', 74.90, '2024-03-05', '2026-03-05'),
('Sabonete', 22.00, '2024-02-01', '2025-08-01'),
('Xampu', 18.75, '2023-11-20', '2025-11-20'),
('Vitamina C', 57.50, '2024-04-01', '2026-04-01'),
('Creme Dental', 10.90, '2024-01-01', '2026-01-01'),
('Ibuprofeno', 16.00, '2023-12-10', '2025-12-10');

INSERT INTO tb_categorias(tipo, publico_alvo) VALUES
('Medicamento', 'Adulto'),
('Medicamento', 'Infantil'),
('Higiene Pessoal', 'Unissex'),
('Suplemento', 'Adulto'),
('Cuidados com a Pele', 'Unissex');

UPDATE tb_produtos SET categoria_id = 1 WHERE id IN (2, 8);
UPDATE tb_produtos SET categoria_id = 2 WHERE id IN (1);
UPDATE tb_produtos SET categoria_id = 3 WHERE id IN (4, 5, 7);
UPDATE tb_produtos SET categoria_id = 4 WHERE id IN (6);
UPDATE tb_produtos SET categoria_id = 5 WHERE id IN (3);

SELECT * FROM tb_produtos WHERE preco > 45.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tipo = 'Medicamento';

