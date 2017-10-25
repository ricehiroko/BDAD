.mode columns
.headers on
.nullvalue NULL
SELECT NIF, Nome 'nome ', Data 'data de nascimento' FROM Pessoa 
WHERE Data >= '1980-01-01'
 ORDER BY Data ASC;
