
CREATE TRIGGER IF NOT EXISTS Funcionario_insert 
BEFORE INSERT ON Funcionario
WHEN (new.NIFFuncionario IN (SELECT NIFMedico FROM Medico))
BEGIN
SELECT RAISE(ABORT,'Um funcionario nao pode ser um Medico');
END;

