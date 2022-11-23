#c:\xampp\mysql\bin\mysql -uroot<C:\Users\Marko\Downloads\edunovajp28\skripta3.sql
drop database if exists selo2;
create database selo2;
use selo2;
create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    zupan varchar(15) 
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(20) not null
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);




insert into zupanija(sifra,naziv)
values (null,'vukovarskosrijemska');



insert into opcina (sifra,zupanija,naziv)
values (null,1,'vukovar');