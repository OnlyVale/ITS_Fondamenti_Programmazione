# Esercizi DDL



/*1. Creazione della tabella "prodotti":
Crea una tabella chiamata `prodotti` con i seguenti campi:  

- `id`: intero, chiave primaria.  
- `nome`: stringa con lunghezza massima di 50 caratteri.  
- `prezzo`: decimale con precisione 6,2.  
- `quantita`: intero (il valore massimo non supera 100).  

Scrivere l'istruzione SQL.*/

--
Create table prodotti(
	id int primary key,
    nome varchar(50),
    prezzo decimal(6,2),
    quantita int check(quantita <= 100)
);

/*2. Modifica della tabella "prodotti":
Aggiungi un nuovo campo chiamato `descrizione` di tipo testo alla tabella `prodotti`.  
Il nuovo campo deve essere aggiunto dopo il campo `nome`.  

Scrivere l'istruzione SQL.*/

--
alter table prodotti add descrizione text;

/*3. Creazione della tabella "ordini":
Crea una tabella chiamata `ordini` con i seguenti campi:  

- `id`: intero, chiave primaria.  
- `data_ordine`: data.  
- `totale`: decimale con precisione 10,2.  
- `id_cliente`: intero.  

Scrivere l'istruzione SQL.*/

--
create table ordini(
	id int primary key,
    data_ordine date,
    totale decimal(10,2),
    id_cliente int
);

/*4. Creazione della tabella "clienti":* 
Crea una tabella chiamata `clienti` con i seguenti campi:  

- `id`: intero, chiave primaria.  
- `nome`: stringa con lunghezza massima di 30 caratteri.  
- `cognome`: stringa con lunghezza massima di 30 caratteri.  
- `email`: stringa con lunghezza massima di 100 caratteri.  
- `provincia`: stringa con lunghezza di 2 caratteri.  

Scrivere l'istruzione SQL.*/

--
create table clienti(
	id int primary key,
    nome varchar(30) check(nome <= 30),
    cognome varchar(30) check(cognome <= 30),
    email varchar(100) check(email <= 100),
    provincia char(2)
);

/*5. Modifica della tabella "clienti":

- Cambia la lunghezza massima del campo `cognome` da 30 a 50 caratteri.  
- Aggiungi un nuovo campo chiamato `telefono` di tipo stringa con lunghezza massima di 20 caratteri, posizionandolo dopo il campo `cognome`.  

Scrivere un'unica istruzione SQL.*/

--
alter table clienti modify column cognome varchar(50);

/*6. Creazione delle tabelle "americhe", "europa" e "africa": 
Crea tre tabelle chiamate `americhe`, `europa` e `africa`.  
Ogni tabella deve avere i seguenti campi:  

- `id`: intero, chiave primaria.  
- `stato`: stringa con lunghezza massima di 50 caratteri.  
- `capitale`: stringa con lunghezza massima di 50 caratteri.  

Scrivere le istruzioni SQL per le tre tabelle.*/

--
create table americhe(
	id int primary key,
    stato varchar(50),
	capitale varchar(50)
);

create table europa like americhe;
create table africa like europa;



/*7. Creazione della tabella "libro":
Crea una tabella chiamata `libro` con i seguenti campi:  

- `id`: intero, chiave primaria.  
- `titolo`: stringa con lunghezza massima di 100 caratteri.  
- `prezzo`: decimale con precisione 6,2.  
- `pagine`: intero.  
- `id_editore`: intero.  

Scrivere l'istruzione SQL.*/

--
create table libro(
	id int primary key,
    titolo varchar(100) check(titolo <= 100),
    prezzo decimal(6,2),
    pagine int,
    id_editore int
);

/*8. Rinomina della tabella "clienti": 
Rinomina la tabella `clienti` con il nuovo nome `customers`.  

Scrivere l'istruzione SQL.*/

--
alter table clienti rename to customers;
