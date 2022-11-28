#### BAZA mjesta

# izlistajte sva mjesta 
# u Osječko baranjskoj županiji
select * from mjesto 
where naziv ='Osijek';

select * from mjesto 
where zupanija =14;

select * from mjesto 
where postanskibroj like '31%';




# Koliko mjesta u hrvatskoj bi bili
# pobjednici igre kaladont?
select * from mjesto 
where naziv like '%nt';




#### BAZA knjiznica

# Izlistajte sve autore koji su rođeni
# 1980 godine
select * from autor 
where datumrodenja between '1980-01-01' and '1980-12-31';



# Dečka je ostavila cura, jadan pati
# što bi mu preporučili za čitanje
# operator in
select * from katalog
where naslov like '%ljubav%' and
sifra not in (2541,2660,2664,2680,2784,3031,3063);



# Izlistajte sve izdavače koji su 
# društvo s ograničenom odgovornošću
select * from izdavac 
where naziv like 'd%o%o%'
and naziv not like '%j%d%'
and sifra not in (2,4,5);


# unesite sebe kao autora
select * from autor;
insert  into autor(sifra,ime,prezime,datumrodenja)
values (null,'Marko','Mijatovic','1996-09-15');

select * from autor 
where datumrodenja like '%1996-09-15%';

select * from autor 
where ime like '%Marko%'
and sifra =20775;


# Obrišite sve kataložne zapise koji govore o smrti
delete from katalog
where naslov like '%smrt%';

select * from katalog 
where naslov like '%smrt%';