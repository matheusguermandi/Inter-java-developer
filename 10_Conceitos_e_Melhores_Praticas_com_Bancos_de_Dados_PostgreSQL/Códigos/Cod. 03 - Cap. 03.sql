--------------------------------------------------------------------------------
INSERT (campos da tabela,) VALUES (valores,);

--------------------------------------------------------------------------------
UPDATE (tabela) SET campo1 = novo_valor WHERE (condição);

--------------------------------------------------------------------------------
DELETE FROM (tabela) SET campo1 = novo_valor WHERE (condição);

--------------------------------------------------------------------------------
SELECT (campos,) FROM tabela1 WHERE campo1 = valor1

--------------------------------------------------------------------------------
SELECT (campos,) FROM tabela1 
WHERE EXISTS (
    SELECT (campo,)
    FROM tabela2
    WHERE campo1 = valor1
    [AND/OR campoN = valorN]
);

--------------------------------------------------------------------------------
SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
JOIN tabela_2
	ON tabela_2.campo = tabela_1.campo

--------------------------------------------------------------------------------
SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
LEFT JOIN tabela_2
	ON tabela_2.campo = tabela_1.campo   

--------------------------------------------------------------------------------
SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
RIGHT JOIN tabela_2
	ON tabela_2.campo = tabela_1.campo

--------------------------------------------------------------------------------
SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
FULL JOIN tabela_2
	ON tabela_2.campo = tabela_1.campo

--------------------------------------------------------------------------------
SELECT tabela_1.campos, tabela_2.campos
FROM tabela_1
CROSS JOIN tabela_2

--------------------------------------------------------------------------------
WITH [nome] AS (
	SELECT (campos,)
	FROM tabela_A
	[WHERE]
), [nome2] AS (
	SELECT (campos,)
	FROM tabela_B
	[WHERE]
)
SELECT [nome1].(campos,),[nome2].(campos,)
FROM [nome1]
JOIN [nome2] ....

--------------------------------------------------------------------------------
INSERT INTO agencia (banco_numero,numero,nome) VALUES (341,1'Centro da cidade');

INSERT INTO agencia (banco_numero,numero,nome)

INSERT INTO agencia (banco_numero,numero,nome) VALUES (341,1,'Centro da cidade') 
    ON CONFLICT (banco_numero,numero) DO NOTHING;

--------------------------------------------------------------------------------
SELECT 341,1,'Centro da cidade' WHERE NOT EXISTS (
    SELECT banco_numero,numero,nome FROM agencia 
        WHERE banco_numero = 341 AND nome = 'Centro da cidade'
    );

SELECT numero, nome FROM banco;
SELECT numero, nome FROM banco WHERE ativo IS TRUE;
SELECT nome FROM cliente WHERE email LIKE '%gmail.com';

SELECT numero FROM agencia
WHERE banco_numero IN (SELECT numero FROM banco WHERE nome ILIKE '%Bradesco%');

--------------------------------------------------------------------------------
SELECT numero, nome, ativo FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SELECT numero, nome, email FROM cliente;
SELECT id, nome FROM tipo_transacao;
SELECt banco_numero, agencia_numero, numero, cliente_numero FROM conta_corrente;
SELECT banco_numero, agencia_numero, cliente_numero FROM cliente_transacoes;

SELECT * FROM cliente_transacoes;

CREATE TABLE IF NOT EXISTS teste (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
);

DROP TABLE IF EXISTS teste;

CREATE TABLE IF NOT EXISTS teste (
	cpf VARCHAR(11) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (cpf)
);

INSERT INTO teste (cpf, nome, created_at)
VALUES ('22344566712','José Colméia','2019-07-01 12:00:00');

-- Inserção para dar erro
INSERT INTO teste (cpf, nome, created_at)
VALUES ('22344566712','José Colméia','2019-07-01 12:00:00');

INSERT INTO teste (cpf, nome, created_at)
VALUES ('22344566712','José Colméia','2019-07-01 12:00:00') 
    ON CONFLICT (cpf) DO NOTHING;

UPDATE teste SET nome = 'Pedro Alvares' WHERE cpf = '22344566712';

SELECT * FROM teste;

--------------------------------------------------------------------------------
SELECT * FROM information_schema.columns WHERE table_name = 'banco';
SELECT column_name, data_type FROM information_schema.columns
     WHERE table_name = 'banco';

SELECT valor FROM cliente_transacoes;

SELECT AVG(valor) FROM cliente_transacoes;

SELECT COUNT(numero) 
FROM cliente;

-- Código com erro
SELECT COUNT(numero), email
FROM cliente
WHERE email ILIKE 'gmail.com';

-- Código correto
SELECT COUNT(numero), email
FROM cliente
WHERE email ILIKE 'gmail.com'
GROUP BY email;

SELECT MAX(numero)
FROM cliente;

SELECT MIN(numero)
FROM cliente;

SELECT MAX(valor)
FROM cliente_transacoes;

SELECT MIN(valor)
FROM cliente_transacoes;

