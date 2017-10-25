PRAGMA foreign_keys=ON;

INSERT INTO "Pessoa" VALUES (12345, 'João', 'Rua da Alegria, 35', '4000-037', 931111111,'1982-05-23','Porto');
INSERT INTO "Pessoa" VALUES (12346, 'André', 'Rua Eugénio de Castro, 270 hab 104', '4100-225', 918921333,'1987-02-02','Lamego');
INSERT INTO "Pessoa" VALUES (12347, 'Fernando', 'Rua da Boavista, 345', '4050-040', 934444444,'1965-09-16','Vila Real');

INSERT INTO "Pessoa" VALUES (12348, 'Ana', 'Rua da Alegria, 35', '4000-037', 932222222,'1985-06-19','Régua');
INSERT INTO "Pessoa" VALUES (12349, 'Margarida', 'Rua da Alegria, 35', '4000-037', 935555555,'1981-12-11','Lamego');
INSERT INTO "Pessoa" VALUES (12350, 'Ricardo', 'Rua da Alegria, 35', '4000-037', 938888888,'1989-03-28','Porto');

INSERT INTO "Pessoa" VALUES (12351, 'Alberto', 'Rua de Francos, 46', '4250-192', 913816384,'1964-05-04','Porto');
INSERT INTO "Pessoa" VALUES (12352, 'Maria', 'Rua de Pedro Hispano, 260', '4100-461', 912527953,'1949-04-12','Lamego');
INSERT INTO "Pessoa" VALUES (12353, 'Matilde', 'Rua de António Enes, 192', '4250-048', 912424531,'1990-03-09','Régua');
INSERT INTO "Pessoa" VALUES (12354, 'Madalena', 'Rua do Monte Alegre, 158', '4250-028', 912520535,'1987-10-21','Porto');
INSERT INTO "Pessoa" VALUES (12355, 'Luisa', 'Rua do Zambeze,412', '4250-505', 961258457,'1987-02-26','Vila Real');
INSERT INTO "Pessoa" VALUES (12356, 'Eduardo', 'Rua da Graciosa, 57', '4050-446', 933048203,'1976-06-30','Porto');
INSERT INTO "Pessoa" VALUES (12357, 'Nuno', 'Rua de Paula Vicente, 121', '4050-425', 919274027,'1969-11-12','Porto');
INSERT INTO "Pessoa" VALUES (12358, 'José', 'Rua do Dr. Carlos Cal Brandão, 48', '4050-115', 961839103,'1943-07-29','Lamego');
INSERT INTO "Pessoa" VALUES (12359, 'Joaquim', 'Rua Dom António Barroso, 225', '4050-060', 938173927,'1977-01-18','Régua');

INSERT INTO "Pessoa" VALUES (12360, 'Tiago', 'Av. do Bessa, 619', '4100-012', 934729462,'1970-10-22','Lamego');


INSERT INTO "Funcionario" VALUES (12345, 'Farmaceutico','9:00- 18:00');
INSERT INTO "Funcionario" VALUES (12348, 'Farmaceutica','9:00- 18:00');
INSERT INTO "Funcionario" VALUES (12349, 'Farmaceutica','9:00- 18:00');
INSERT INTO "Funcionario" VALUES (12350, 'Farmaceutico','9:00- 18:00');


INSERT INTO "Cliente" VALUES (12346, 	1, 2345);
INSERT INTO "Cliente" VALUES (12351, 	2, 7421);
INSERT INTO "Cliente" VALUES (12352, 	3, 1565);
INSERT INTO "Cliente" VALUES (12353, 	4, 3425);
INSERT INTO "Cliente" VALUES (12354, 	5, 894);
INSERT INTO "Cliente" VALUES (12355, 	6, 5282);
INSERT INTO "Cliente" VALUES (12356, 	7, 4132);
INSERT INTO "Cliente" VALUES (12357, 	8, 3234);
INSERT INTO "Cliente" VALUES (12358, 	9, 4221);
INSERT INTO "Cliente" VALUES (12359, 	10, 8432);



