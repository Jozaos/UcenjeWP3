select c.kratkinaziv as Naziv,b.cijena,b.kolicina,b.cijena*b.kolicina as ukupno into moja
from Primke a
inner join ArtikliNaPrimci b on a.sifra=b.primka
inner join Artikli c on b.artikl=c.sifra
where redniBroj = '1/2008' order by 1;

select * from moja;

drop table moja;