#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp28\skripta1.sql
drop database if exists firma;
create database firma;
use firma;
create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    cijena decimal(18,2)
);

create table sudjeljuje(
    projekt int not null,
    programer int not null,
    datumpocetka datetime not null,
    datumzavrsetka datetime
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(10) not null,
    prezime varchar(10) not null,
    datumrodjednja datetime,
    placa decimal
);

alter table sudjeljuje add foreign key (programer) references programer(sifra);
alter table sudjeljuje add foreign key (projekt) references projekt(sifra);
