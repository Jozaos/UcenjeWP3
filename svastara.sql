select top 10 * from kupci;

select top 10 sifra, ime, prezime from kupci;

select count(*) from kupci where ime='Josip';

select count(*) from artikli where cijena between 100 and 500;

select * from artikli where cijena between 100 and 500 and kratkinaziv like '%BUŠILICA%' and kratkinaziv like '%BOSCH%';

update artikli set cijena=cijena/7.53450;
update ArtikliNaPrimci set cijena=cijena/7.5345;
select max(datum) from primke;

select top 10 * from primke;

select 
d.naziv as dobavljac,
c.kratkiNaziv, 
b.cijena, 
b.kolicina, 
c.cijena-b.cijena as razlika
from primke a 
inner join ArtikliNaPrimci b on a.sifra=b.primka
inner join artikli c on b.artikl=c.sifra
inner join Dobavljaci d on a.dobavljac=d.sifra
where a.redniBroj='7/2008';