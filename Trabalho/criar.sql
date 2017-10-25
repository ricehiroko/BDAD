DROP TABLE IF EXISTS Pessoa;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Receita;
DROP TABLE IF EXISTS Produto;
DROP TABLE IF EXISTS Medicamento;
DROP TABLE IF EXISTS Venda;
DROP TABLE IF EXISTS Encomenda;
DROP TABLE IF EXISTS Medico;
DROP TABLE IF EXISTS Lote;
DROP TABLE IF EXISTS PrincipioAtivo;
DROP TABLE IF EXISTS Prescricao;
DROP TABLE IF EXISTS Laboratorio;
DROP TABLE IF EXISTS Transacao;
DROP TABLE IF EXISTS Prescricao;
DROP TABLE IF EXISTS Especialidade;


CREATE TABLE Pessoa(
NIF INTEGER PRIMARY KEY,
Nome Text Unique Not Null,
Morada Text Not Null,
Codigo Postal VARCHAR(8) Not Null,
Telemovel INT,
Data Nascimento Date Not Null,
Localidade Text Not Null);

CREATE TABLE Funcionario(
NIFFuncionario INTEGER PRIMARY KEY REFERENCES Pessoa,
Cargo Text not null,
Horario Text);

CREATE TABLE Cliente(
NIFCliente INTEGER PRIMARY KEY REFERENCES Pessoa,
NumeroCliente INTEGER Unique not null Check(NumeroCliente > 0),
NumeroSaude INTEGER Unique Check(NumeroSaude > 0));

CREATE TABLE Venda(
NumeroFaturaVenda INTEGER PRIMARY KEY Check(NumeroFaturaVenda > 0),
DataVenda Text not null,
TipoPagamento VARCHAR(10) not null,
Comparticipacao INTEGER Check(Comparticipacao == 0 || Comparticipacao == 1),
PrecoTotal Float not null check(PrecoTotal > 0),
NIFCliente INTEGER REFERENCES Cliente Not Null,
NIFFuncionario INTEGER REFERENCES Funcionario Not Null);

CREATE TABLE Produto(
Codigo INTEGER PRIMARY KEY check(Codigo > 0),
Nome Text not null,
PrecoVenda Float not null check(PrecoVenda > 0),
QuantidadeStock integer not null check(QuantidadeStock >= 0),
NumeroLote INTEGER References Lote Not Null);

CREATE TABLE Medicamento(
CodigoMedicamento INTEGER PRIMARY KEY REFERENCES Produto,
QuantidadeEmbalagem INTEGER Not Null Check(QuantidadeEmbalagem > 0),
Dosagem Text Not Null,
TipoFormula TEXT Not Null,
SujeitoReceita INTEGER check(SujeitoReceita == 0 || SujeitoReceita == 1),
IDFormulaQuimica INTEGER Not Null References PrincipioAtivo,
IDLaboratorio INTEGER References Laboratorio);


CREATE TABLE Lote(
NumeroLote INTEGER PRIMARY KEY Check(NumeroLote > 0),
PrazoValidade Text Not Null,
NumeroFaturaEncomenda Text Not Null References Encomenda);

CREATE TABLE Encomenda(
NumeroFaturaEncomenda INTEGER PRIMARY KEY Check(NumeroFaturaEncomenda > 0),
Quantidade INTEGER Not Null Check(Quantidade > 0),
DataChegada Text Not Null,
PrecoCompra Float Not Null Check(PrecoCompra > 0),
NIFFuncionario INTEGER References Funcionario Not Null);

CREATE TABLE Receita(
NumeroReceita INTEGER PRIMARY KEY Check(NumeroReceita > 0),
NIFMedico Text References Medico Not Null,
NIFCliente INTEGER REFERENCES Cliente Not Null);

CREATE TABLE Laboratorio(
ID INTEGER PRIMARY KEY,
NomeLaboratorio Text Unique Not Null);

CREATE TABLE PrincipioAtivo(
ID INTEGER PRIMARY KEY,
FormulaQuimica Text Unique,
ContraIndicacoes Text Not Null,
Dose Text Not Null);

CREATE TABLE Medico(
NIFMedico INTEGER PRIMARY KEY References Pessoa,
CedulaProfissional INTEGER Unique Not Null Check(CedulaProfissional > 0),
IDEspecialidade INTEGER Not Null References Especialidade);

CREATE TABLE Especialidade(
ID INTEGER PRIMARY KEY,
Nome Text Unique Not Null);

CREATE TABLE Transacao(
CodigoProdutoTransacao INTEGER REFERENCES Produto Not Null,
NumeroFaturaTransacao INTEGER REFERENCES Venda Not Null,
PRIMARY KEY(CodigoProdutoTransacao,NumeroFaturaTransacao));

CREATE TABLE Prescricao(
CodigoMedicamentoPrescricao INTEGER References Medicamento Not Null,
NumeroReceitaPrescricao INTEGER REFERENCES Receita Not Null,
Posologia Text Not Null,
NumeroEmbalagens INTEGER Not Null Check(NumeroEmbalagens > 0),
PRIMARY KEY(CodigoMedicamentoPrescricao ,NumeroReceitaPrescricao ));
