.mode columns
.headers on
.nullvalue NULL

SELECT Nome, Codigo, Count(*) as numeroVendas FROM Produto, Transacao
WHERE (Codigo = CodigoProdutoTransacao)
GROUP BY Codigo
ORDER BY numeroVendas DESC
LIMIT 3;
