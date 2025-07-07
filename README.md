# 📚 Repositório de Scripts SQL — Banco de Dados MySQL

Este repositório contém scripts SQL completos para criação, inserção e manipulação de dados em bancos de dados diversos. Os exemplos foram desenvolvidos para fins **educacionais e de prática**, cobrindo desde comandos básicos até relacionamentos entre tabelas.
</br> ![db mysql](https://i.postimg.cc/RZykGpKG/mysql-db.png)

## 🛠️ **Estrutura dos Bancos**

Este repositório contempla os seguintes bancos:
| Banco de Dados           | Finalidade                                                    |
| ------------------------ | ------------------------------------------------------------- |
| `db_curso_da_minha_vida` | Gerenciar cursos, categorias e filtragens por preço e nome    |
| `db_ecommerce`           | Cadastro de produtos com categorias e controle de estoque     |
| `db_escola`              | Registro de estudantes com notas, turmas e data de nascimento |
| `db_farmacia_bem_estar`  | Controle de produtos farmacêuticos e categorias específicas   |
| `db_pizzaria_legal`      | Catálogo de pizzas com categorias e ingredientes              |
| `db_sistema_rh`          | Cadastro de colaboradores com salário e data de admissão      |

## 📌 Exemplos de Comandos Utilizados
Os scripts contemplam diversos comandos SQL, como:

### 🧱 Criação de tabelas
```sql
CREATE TABLE tb_cursos (
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(255),
  preco DECIMAL(6,2),
  PRIMARY KEY(id)
);
```

### 🔗 Relacionamentos com chave estrangeira
```sql
ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);
```

### 📥 Inserção de dados
```sql
INSERT INTO tb_produtos(nome, preco, estoque, categoria)
VALUES ('TV', 1500.90, 25, 'Eletrônicos');
```

### 🛠️ Atualizações
```sql
UPDATE tb_estudantes SET nome = "Gabriel Ribeiro" WHERE id = 10;
```

###  🔍 Consultas com filtros
```sql
SELECT * FROM tb_produtos WHERE preco BETWEEN 500 AND 1000;
SELECT * FROM tb_estudantes WHERE nota > 7.0;
```

### 🤝 Junções entre tabelas
```sql
SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;
```

## 📚 Objetivos
Esses bancos foram criados para **fixar conhecimentos de SQL** em contextos reais e variados, tais como:

* Criação e modelagem de tabelas.
* Inserção e atualização de dados.
* Criação de relacionamentos entre tabelas (1:N, N:1).
* Execução de consultas simples e complexas com filtros, `LIKE`, `JOIN`, `BETWEEN`, etc.
* Prática com diferentes domínios (educação, e-commerce, RH, saúde, alimentação).

## 🚀 Como Usar

1. Instale o MySQL Server em sua máquina.
2. Utilize o cliente de sua preferência (MySQL Workbench, DBeaver, Beekeeper, etc).
3. Copie e execute os scripts diretamente em sua IDE.
4. Modifique e experimente à vontade para treinar!

> 💡 Recomendação
> </br> Explore os comandos `JOIN`, `WHERE`, `ORDER BY`, `GROUP BY` e os relacionamentos para aprender mais sobre manipulação de dados em bancos relacionais.

## 👨‍💻 Autor

Desenvolvido por [Giulio Arantes](https://www.linkedin.com/in/giulio-arantes/). </br>
Fique à vontade para abrir issues, dar sugestões ou usar os scripts como base para seus estudos.
