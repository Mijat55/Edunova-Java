#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp27.sql\skripta7.sql

drop database if exists taxi;
create database taxi;
use taxi ;

create table vozilo(
    sifra int not null primary key,
    serijskibroj int,
    model varchar(20),
    boja varchar(15)not null,
    vozac int not null,
    putnik int not null
    
);

create table vozac(
    sifra int not null primary key,
    oib varchar(11),
    ime varchar(10),
    prezime varchar(15),
    broj int not null,
    vrijemedolaska datetime not null
);

create table putnik(
    sifra int not null primary key,
    oib varchar(11),
    ime varchar(10),
    prezime varchar(15),
    adresa varchar(30) not null

);



alter table vozilo add foreign key (putnik) references putnik(sifra);
alter table vozilo add foreign key (vozac) references vozac(sifra);


#select * from vozac;

#insert into vozac (sifra,oib,ime,prezime,broj,vrijemedolaska)
values (1,'12345678912','Andrej','Dedic','031555222','2022-10-10 14:20:00'),
(2,'33345678912','Ivan','Maric','031555223','2022-08-07 12:05:00'),
(3,'12597678912','Petar','Horvat','031555224','2022-15-01 21:45:00'),
(4,'12345629512','Kristijan','Cuk','031555225','2022-04-09 23:00:00'),
(5,'12991678912','Viktor','Kis','031555226','2022-11-11 16:30:00');


#select * from putnik;

#insert into putnik (sifra,oib,ime,prezime,adresa)
values (10,'98765432134','Dado','Ivic','Velebitska''10'),
(11,'98765432385','Maja','Prelec','Licka''167'),
(12,'98765432299','Sanja','Visnjic','Vinogradska''11'),
(13,'98765432111','Kreso','Bijelic','Neretvanska''199'),
(14,'99665432134','Vesna','Kos','Dubrovacka''2');

#select * from vozilo;

#insert into vozilo (sifra,serijskibroj,model,boja,vozac,putnik)
values (105,'12356','Audi','Crvena',1,11),
(101,'45667','Opel','Plava',4,10),
(102,'78543','Mazda','Zuta',5,14),
(103,'92567','Fiat','Crna',2,13),
(104,'39543','Citroen','Crvena',3,12);


#select * from vozac
where oib like ('123%');

#select * from putnik
where ime ='Dado';

#select * from vozac
where sifra > 2 ;

#select * from vozilo
where vozac between 2 and 4;