SELECT MAX(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

SELECT MIN(valor)
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

SELECT column_name, data_type FROM information_schema.columns 
    WHERE table_name = 'banco';

SELECT COUNT(id), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

SELECT COUNT(id), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
HAVING COUNT(id) > 150;

SELECT SUM(valor)
FROM cliente_transacoes;

SELECT SUM(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP By tipo_transacao_id;

SELECT SUM(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id ASC;

SELECT SUM(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id DESC;

--------------------------------------------------------------------------------
SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SELECT numero, nome FROM cliente;
SELECT banco_numero, agencia_numero, numero, digito, cliente_numero 
    FROM conta_corrente;
SELECT id, nome FROM tipo_transacao;

SELECT banco_numero,
       agencia_numero,
       conta_corrente_numero,
       conta_corrente_digito,
       cliente_numero,
       valor 
    FROM cliente_transacoes;

SELECT count(1) FROM banco;
SELECT count(1) FROM agencia;

SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero; 

SELECT count(banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT banco.numero
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
GROUP BY banco.numero;

SELECT count(distinct banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
LEFT JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT agencia.numero, agencia.nome, banco.nome
FROM agencia
RIGHT JOIN banco ON banco.numero = agencia.banco_numero;

SELECT agencia.numero, agencia.nome, banco.numero, banco.nome
FROM agencia
LEFT JOIN banco ON banco.numero = agencia.banco_numero;

SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
FULL JOIN agencia ON agencia.banco_numero = banco.numero;

CREATE TABLE IF NOT EXISTS teste_a (id SERIAL PRIMARY KEY, valor VARCHAR(10)); 
CREATE TABLE IF NOT EXISTS teste_b (id SERIAL PRIMARY KEY, valor VARCHAR(10));

INSERT INTO teste_a (valor) VALUES ('teste1');
INSERT INTO teste_a (valor) VALUES ('teste2');
INSERT INTO teste_a (valor) VALUES ('teste3');
INSERT INTO teste_a (valor) VALUES ('teste4');

INSERT INTO teste_b (valor) VALUES ('teste_a');
INSERT INTO teste_b (valor) VALUES ('teste_b');
INSERT INTO teste_b (valor) VALUES ('teste_c');
INSERT INTO teste_b (valor) VALUES ('teste_d');

SELECT tbla.valor, tblb.valor
FROM teste_a tbla
CROSS JOIN teste_b tblb;

DROP TABLE IF EXISTS teste_a;
DROP TABLE IF EXISTS teste_b;

SELECT banco.nome,
	agencia.nome,
	conta_corrente.numero,
	conta_corrente.digito,
	cliente.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
JOIN conta_corrente 
	-- ON conta_corrente.banco.numero = agencia.banco_numero
	ON conta_corrente.banco_numero = agencia.numero 
	AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente
	ON cliente.numero = conta_corrente.cliente_numero

--------------------------------------------------------------------------------
SELECT numero, nome FROM banco
SELECT banco_numero, numero, nome FROM agencia;

WITH tbl_tmp_banco AS (
	SELECT numero, nome
	FROM banco
)
SELECT numero, nome
FROM tbl_tmp_banco;

WITH params AS (
	SELECT 213 AS banco_numero
), tbl_tmp_banco AS (
	SELECT numero, nome
	FROM banco
	JOIN params ON params.banco_numero = banco.numero
)
SELECT numero, nome 
FROM tbl_tmp_banco;

SELECT banco.numero, banco.nome
FROM banco
JOIN (
	SELECT 213 AS banco_numero
) params ON params.banco_numero = banco_numero;

WITH clientes_e_transacoes AS (
	SELECT cliente.nome AS cliente_nome,
				 tipo_transacao.nome AS tipo_transacao_nome,
				 cliente_transacoes.valor AS tipo_transacao_valor
	FROM cliente_transacoes
	JOIN cliente 
        ON cliente.numero = cliente_transacoes.cliente_numero
	JOIN tipo_transacao 
        ON tipo_transacao.id = cliente_transacoes.tipo_transacao_id
)
SELECT cliente_nome, tipo_transacao_nome, tipo_transacao_valor
FROM clientes_e_transacoes;

WITH params AS (
	SELECT 213 AS banco_numero
), tbl_tmp_banco AS (
	SELECT numero, nome
	FROM banco
	JOIN params ON params.banco_numero = banco.numero
)
SELECT numero, nome 
FROM tbl_tmp_banco;

SELECT banco.numero, banco.nome
FROM banco
JOIN (
	SELECT 213 AS banco_numero
) params ON params.banco_numero = banco_numero;

WITH clientes_e_transacoes AS (
	SELECT cliente.nome AS cliente_nome,
		tipo_transacao.nome AS tipo_transacao_nome,
		cliente_transacoes.valor AS tipo_transacao_valor
	FROM cliente_transacoes
	JOIN cliente 
        ON cliente.numero = cliente_transacoes.cliente_numero
	JOIN tipo_transacao 
        ON tipo_transacao.id = cliente_transacoes.tipo_transacao_id
	JOIN banco 
        ON banco.numero = cliente_transacoes.banco_numero 
        AND banco.nome ILIKE '%Itau%'
)
SELECT cliente_nome, tipo_transacao_nome, tipo_transacao_valor
FROM clientes_e_transacoes;

--------------------------------------------------------------------------------