INSERT INTO "Venda" VALUES (1, 	'2017-04-01',	'Multibanco',	1,	5, 12346,12345);
INSERT INTO "Venda" VALUES (2, 	'2017-04-01',	'Dinheiro',	0,	7, 12351,12348);
INSERT INTO "Venda" VALUES (3, 	'2017-04-01',	'Multibanco',	0,	8.8, 12352,12349);
INSERT INTO "Venda" VALUES (4, 	'2017-04-01',	'Multibanco',	0,	7.5, 12354,12345);
INSERT INTO "Venda" VALUES (5, 	'2017-04-01',	'Dinheiro',	1,	7.5, 12356,12350);
INSERT INTO "Venda" VALUES (6, 	'2017-04-01',	'Dinheiro',	0,	8.8, 12359,12349);
INSERT INTO "Venda" VALUES (7, 	'2017-04-01',	'Multibanco',	1,	25, 12359,12345);
INSERT INTO "Venda" VALUES (8, 	'2017-04-01',	'Dinheiro',	1,	25, 12353,12348);
INSERT INTO "Venda" VALUES (9, 	'2017-04-01',	'Multibanco',	0,	7, 12355,12350);
INSERT INTO "Venda" VALUES (10,	'2017-04-02',	'Dinheiro',	0,	7, 12357,12349);
INSERT INTO "Venda" VALUES (11, 	'2017-04-02',	'Multibanco',	1,	5, 12351,12348);
INSERT INTO "Venda" VALUES (12, 	'2017-04-02',	'Dinheiro',	0,	8.8, 12346,12345);
INSERT INTO "Venda" VALUES (13, 	'2017-04-03',	'Multibanco',	0,	7.5, 12354,12345);
INSERT INTO "Venda" VALUES (14, 	'2017-04-03',	'Multibanco',	0,	25, 12356,12350);
INSERT INTO "Venda" VALUES (15, 	'2017-04-03',	'Dinheiro',	1,	25, 12359,12349);
INSERT INTO "Venda" VALUES (16, 	'2017-04-03',	'Dinheiro',	0,	8.8, 12358,12349);
INSERT INTO "Venda" VALUES (17, 	'2017-04-04',	'Multibanco',	1,	7.5, 12352,12348);
INSERT INTO "Venda" VALUES (18, 	'2017-04-04',	'Dinheiro',	1,	5, 12355,12345);
INSERT INTO "Venda" VALUES (19, 	'2017-04-04',	'Multibanco',	0,	7, 12346,12348);
INSERT INTO "Venda" VALUES (20,	'2017-04-04',	'Dinheiro',	0,	7, 12357,12350);

INSERT INTO "Encomenda" VALUES (1,20,'2017-03-21',100, 12350);
INSERT INTO "Encomenda" VALUES (2,8,'2017-03-21',100, 12349);
INSERT INTO "Encomenda" VALUES (3,14,'2017-03-22',100, 12345);
INSERT INTO "Encomenda" VALUES (4,18,'2017-03-23',100, 12348);
INSERT INTO "Encomenda" VALUES (5,10,'2017-03-24',100, 12348);
INSERT INTO "Encomenda" VALUES (6,25,'2017-03-27',100, 12345);
INSERT INTO "Encomenda" VALUES (7,10,'2017-03-30',100, 12348);


INSERT INTO "Lote" VALUES (1,'2017-05-22', 1);
INSERT INTO "Lote" VALUES (2,'2017-07-15', 1);
INSERT INTO "Lote" VALUES (3,'2017-05-30', 3);
INSERT INTO "Lote" VALUES (4,'2017-08-3', 4);
INSERT INTO "Lote" VALUES (5,'2017-09-28', 5);
INSERT INTO "Lote" VALUES (6,'2017-06-01', 6);
INSERT INTO "Lote" VALUES (7,'2017-07-21', 7);


INSERT INTO "Produto" VALUES (1, 'Anafranil',5,1,1);
INSERT INTO "Produto" VALUES (2, 'Ben-U-ron',7,10,2);
INSERT INTO "Produto" VALUES (3, 'Clonix',8.80,10,3);
INSERT INTO "Produto" VALUES (4, 'Preservativos',7.50,10,4);
INSERT INTO "Produto" VALUES (5, 'Luvas de Latéx',7.50,10,5);
INSERT INTO "Produto" VALUES (6, 'Invega',25,7,6);


