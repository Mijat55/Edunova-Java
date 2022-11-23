#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp28\skripta1.sql
drop database if exists firma;
create database firma;
use firma;
create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    cijena decimal(18,2),
    datumpocetka datetime not null,
    datumzavrsetka datetime
);

create table sudionik(
    projekt int not null,
    programer int not null
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(10) not null,
    prezime varchar(10) not null,
    datumrodjednja datetime,
    placa decimal
);

alter table sudionik add foreign key (programer) references programer(sifra);
alter table sudionik add foreign key (projekt) references projekt(sifra);


insert into projekt (sifra,naziv,datumpocetka)
values (null,'Programiranje','2022-01-01 12:00:00');


insert into programer (sifra,ime,prezime)
values (null,'Marko','Mijatovic');


insert into sudionik (projekt,programer)
values (1,1);
