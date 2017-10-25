CREATE TRIGGER IF NOT EXISTS Lote_ExpiradeValidade
BEFORE INSERT ON Lote
WHEN ((SELECT Date('now')) > new.PrazoValidade)
BEGIN
SELECT RAISE(ABORT,'Prazo de Validade do Lote Expira Hoje ou ja Expirou');
END;

