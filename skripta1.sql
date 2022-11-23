
#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp28\skripta1.sql
drop database if exists firma;
create database firma;
use firma;
create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    datumpocetka datetime not null,
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


insert into programer (sifra,ime,prezime,datumrodjednja,placa)
values (null,'Marko','Mijatovic','1996-15-09',5.999);


insert into sudionik (projekt,programer)
values (1,1);
