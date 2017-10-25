.mode columns
.headers on
.nullvalue NULL
select avg(DATE('now') - Data) 'Media Idades' from Cliente, Pessoa
WHERE(NIFCliente = NIF);
