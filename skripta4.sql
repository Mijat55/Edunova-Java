
drop database if exists nogomet;
create database nogomet;
use nogomet;

create table liga(
    sifra int not null primary key,
    naziv varchar(20)
    
);

create table tim(
    sifra int not null primary key,
    naziv varchar(20),
    stadion int,
    maksimalanbrojnavijaca decimal(18,2),
    utakmica int,
    liga int
);

create table utakmica(
    sifra int not null primary key,
    maksimalnovrijemetrajanja decimal(18,2),
    vrijemepocetka datetime,
    vrijeme varchar(10),
    maksimalanbrojigraca int

);

create table igrac(
    sifra int not null primary key,
    ime varchar(10),
    prezime varchar (15),
    datumrodjenja datetime,
    oib varchar(11),
    maksimalanbrojminutaigranja decimal(18,2),
    tim int,
    trener int
);

create table trener(
    sifra int not null primary key,
    ime varchar(10),
    prezime varchar(15),
    oib varchar(11),
    licenca boolean,
    tim int
);

create table pozicija(
    naziv varchar(20),
    primarnanoga varchar(10),
    igrac int
);

alter table tim add foreign key (liga) references liga(sifra);
alter table igrac add foreign key (tim) references tim(sifra);
alter table pozicija add foreign key (igrac) references igrac(sifra);
alter table igrac add foreign key (trener) references trener(sifra);
alter table tim add foreign key (utakmica) references utakmica(sifra);


# inicijalni podaci
# najlošija
# 1 - ovo je šifra smjera koju dodjeli server
insert into smjer
values (null,'Java programiranje',5999.99,
500,true);

# malo bolja varijanta
# 2
insert into smjer (sifra,naziv)
values (null,'PHP programiranje');

# primjer dobre prakse - navesti sve kolone koje unosiš
# 3
insert into smjer
(sifra,naziv,cijena,upisnina,certificiran)
values
(null,'Serviser',null,null,null);

# 1
insert into grupa (naziv,sifra,maksimalnopolaznika,
datumpocetka, smjer,predavac)
values ('JP27',null,20,'2022-11-07',1,null);

# 2
insert into grupa(naziv,maksimalnopolaznika,smjer, datumpocetka)
values ('PP26',20,2,'2022-11-07 19:00:00');


# 1 - 14
insert into osoba(ime,prezime,email)
values
('Kristijan','Ratković','ratkovic.kristijan@gmail.com'),
('Kristijan','Vidaković','kristijan.vidakovic111@gmail.com'),
('Isidora','Karan','karanisidora@hotmail.com'),
('Martina','Novoselac','novoselac.martina@gmail.com'),
('Lorena','Čiček','cicek.lorena@gmail.com'),
('Marko','Mijatović','mijat5555@gmail.com'),
('Marko','Perak','markoperak469@gmail.com'),
('Lovre','Burazer-Pavešković','lburazer8@gmail.com'),
('Krunoslav','Kasalo','kkruno25@msn.com'),
('Karlo','Odobašić','karloodobasic26@gmail.com'),
('Karlo','Kapl','kaplkarlo0@gmail.com'),
('Ivan','Dubravac','ivandubravac99@gmail.com'),
('Mario','Živković','mario.zivkovic.znr@gmail.com'),
('Toni','Stojčević','stojcevict@gmail.com');



# 1 - 14
insert into polaznik (osoba) values
(1),(2),(3),(4),(5),(6),(7),(8),(9),
(10),(11),(12),(13),(14);


# 15
insert into osoba (ime,prezime,email)
values ('Tomislav','Jakopec',
'tjakopec@gmail.com');


# 1 
insert into predavac(osoba)
values (15);



insert into clan (grupa,polaznik)
values
(1,1),(1,2),(1,3),(1,4),(1,5),
(1,6),(1,7),(1,8),(1,9),(1,10),
(1,11),(1,12),(1,13),(1,14);