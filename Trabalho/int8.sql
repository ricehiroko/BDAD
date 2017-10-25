.mode columns
.headers on
.nullvalue NULL
SELECT NumeroLote, PrazoValidade FROM Lote
WHERE (PrazoValidade < Date('now'));