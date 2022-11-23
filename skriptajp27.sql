
drop database if exists edunovajp28;
create database edunovajp28;
use edunovajp28;

create table skupina(
    sifra int not null primary key,
    naziv varchar(20),
    maksimalanbrojpolaznika int,
    vrijemepolaska datetime
);

create table djeca(
    sifra int not null primary key,
    oib varchar(11),
    spol varchar(10),
    datumrodjednja datetime,
    osoba int
);

create table strucnasprema(
    sifra int not null primary key,
    naziv varchar(20),
    datum int,
    ocijena decimal(18,2),
    odgajateljica int
);

create table odgajateljica(
    sifra int not null primary key,
    iskustvo varchar(20),
    oib varchar(11),
    osoba int,
    strucnasprema int
);

create table osoba(
    sifra int not null primary key,
    ime varchar(20),
    prezime varchar(20),
    djeca int, 
    odgajateljica int
);

create table clan(
    skupina int,
    djeca int
);


alter table clan add foreign key (skupina) references skupina(sifra);
alter table clan add foreign key (djeca) references djeca(sifra);
alter table osoba add foreign key (djeca) references djeca(sifra);
alter table osoba add foreign key (odgajateljica) references odgajateljica(sifra);
alter table odgajateljica add foreign key (strucnasprema) references strucnasprema(sifra);
