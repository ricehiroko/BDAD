
.mode columns
.headers on
.nullvalue NULL
SELECT Nome, NIFMedico, Count(*) as numeroPrescricoes FROM Receita, Pessoa, Prescricao, Medicamento, PrincipioAtivo
WHERE (NIFMedico = NIF 
	AND NumeroReceita = NumeroReceitaPrescricao AND CodigoMedicamentoPrescricao = CodigoMedicamento AND IDFormulaQuimica = ID AND FormulaQuimica = 'C23H27FN4O3')
GROUP BY NIFMedico
ORDER BY numeroPrescricoes DESC
LIMIT 1;