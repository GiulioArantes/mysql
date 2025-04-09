CREATE DATABASE db_sistema_rh;

USE db_sistema_rh;

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
salario DECIMAL(10, 2) NOT NULL,
cargo VARCHAR(255),
data_admissao DATE,
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, salario, cargo, data_admissao)
VALUE ("Giulio Arantes", 1500.00, "Desenvolvedor", "2024-01-01"),
("Gabriela Oliveira", 5000.00, "Gerente", "2023-01-01"),
("Lucas Moura", 1200.00, "Recepcionista", "2023-06-01"),
("Guilherme Santos", 4000.00, "Especialista", "2022-01-01"),
("Fernanda Ferreira", 1000.00, "Estagiária", "2024-01-01"),
("Laura Silva", 3000.00, "Desenvolvedora", "2023-01-01");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 1;