--------------------------------------------------------------------------------
CREATE OR REPLACE VIEW vw_bancos AS (
	SELECT numero, nome, ativo
	FROM banco
);

SELECT numero, nome, ativo
FROM vw_bancos;

CREATE OR REPLACE VIEW vw_bancos (banco_numero, banco_nome, banco_ativo) AS (
	SELECT numero, nome, ativo
	FROM banco
);

SELECT banco_numero, banco_nome, banco_ativo
FROM vw_bancos;

--------------------------------------------------------------------------------
CREATE OR REPLACE VIEW vw_bancos AS (
	SELECT numero, nome, ativo
	FROM banco
);

SELECT numero, nome, ativo
FROM vw_bancos;

--------------------------------------------------------------------------------
INSERT INTO vw_bancos (numero, nome, ativo) VALUES (100, 'Banco CEM', TRUE);

UPDATE vw_bancos SET nome = 'Banco 100' WHERE numero = 100;

DELETE FROM vw_bancos WHERE numero = 100;

--------------------------------------------------------------------------------
CREATE OR REPLACE TEMPORARY VIEW vw_bancos AS (
	SELECT numero, nome, ativo
	FROM banco
);
SELECT numero, nome, ativo
FROM vw_bancos;

--------------------------------------------------------------------------------
CREATE OR REPLACE RECURSIVE VIEW (nome_da_view) (campos_da_view) AS (
	SELECT base
	UNION ALL
	SELECT campos
	FROM tabela_base
	JOIN (nome_da_view)
);

--------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS funcionarios (
	id SERIAL NOT NULL,
	nome VARCHAR(50),
	gerente INTEGER,
	PRIMARY KEY (id),
	FOREIGN KEY (gerente) REFERENCES funcionarios (id)
);

INSERT INTO funcionarios (nome, gerente) VALUES ('Ancelmo',null);
INSERT INTO funcionarios (nome, gerente) VALUES ('Beatriz',1);
INSERT INTO funcionarios (nome, gerente) VALUES ('Magno',1);
INSERT INTO funcionarios (nome, gerente) VALUES ('Cremilda',2);
INSERT INTO funcionarios (nome, gerente) VALUES ('Wagner',4);

--------------------------------------------------------------------------------
CREATE OR REPLACE RECURSIVE VIEW vw_funcionarios (id, gerente, funcionario) AS (
	SELECT id, gerente, nome
	FROM funcionarios
	WHERE gerente IS NULL
	UNION ALL
	SELECT funcionarios.id, funcionarios.gerente, funcionarios.nome
	FROM funcionarios
	JOIN vw_funcionarios ON vw_funcionarios.id = funcionarios.gerente
);

SELECT id, gerente, funcionario
FROM vw_funcionarios

--------------------------------------------------------------------------------
CREATE OR REPLACE RECURSIVE VIEW vw_funcionarios (id, gerente, funcionario) AS (
	SELECT id, CAST("AS VARCHAR") AS gerente, nome
	FROM funcionarios
	WHERE gerente IS NULL
	UNION ALL
	SELECT funcionarios.id, funcionarios.gerente, funcionarios.nome
	FROM funcionarios
	JOIN vw_funcionarios ON vw_funcionarios.id = funcionarios.gerente
	JOIN funcionarios gerentes ON gerentes.id = vw_funcionarios.id
);

SELECT id, gerente, funcionario
FROM vw_funcionarios

--------------------------------------------------------------------------------
CREATE OR REPLACE VIEW vw_bancos AS (
	SELECT numero, nome, ativo
	FROM banco
);

INSERT INTO vw_bancos (numero, nome, ativo) VALUES (100, 'Banco CEM', FALSE)
-- OK

CREATE OR REPLACE VIEW vw_bancos_maiores_que_100 AS (
	SELECT numero, nome, ativo
	FROM vw_banco
	WHERE numero > 100
) WITH LOCAL CHECK OPTION;

-- ERROR
INSERT INTO vw_bancos_maiores_100 (numero, nome, ativo) 
    VALUES (99, 'Banco DIO', FALSE)

-- OK
INSERT INTO vw_bancos_maiores_100 (numero, nome, ativo) 
    VALUES (200, 'Banco DIO', FALSE)

--------------------------------------------------------------------------------
SELECT numero, nome, ativo
FROM banco;

CREATE OR REPLACE VIEW vw_bancos AS (
  SELECT numero, nome, ativo
  FROM banco
);

SELECT numero, nome, ativo
FROM vw_bancos;

CREATE OR REPLACE VIEW vw_bancos_2 (banco_numero, banco_nome, banco_ativo) AS (
	SELECT numero, nome, ativo
	FROM banco
);
SELECT banco_numero, banco_nome, banco_ativo
FROM vw_bancos_2

INSERT INTO vw_bancos_2 (banco_numero, banco_nome, banco_ativo)
VALUES (51, 'Banco Boa Idéia', TRUE);

SELECT banco_numero, banco_nome, banco_ativo FROM vw_bancos_2 
    WHERE banco_numero = 51;

SELECT numero, nome, ativo FROM banco WHERE numero = 51;

UPDATE vw_bancos_2 SET banco_ativo = FALSE WHERE banco_numero = 51;

SELECT banco_numero, banco_nome, banco_ativo FROM vw_bancos_2 
    WHERE banco_numero = 51;

SELECT numero, nome, ativo FROM banco WHERE numero = 51;

DELETE FROM vw_bancos_2 WHERE banco_numero = 51;

