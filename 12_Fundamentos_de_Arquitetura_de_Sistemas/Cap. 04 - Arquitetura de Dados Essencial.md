# Arquitetura de Dados Essencial

### Dados

- Valores, Ocorrências.

### Importância

- Dados → Informação → Conhecimento.

### Modelo Sustentável

- Estruturação → Durabilidade → Velocidade → Controle de Acesso → Isolamento

### Modelos de Banco de Dados

- Flat, Hierárquico, Relacional, (etc...)
- Redes - Grapho, Orientado a Objetos, Objeto-Relacional, Big Data.

### Banco de Dados Relacionais

- SGDBR - (RDBMS)
  - Formado por Tabelas, Registros/Tuplas, Colunas, Chave PK/FK

### Modelagem

- Modelo conceitual - MER
- Modelo lógico - Implementação

### Normalização

- 1ª ... 5ª - Formas normais
- 1ª, 2ª e 3ª - Mais comum

### SGDBR - SQL

- DDL - Data Definition Language
- DML - Data Manipulation Language
- DQL - Data Query Language

### Comando DDL

```
CREATE TABLE Cliente
(
Codigo NUMERIC(10) NOT NULL PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
Telefone VARCHAR(15)
)
```

### Comando DML

```
INSERT INTO Cliente (Codigo, Nome, Telefone)
VALUES (1, "Lorem ipsum","(88) 999 9999")

DELETE FROM Cliente
WHERE Codigo = 1

UPDATE Cliente
SET Nome = "Lorem Ipsum"
WHERE Codigo = 1
```

### Comando DQL

```
SELECT Codigo,
			 Nome
FROM Cliente
<WHERE> Codigo = 1
	<GROUP BY> Profissao
	<HAVING> Count(1) > 0
<ORDER BY> Nome, Codigo

**Query**
SELECT Codigo,
			 Nome
FROM Cliente
WHERE Codigo = 2
UNION
SELECT Codigo,
		  Nome
FROM Cliente
WHERE Nome = "Lorem Ipsum"
```
