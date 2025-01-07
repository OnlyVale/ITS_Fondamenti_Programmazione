use fondamenti;

-- SELECT * from corsi;

/*INSERT INTO corsi (nome_Corso) VALUES ('Approfondimenti didattici e Orientamento'),
('Analisi di Serie Temporali (R Framework)'),
('Big Data'),
('Cloud Computing'),
('Copyright e norme giuridiche del mondo digitale'),
('Data Analysis e Visualization'),
('Data Engineering e Mining'),
('Data Wrangling e Pulizia dei Dati'),
('Deep Learning e NPL'),
('Design Thinking 4.0'),
('Etica dei Dati e Privacy'),
('Fondamenti di basi di dati'),
('Fondamenti di programmazione'),
('Inglese'),
('Introduzione al Calcolo Scientifico'),
('Introduzione alla Data Science'),
('Laboratorio di preparazione project work'),
('Learning by Project - Soft Skill'),
('Learning by Project - Tech'),
('Machine Learning - Supervised e Unsupervised'),
('Matematica e Statistica'),
('Fondamenti AGILE'),
('Orientamento al lavoro'),
('Parità fra uomini e donne e non discriminazione'),
('Percorso di sviluppo soft skills'),
('Programmazione - Python'),
('Sicurezza sul lavoro'),
('Strumenti AI e Prompt Engineerin')
;*/

-- SELECT id FROM corsi WHERE nome_Corso LIKE 'Dat%' ORDER BY nome_Corso;

-- SELECT * FROM corsi;

/*
CREATE TABLE studenti(
	id int AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    cognome VARCHAR(64) NOT NULL,
	data_nascita DATE,
    email VARCHAR(64) UNIQUE
);
*/

/*
INSERT INTO studenti (email, nome, cognome, data_nascita) VALUES ('Simone.torrengo@edu-its.it','simone','torrengo','2000-05-12'),
('leonardo.millefiori@edu-its.it','Leonardo','Millefiori','2004-05-23'),
('abedsoona63@gmail.com','Abdollah','Abdi','1996-04-09'),
('kappasalah03@gmail.com','Karim','Salah','2003-01-29'),
('simone.augello@edu-its.it','Simone','Augello','2004-02-16'),
('guglielmo.sanna@edu.its.it','Guglielmo','Sanna','2005-12-12'),
('bugman3652@gmail.com','Francesco','Di Stefano','1999-01-26'),
('ivan.busini@edu-its.it','ivan','busini','1986-08-09'),
('manuel.rubino@edu-its.it','Manuel','Rubino','2003-12-10'),
('bonannilorenzo25@gmail.com','Lorenzo','Bonanni','2005-05-25'),
('isacco.pironaro@edu-its.it','isacco','pironato','2000-05-17'),
('marinaccimassi@gmail.com','Massimiliano','Marinacci','2004-08-10'),
('alessandro.dastolfo01@gmail.com','Alessandro','D\'Astolfo','2001-09-08'),
('lorenzo.passuello@edu-its.it','Lorenzo','Passuello','2002-10-24'),
('mariogiunipero1@gmail.com','mario','giunipero','2003-07-31'),
('valentin.roby2017@gmail.com','Robert Valentin','Pahontu','2005-02-14'),
('irene.vallan@edu-its.it','irene','vallan','1999-06-01'),
('francesco.mazzarella@edu-its.it','Francesco Lorenzo','Mazzarella','2003-08-11'),
('frascuderi05@gmail.com','Francesco','Scuderi','2005-01-23'),
('elisa.scantamburlo@edu-its.it','elisa','scantamburlo','2000-04-25'),
('francesco.castiglione@edu-its.it','Francesco','Castiglione','2005-04-16'),
('cristian.amateis@edu-its.it','Cristian','Amateis','2004-06-12'),
('andrea.gibellli@edu-its.it','Andrea','Gibelli','2005-02-24'),
('lorenzspina5@gmail.com','Lorenzo','Spina','2005-08-10'),
('cesanu1997@gmail.com','Cosmin','Esanu','1997-10-07'),
('fabrizio.gosso@edu-its.it','Fabrizio','Gosso','1998-08-09'),
('edoardo.cascio@edu-its.it','Edoardo','Cascio','2002-09-29'),
('edoardo.sicuro@edu-its.it','edoardo franco','sicuro','2004-04-30'),
('vinaualex05@gmail.com','Alexandru','Vinau','2005-05-27'),
('lucacorti440@gmail.com','Luca','Caglioti','2005-10-10');
*/

