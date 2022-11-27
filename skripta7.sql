#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp27.sql\skripta7.sql

drop database if exists taxi;
create database taxi;
use taxi ;

create table vozilo(
    sifra int not null primary key auto_increment,
    serijskibroj int,
    model varchar(20),
    datumproizvodnje datetime,
    boja varchar(15)not null,
    vozac int not null,
    putnik int not null
);

create table vozac(
    sifra int not null primary key auto_increment,
    oib varchar(11),
    ime varchar(10),
    prezime varchar(15),
    broj int not null,
    vrijemedolaska datetime not null
);

create table putnik(
    sifra int not null primary key auto_increment,
    oib varchar(11),
    ime varchar(10),
    prezime varchar(15),
    adresa varchar(30) not null,
    vrijemepolaska datetime not null

);


alter table vozilo add foreign key (vozac) references vozac(sifra);
alter table vozilo add foreign key (putnik) references putnik(sifra);


