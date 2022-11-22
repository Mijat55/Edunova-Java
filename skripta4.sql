
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

# najlosija 1
insert  into liga 
values (null,'Premier Liga');

# malo bolja
insert into liga (sifra,naziv)
values (null,'Seria A');

# najbolja
insert into liga (sifra,naziv)
values (null,'Ligue 1');



insert into utakmica (sifra,vrijemepocetka)
values (null,'2022-10-10 10:00:00');



insert into tim (sifra,naziv,utakmica,liga)
values (null,'Arsenal',2,1);


insert into trener (sifra,ime,prezime,tim)
values (null,'Marko','Mijatovic',4);


insert into igrac (sifra,ime,prezime,tim,trener)
values (null,'Pero','Peric',1,1);


insert into pozicija (sifra,naziv,igrac)
values (null,'napadac',6);

