select c.kratkinaziv as Naziv,b.cijena,b.kolicina,b.cijena*b.kolicina as ukupno into moja
from Primke a
inner join ArtikliNaPrimci b on a.sifra=b.primka
inner join Artikli c on b.artikl=c.sifra
where redniBroj = '1/2008' order by 1;

select * from moja;

drop table moja;



select a.redniBroj, sum(b.cijena*b.kolicina) as ukupno
from Primke a
inner join ArtikliNaPrimci b on a.sifra=b.primka
inner join Artikli c on b.artikl=c.sifra
where a.datum between '2008-01-01' and '2008-12-31'
group by a.redniBroj;

select top 15 percent c.naziv, 
sum(b.cijena*b.kolicina) as ukupno,
min(b.cijena*b.kolicina) as minimalno,
max(b.cijena*b.kolicina) as maksimalno,
avg(b.cijena*b.kolicina) as prosjecno
from Primke a
inner join ArtikliNaPrimci b on a.sifra=b.primka
inner join dobavljaci c on a.dobavljac=c.sifra
where a.datum between '2008-01-01' and '2008-12-31'
group by c.naziv
having sum(b.cijena*b.kolicina)>1000000
order by 5 desc;


select datediff(Day,'2022-05-25',getdate())*24*60*70;

select dateadd(Day,-60,getdate());

select power(2,8), sqrt(68), abs(-3);

select top 10 concat(trim(ime),' ',trim(prezime)) as kupac from kupci;


