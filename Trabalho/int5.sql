
.mode columns
.headers on
.nullvalue NULL
SELECT ID, NomeLaboratorio, COUNT(*) as numVendas From Medicamento, Produto, Transacao, Laboratorio
WHERE (CodigoMedicamento = Codigo AND CodigoMedicamento = CodigoProdutoTransacao AND IDLaboratorio = ID)
GROUP BY Nome
ORDER BY numVendas DESC;