SELECT banco_numero, banco_nome, banco_ativo FROM vw_bancos_2 
    WHERE banco_numero = 51;

SELECT numero, nome, ativo FROM banco WHERE numero = 51;

CREATE OR REPLACE TEMPORARY VIEW vw_agencia AS (
	SELECT nome FROM agencia
);
 
SELECT nome FROM vw_agencia;

CREATE OR REPLACE VIEW vw_bancos_ativos AS (
	SELECT numero, nome, ativo
	FROM banco
	WHERE ativo IS TRUE
) WITH LOCAL CHECK OPTION;

-- ERROR
INSERT INTO vw_bancos_ativos (numero, nome, ativo) 
    VALUES (51, 'Banco Boa Idéia', FALSE);

CREATE OR REPLACE VIEW vw_bancos_com_a AS (
	SELECT numero, nome, ativo
	FROM vw_bancos_ativos
	WHERE nome ILIKE 'a%'
) WITH LOCAL CHECK OPTION;	

SELECT numero, nome, ativo FROM vw_bancos_com_a;

-- ERROR
INSERT INTO vw_bancos_com_a (numero, nome, ativo) 
    VALUES (333,'Beta Omega', TRUE);

INSERT INTO vw_bancos_com_a (numero, nome, ativo) 
    VALUES (333,'Alfa Omega', TRUE);

-- ERROR		
INSERT INTO vw_bancos_com_a (numero, nome, ativo) 
    VALUES (331,'Alfa Gama', FALSE);
													  
														  
CREATE OR REPLACE VIEW vw_bancos_com_a AS (
	SELECT numero, nome, ativo
	FROM vw_bancos_ativos
	WHERE nome ILIKE 'a%'
)WITH CASCADED CHECK OPTION;

-- ERROR
INSERT INTO vw_bancos_com_a (numero, nome, ativo) VALUES (331,'Alfa Gama Beta', FALSE);

--------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS funcionarios (
	id SERIAL,
	nome VARCHAR(50),
	gerente INTEGER,
	PRIMARY KEY (id),
	FOREIGN KEY (gerente) REFERENCES funcionarios (id)
);

INSERT INTO funcionarios (nome, gerente) VALUES ('Anselmo', null);
INSERT INTO funcionarios (nome, gerente) VALUES ('Beatriz', 1);
INSERT INTO funcionarios (nome, gerente) VALUES ('Magno', 1);
INSERT INTO funcionarios (nome, gerente) VALUES ('Cremilda', 2);
INSERT INTO funcionarios (nome, gerente) VALUES ('Wagner', 4);

SELECT id, nome, gerente FROM funcionarios 

SELECT id, nome, gerente FROM funcionarios WHERE gerente IS NULL;

SELECT id, nome, gerente FROM funcionarios WHERE gerente IS NULL
UNION ALL
SELECT id, nome, gerente FROM funcionarios WHERE id = 999;

CREATE OR REPLACE RECURSIVE VIEW vw_func (id, gerente, funcionario) AS (
	SELECT id, gerente, nome
	FROM funcionarios
	WHERE gerente IS NULL
	
	UNION ALL
	
	SELECT funcionarios.id, funcionarios.gerente, funcionarios.nome
	FROM funcionarios
	JOIN vw_func ON vw_func.id = funcionarios.gerente
);

SELECT id, gerente, funcionario
FROM vw_func;

--------------------------------------------------------------------------------
UPDATE conta SET valor = valor - 100.00
	WHERE nome = 'Alice';

UPDATE conta SET valor = valor + 100.00
	WHERE nome = 'Bob';

--------------------------------------------------------------------------------
BEGIN;

	UPDATE conta SET valor = - 100.00
	WHERE nome = 'Alice';

	UPDATE conta SET valor = + 100.00
	WHERE nome = 'Bob';

COMMIT;

--------------------------------------------------------------------------------
BEGIN;
	UPDATE conta SET valor = valor - 100.00
	WHERE nome = 'Alice';

SAVEPOINT my_savepoint;
	UPDATE conta SET valor = valor + 100.00
	WHERE nome = 'Bob';
	-- oops --- não é para o Bob, é para o Wally!!!

ROLLBACK TO my_savepoint;
	UPDATE conta SET valor = valor + 100.00
	WHERE nome = 'Wally';

COMMIT;

--------------------------------------------------------------------------------
SELECT numero, nome, ativo FROM banco ORDER BY numero ASC;

UPDATE banco SET ativo = false WHERE numero = 0;

SELECT numero, nome, ativo FROM banco ORDER BY numero ASC;

BEGIN;
UPDATE banco SET ativo = true WHERE numero = 0;
SELECT numero, nome, ativo FROM banco WHERE numero = 0;
ROLLBACK;

SELECT numero, nome, ativo FROM banco ORDER BY numero ASC;

BEGIN;
UPDATE banco SET ativo = true WHERE numero = 0;
COMMIT;

SELECT numero, nome, ativo FROM banco ORDER BY numero ASC;

SELECT id, gerente, nome
FROM funcionarios;

BEGIN;
UPDATE funcionarios SET gerente = 2 WHERE id = 3;
SAVEPOINT if_func;
UPDATE funcionarios SET gerente = null;
ROLLBACK TO if_func;
UPDATE funcionarios SET gerente = 3 WHERE id = 5;
COMMIT;

SELECT id, gerente, nome
FROM funcionarios;

--------------------------------------------------------------------------------

