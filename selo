
drop database if exists selo;
create database selo;
use selo;
create table zupanija(
    sifra int not null primary key,
    naziv varchar(20),
    zupan int
);
create table zupan(
    sifra int not null primary key,
    ime varchar(10),
    prezime varchar(20)
);
create table opcina(
    sifra int not null primary key,
    zupanija int,
    naziv varchar(20)
);
create table mjesto(
    sifra int not null primary key,
    opcina int,
    naziv varchar(20)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);



