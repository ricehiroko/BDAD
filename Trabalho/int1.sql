.mode columns
.headers on
.nullvalue NULL
SELECT Codigo, Nome 'nome            ', QuantidadeStock 'Quantidade em Stock' FROM Produto
 GROUP BY Codigo
 ORDER BY QuantidadeStock DESC;
