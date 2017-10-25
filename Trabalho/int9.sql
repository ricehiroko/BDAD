.mode columns
.headers on
.nullvalue NULL
SELECT DataVenda, Count(*) as numVendasDia From Venda, Transacao
WHERE (NumeroFaturaVenda = NumeroFaturaTransacao AND CodigoProdutoTransacao = (SELECT Codigo FROM Produto WHERE(Nome = 'Ben-U-ron')))
GROUP BY DataVenda
ORDER BY DataVenda;
