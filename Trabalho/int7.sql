.mode columns
.headers on
.nullvalue NULL
SELECT Nome, NIF, Localidade FROM Pessoa
WHERE (Localidade NOT IN ('Porto'));