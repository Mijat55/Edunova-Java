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


# unesite sebe kao autora


# Obrišite sve kataložne zapise koji govore o smrti