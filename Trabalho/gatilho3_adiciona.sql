CREATE TRIGGER IF NOT EXISTS Check_IDEspecialidade 
BEFORE INSERT ON Especialidade
WHEN (new.ID < 0)
BEGIN
SELECT RAISE(ABORT,'O ID da Especialidade tem de ser um valor positivo');
END;
