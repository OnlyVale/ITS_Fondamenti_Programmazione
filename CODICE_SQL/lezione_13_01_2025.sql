use world;

describe city;

select * from city;

select Name, Continent, Population from country;

select Name, Continent, Population from country where Population > 100000000 or Continent = 'Asia' order by Population desc;

-- selezionare tutto dalla tabella automobili;
select * from automobili;	

-- selezionare marca, modello e prezzo dalla tabella automobili;
select marca, modello, prezzo from automobili;

-- selezionare tutte le automobili con prezzo inferiore a 20000;
select * from automobili where prezzo < 20000;

-- selezionare tutte le automobili con 5 posti;
select * from automobili where posti = 5;

-- ordinare tutte le automobili per prezzo decrescente;
select * from automobili order by prezzo desc;

-- selezionare la media dei prezzi di tutte le automobili;
select avg(prezzo) from automobili;

-- contare tutte le automobili con una cilindrata maggiore di 1600;
select count(*) from automobili where cilindrata >= 1600;

-- selezionare univocamente tutte le marche delle automobili esistenti;
select distinct(marca) from automobili order by marca;

-- selezionare marca e modello della maccchina con il prezzo maggiore;
select marca, modello, '22%' as IVA from automobili order by prezzo desc limit 1;

-- selezionare tutte le automobili con un prezzo compreso tra 20000 e 30000;
select * from automobili where prezzo between 20000 and 30000;

-- seleziona tutte le automobili le quali marche non sono Fiat o Tesla;
select * from automobili where marca not in ('Fiat','Tesla');

-- seleziona tutte le automobili alle quali la marca inzia per F;
select * from automobili where marca LIKE 'F%';

-- seleziona tutte le automobili le cui marche sono composte da 3 caratteri ( _ equivale ad un carattere);
select * from automobili where marca like '___';

-- selezionare da una tabella di un'altro database non selezionato tutti i campi dove i record di una colonna sono nulli;
select * from world.country where IndepYear is null;

-- selezionare tutte le atomobili le cui marche finiscono con DA
select * from automobili where marca regexp 'DA$'; 