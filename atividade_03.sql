CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
nota DECIMAL(4,2),
turma VARCHAR(255),
data_nascimento DATE,
PRIMARY KEY(id)
);

INSERT INTO tb_estudantes (nome, nota, turma, data_nascimento)
VALUE ("Alice Oliveira", 8.0, "A1", "2010-05-10"),
("Miguel Santos", 7.0, "A1", "2010-03-10"),
("Helena Pereira", 5.0, "A1", "2010-05-24"),
("Arthur Lima", 1.0, "A2", "2010-01-15"),
("Laura Fernandes", 9.0, "A2", "2010-12-15"),
("Heitor Costa", 10.0, "A2", "2010-01-27"),
("Valentina Rocha", 6.0, "A2", "2010-03-02"),
("Theo Martins", 4.0, "A3", "2010-03-03"),
("Davi Souza", 6.0, "A3", "2010-08-20"),
("Gael Ribeiro", 2.0, "A3", "2010-12-10");

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nome = "Gabriel Ribeiro" WHERE id = 10;