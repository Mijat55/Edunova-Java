#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp28\skripta6.sql
drop database if exists galerija;
create database galerija;
use galerija;

create table izlozba(
sifra int not null primary key auto_increment,
naziv varchar(20) not null,
datumodrzavanja datetime,
vrsta varchar(15)

);

create table kustos(
sifra int not null primary key auto_increment,
ime varchar(10) not null,
prezime varchar(15) not null,
oib varchar(11),
licenca boolean,
izlozba int not null

);

create table djelo(
sifra int not null primary key auto_increment,
naziv varchar(15) not null,
stil varchar(15) not null,
datumizrade datetime

);

create table sponzor(
sifra int not null primary key auto_increment,
naziv varchar(20) not null,
izlozba int not null

);

create table autor(
sifra int not null primary key auto_increment,
izlozba int not null,
djelo int not null,
ime varchar(10) not null,
prezime varchar(15) not null

);


alter table sponzor add foreign key (izlozba) references izlozba(sifra);
alter table kustos add foreign key (izlozba) references izlozba(sifra);
alter table autor add foreign key (djelo) references djelo(sifra);
alter table autor add foreign key (izlozba) references izlozba(sifra);



insert  into izlozba (sifra,naziv,datumodrzavanja,vrsta)
values (null,'Povijest','2022-10-10 10:00:00','Galerija');



insert into djelo (sifra,naziv,stil,datumizrade)
values (null,'revolucija','renesansa','1800-10-10');



insert into kustos (sifra,ime,prezime,oib,licenca,izlozba)
values (null,'Damir','Dadic','12345678912',true,1);



insert  into sponzor (sifra,naziv,izlozba)
values (null,'RedBull',1);



insert  into autor(sifra,izlozba,djelo,ime,prezime)
values (null,1,1,'Marko','Mijatovic');
