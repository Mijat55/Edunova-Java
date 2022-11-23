# c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp28\skripta4.sql

drop database if exists nogomet;
create database nogomet;
use nogomet;

create table liga(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null
    
);

create table tim(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    stadion int,
    maksimalanbrojnavijaca decimal(18,2),
    utakmica int not null,
    liga int not null
);

create table utakmica(
    sifra int not null primary key auto_increment,
    vrijemepocetka datetime not null,
    vrijeme varchar(10),
    maksimalanbrojigraca int

);

create table igrac(
    sifra int not null primary key auto_increment,
    ime varchar(10) not null,
    prezime varchar (15) not null,
    datumrodjenja datetime,
    oib varchar(11),
    minutaigranja decimal(18,2),
    tim int not null,
    trener int not null
);

create table trener(
    sifra int not null primary key auto_increment,
    ime varchar(10) not null,
    prezime varchar(15) not null,
    oib varchar(11),
    licenca boolean,
    tim int
);

create table pozicija(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    igrac int not null
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



insert into tim (sifra,naziv,utakmica,liga,maksimalanbrojnavijaca,stadion)
values (null,'Arsenal',2,1,20.200,'Santiago');


insert into trener (sifra,ime,prezime,tim,oib,licenca)
values (null,'Marko','Mijatovic',4,'12345678912',true);


insert into igrac (sifra,ime,prezime,tim,trener,datumrodjenja,oib,minutaigranja)
values (null,'Pero','Peric',1,1,'1990-15-09','98765432198',65.30);


insert into pozicija (sifra,naziv,igrac)
values (null,'napadac',6);

