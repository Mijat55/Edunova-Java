
#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp28\skripta5.sql

drop database if exists vrtic;
create database vrtic;
use vrtic;

create table djeca(
sifra int not null primary key auto_increment,
ime varchar(10) not null,
prezime varchar(15) not null,
oib varchar(11),
spol varchar(5),
datumrodjenja datetime
);

create table skupina(
sifra int not null primary key auto_increment,
naziv varchar(20) not null,
maksimalanbrojpolaznika
);


