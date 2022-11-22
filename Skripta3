#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp28\skripta3.sql
create database selo2;
use selo2;
create table zupanija(
    sifra int not null primary key,
    naziv varchar(20),
    zupan varchar(15)
);

create table opcina(
    sifra int not null primary key,
    zupanija int,
    naziv varchar(20)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);


insert into zupanija(sifra,naziv)
values (null,'vukovarskosrijemska');



insert into opcina (sifra,zupanija,naziv)
values (null,1,'vukovar');