INSERT INTO "PrincipioAtivo" VALUES (1,'C19H23CIN2','Nao tomar quem tiver problemas de fígado','25mg');
INSERT INTO "PrincipioAtivo" VALUES (2,'C8H9NO2','Nao tomar quem tiver problemas de fígado ou alcoolismo','1 g');
INSERT INTO "PrincipioAtivo" VALUES (3,'C13H11CIN2O2','Ter cuidado quando tomado com outros medicamentos','300mg');
INSERT INTO "PrincipioAtivo" VALUES (4,'C23H27FN4O3','Ter cuidado quando tomado com outros medicamentos','250mg');


INSERT INTO "Laboratorio" VALUES (1,'Sigma-tau');
INSERT INTO "Laboratorio" VALUES (2,'bene farmacêutica');
INSERT INTO "Laboratorio" VALUES (3,'LusoMedicamenta');
INSERT INTO "Laboratorio" VALUES (4,'Janssen');


INSERT INTO "Medicamento" VALUES (1,60,'25 mg','Clomipramina',1,1,1);
INSERT INTO "Medicamento" VALUES (2,18,'1 g','Paracetamol',0,2,2);
INSERT INTO "Medicamento" VALUES (3,20,'300 mg','Clonixina',1,3,3);
INSERT INTO "Medicamento" VALUES (6,18,'250 mg','Paliperidona',1,4,4);


INSERT INTO "Especialidade" VALUES(1,"Psiquiatria");
INSERT INTO "Especialidade" VALUES(2,"Medicina Interna");


INSERT INTO "Medico" VALUES (12347, 987,1);
INSERT INTO "Medico" VALUES (12360, 988,2);

INSERT INTO "Receita" VALUES (3756, 	12347,	12346);
INSERT INTO "Receita" VALUES (3757, 	12360,	12355);
INSERT INTO "Receita" VALUES (3758, 	12347,	12356);
INSERT INTO "Receita" VALUES (3759, 	12360,	12354);
INSERT INTO "Receita" VALUES (3760, 	12347,	12346);
INSERT INTO "Receita" VALUES (3761, 	12360,	12355);


INSERT INTO "Transacao" VALUES (1,1);
INSERT INTO "Transacao" VALUES (2,2);
INSERT INTO "Transacao" VALUES (3,3);
INSERT INTO "Transacao" VALUES (1,4);
INSERT INTO "Transacao" VALUES (6,5);
INSERT INTO "Transacao" VALUES (4,6);
INSERT INTO "Transacao" VALUES (5,7);
INSERT INTO "Transacao" VALUES (2,8);
INSERT INTO "Transacao" VALUES (6,9);
INSERT INTO "Transacao" VALUES (3,10);
INSERT INTO "Transacao" VALUES (3,11);
INSERT INTO "Transacao" VALUES (2,12);
INSERT INTO "Transacao" VALUES (4,13);
INSERT INTO "Transacao" VALUES (1,14);
INSERT INTO "Transacao" VALUES (6,15);
INSERT INTO "Transacao" VALUES (5,16);
INSERT INTO "Transacao" VALUES (3,17);
INSERT INTO "Transacao" VALUES (2,18);
INSERT INTO "Transacao" VALUES (1,19);
INSERT INTO "Transacao" VALUES (5,20);


INSERT INTO "Prescricao" VALUES (1,3756,	'2/dia',	2);
INSERT INTO "Prescricao" VALUES (6,3757,	'1/dia',	2);
INSERT INTO "Prescricao" VALUES (3,3758,	'2/dia',	2);
INSERT INTO "Prescricao" VALUES (6,3759,	'1/dia',	2);
INSERT INTO "Prescricao" VALUES (6,3760,	'1/dia',	2);
INSERT INTO "Prescricao" VALUES (6,3761,	'1/dia',	2);

