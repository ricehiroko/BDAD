.mode columns
.headers on
.nullvalue NULL
DROP VIEW IF EXISTS NumeroEncomendasFuncionario;
DROP VIEW IF EXISTS MediaEncomendas;

CREATE VIEW IF NOT EXISTS NumeroEncomendasFuncionario AS
	SELECT Nome, NIFFuncionario, Count(*) as numeroEncomendas FROM Encomenda, Pessoa
WHERE (NIFFuncionario = NIF)
GROUP BY NIFFuncionario
ORDER BY numeroEncomendas DESC;

CREATE VIEW IF NOT EXISTS MediaEncomendas AS
SELECT AVG(numeroEncomendas) as mediaEncomendas FROM NumeroEncomendasFuncionario;

SELECT Nome, NIFFuncionario, numeroEncomendas FROM NumeroEncomendasFuncionario
WHERE (numeroEncomendas >= (SELECT mediaEncomendas FROM MediaEncomendas))
GROUP BY NIFFuncionario
ORDER BY numeroEncomendas DESC
LIMIT 1; 