/*
SELECT * FROM studenti;

select nome,cognome from studenti order by nome; -- ordinamento studenti per nome 

select nome,cognome from studenti order by cognome, nome; -- ordinamento studenti per cognome e poi per nome 

select nome,cognome,'ITS-2025-DAI' from studenti order by cognome, nome; -- si possono aggiungere persino stringhe

select nome,cognome,'ITS-2025-DAI' as corso, (18+4) as voto from studenti order by cognome, nome; -- si possono assegnare nom delle colonne e aggiungere calcoli

select nome from studenti order by data_nascita;
*/

/*
show grants for current_user;

show tables;

desc studenti;
*/
/*
create table automobili(
id int auto_increment primary key,
marca varchar(64),
modello varchar(64),
cilindrata int,
posti int,
prezzo decimal(10,2)
);
*/
/*
Insert into automobili (marca, modello, cilindrata, posti, prezzo) values ('Fiat', 'Panda', 1200, 5, 13000.00),
('Ford', 'Focus', 1500, 5, 20000.00),
('Volkswagen', 'Golf', 1600, 5, 25000.00),
('Toyota', 'Yaris', 1000, 5, 15000.00),
('BMW', 'Serie 3', 2000, 5, 35000.00),
('Mercedes', 'Classe A', 1800, 5, 33000.00),
('Audi', 'A4', 2000, 5, 36000.00),
('Renault', 'Clio', 1200, 5, 14000.00),
('Peugeot', '208', 1300, 5, 16000.00),
('Kia', 'Sportage', 1700, 5, 27000.00),
('Hyundai', 'Tucson', 1800, 5, 28000.00),
('Jeep', 'Renegade', 1400, 5, 22000.00),
('Honda', 'Civic', 1500, 5, 24000.00),
('Nissan', 'Qashqai', 1600, 5, 26000.00),
('Mazda', 'CX-5', 2000, 5, 32000.00),
('Volvo', 'XC40', 2000, 5, 40000.00),
('Tesla', 'Model 3', 0, 5, 45000.00),
('Chevrolet', 'Spark', 1200, 4, 11000.00),
('Suzuki', 'Swift', 1300, 5, 14000.00),
('Subaru', 'Outback', 2500, 5, 35000.00);
*/
/*
Insert into automobili (marca, modello, cilindrata, posti, prezzo) values ('Fiat', 'Tipo', 1400, 5, 18000.00),
('Ford', 'Kuga', 2000, 5, 30000.00),
('Volkswagen', 'Passat', 2000, 5, 35000.00),
('Toyota', 'Corolla', 1500, 5, 20000.00),
('BMW', 'Serie 1', 1500, 5, 28000.00),
('Mercedes', 'GLA', 2000, 5, 38000.00),
('Audi', 'Q3', 1600, 5, 34000.00),
('Renault', 'Captur', 1300, 5, 21000.00),
('Peugeot', '3008', 1600, 5, 29000.00),
('Kia', 'Ceed', 1500, 5, 20000.00),
('Hyundai', 'i20', 1200, 5, 15000.00),
('Jeep', 'Compass', 1600, 5, 30000.00),
('Honda', 'HR-V', 1800, 5, 26000.00),
('Nissan', 'X-Trail', 2000, 5, 33000.00),
('Mazda', 'Mazda3', 1500, 5, 23000.00),
('Volvo', 'XC60', 2400, 5, 50000.00),
('Tesla', 'Model Y', 0, 5, 55000.00),
('Chevrolet', 'Trax', 1400, 5, 17000.00),
('Suzuki', 'Vitara', 1600, 5, 20000.00),
('Subaru', 'Forester', 2000, 5, 34000.00);
*/

-- selezionare tutte le auto nella tabella:
select * from automobili;

-- visualizzare solo marca modello e prezzo di tutte le automobili:
select marca, modello, prezzo from automobili;

-- trovare tutte le auto con prezzo inferiore a 20.000 euro:
select * from automobili where prezzo < 20000.00;

-- selezionare le auto con 5 posti:
select * from automobili where posti = 5;

-- ordinare le auto in base al prezzo in ordine decrescente:
select * from automobili order by prezzo desc;

-- calcolare la media del prezzo delle auto
select avg(prezzo) as media_prezzo from automobili;

-- contare quante auto hanno una cilindrata superiore a 1600cc
select count(*) as auto_cilindrata_superiore_1600 from automobili where cilindrata > 1600;

-- elencare tutte le marche presenti nella tabella senza duplicati
select distinct marca from automobili;

-- trovare la marca e il modello dell'auto piu costosa
select marca, modello from automobili ORDER BY prezzo desc limit 1;

-- trovare tutte le auto con un prezzo tra 20.000 e 30.000 euro
select * from automobili where prezzo between 20000.00 and 30000.00 order by prezzo;