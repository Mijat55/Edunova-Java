#1 pronadji Hrvatsku i u njoj gradove sa >100000 ljudi
select * from country
where Continent like '%Europe%'
and Name like '%Croatia%';

select * from city
where CountryCode like '%HRV%' and
ID not in (2409,2410,2411) and 
Population >100.000;


#2 pronadji africke drzave sa nezavisnoscu >=1900 i povrsinu od 100 do 100000
select * from country 
where name like 'B%'
and IndepYear >=1900
and Continent like 'Afr%'
and SurfaceArea between '100' and '100000';


#3 pronadji grad od >= milion ljudi bez drzava na a i sa imenima gradova izmedju a i b i kodom vecim od 1 i manjim od 10
select * from city
where Population >=1000000
and CountryCode not like 'A%'
and name like 'A%'
or name like 'B%'
and ID <=1 
and ID >=10;

#4 oznaci drzave sa manjim GNP od 1000 na kontinetu Azija
select  * from country
where GNP <1000
and Continent ='Asia';


#5 oznaci sve gradove koji pocinju sa A 
select * from  city
where Name like 'A%';


#6 pronadji sve drzave koje se nalaze na zapadnoj hemisferi a da nisu u africi
select * from country
where region like 'West%'
and Continent not like 'Africa%';

#7 nadji sve gradove osima kabula
select * from city
where not (name='Kabul')

#8 pronadji hrvatski jezik i gdje se prica
select * from countrylanguage
where `Language` like '%Croatian%'
and CountryCode ='HRV';
