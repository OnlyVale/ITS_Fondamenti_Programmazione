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

alter table studenti add nomignolo varchar(64); -- aggiunta di una colonna nella tabella studenti.

select * from corsi;

alter table corsi add ore int; -- aggiunta di una colonna nella tabella corsi.

create table corsi_2 like corsi; -- crea una tabella identica a corsi.

insert into corsi_2(nome_Corso) select nome_Corso from corsi; --ricopia i record della colonna nome_Corso da una tabella all'altra

select * from corsi_2;

truncate corsi; -- elimina tutti i record ma resetta tutti i contatori come per esmpio gli id ( quindi avere sempre una copia della tabella).

insert into corsi(nome_Corso) select nome_Corso from corsi_2;


update corsi set id = id - 100 where id > 0;
update corsi set id = id + 100 where id > 0; -- altri metodi per modificare ( resettare ) l'id però questo metodo puo essere anche utilizzato per effettuare operazioni sui dati all'interno della tabella.

desc corsi; -- ti descrive tutti i dettagli di una tabella.