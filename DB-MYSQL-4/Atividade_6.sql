CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
instrutor VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
duracao_horas INT,
categoria_id BIGINT,
PRIMARY KEY(id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nivel VARCHAR(255) NOT NULL,
area_conhecimento VARCHAR(255) NOT NULL
);

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

INSERT INTO tb_cursos(nome, instrutor, preco, duracao_horas)
VALUES ('Lógica de Programação', 'Carlos Mendes', 509.90, 20),
('Design com Photoshop', 'Amanda Silva', 699.00, 25),
('Planejamento Estratégico', 'Rodrigo Costa', 1150.00, 30),
('Introdução ao Marketing Digital', 'Juliana Freitas', 485.50, 18),
('Contabilidade para Iniciantes', 'Eduardo Lima', 220.00, 22),
('Inglês para Negócios', 'Laura Martins', 1200.00, 40),
('Manutenção de Computadores', 'Bruno Souza', 589.99, 16),
('Produtividade e Hábitos', 'Mariana Rocha', 559.90, 12);

INSERT INTO tb_categorias(nivel, area_conhecimento) VALUES
('Básico', 'Tecnologia da Informação'),
('Intermediário', 'Design Gráfico'),
('Avançado', 'Negócios'),
('Intermediário', 'Finanças'),
('Intermediário', 'Desenvolvimento Pessoal');

UPDATE tb_cursos SET categoria_id = 1 WHERE id IN (1, 7);
UPDATE tb_cursos SET categoria_id = 2 WHERE id IN (2);
UPDATE tb_cursos SET categoria_id = 3 WHERE id IN (3, 4, 6);
UPDATE tb_cursos SET categoria_id = 4 WHERE id IN (5);
UPDATE tb_cursos SET categoria_id = 5 WHERE id IN (8);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id 
WHERE area_conhecimento = 'Tecnologia da Informação';

