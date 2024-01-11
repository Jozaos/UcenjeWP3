select * from smjerovi where sifra=1;

select a.naziv as smjer, b.naziv as grupa
from smjerovi a inner join grupe b
on b.smjer = a.sifra;

select a.naziv,b.ime, b.prezime 
from grupe a inner join predavaci b
on a.predavac = b.sifra;

select a.naziv, concat(b.ime,' ',b.prezime) as predavač
from grupe a inner join predavaci b
on a.predavac = b.sifra;

select * from grupe;

select a.naziv as smjer, b.naziv as grupa, concat(c.ime,' ',c.prezime) as predavač,
concat(e.ime,' ',e.prezime) as polaznici
from smjerovi a 
inner join grupe b on a.sifra=b.smjer
inner join predavaci c on b.predavac=c.sifra
inner join clanovi d on d.grupa=b.sifra
inner join polaznici e on e.sifra=d.polaznik;

select * from predavaci;
update grupe set predavac=2 where sifra=2;

select a.naziv as smjer, b.naziv as grupa
from smjerovi a left join grupe b
on a.sifra=b.smjer where b.naziv is not null order by 2;


use knjiznica;

select a.naslov
from katalog a inner join autor b on a.autor=b.sifra
where b.ime='August' and b.prezime='Šenoa';

select a.naslov
from katalog a inner join mjesto b on a.mjesto=b.sifra
where b.naziv='Osijek';

select naziv from izdavac 
where naziv like '%d.o.o.%' or naziv like '%doo%'or naziv like '%d.o.o%';

select * from autor;
insert into autor(sifra,ime,prezime,datumrodenja) values (4,'Josip','Rebolj','2000-02-01');

select ime,prezime from autor where datumrodenja between '2000-01-01' and '2000-12-31';

select concat(b.ime,' ',b.prezime) as Autor
from katalog a 
inner join autor b on a.autor=b.sifra
inner join mjesto c on a.mjesto=c.sifra where c.naziv='Zagreb';

select a.ime,a.prezime,b.naslov
from autor a left join katalog b on a.sifra=b.autor where b.naslov is null;

delete a
from autor a left join katalog b on a.sifra=b.autor
where b.naslov is null;

select concat('Plemeniti ',b.ime) as Plemstvo, c.naziv
from katalog a 
inner join autor b on a.autor=b.sifra
inner join mjesto c on a.mjesto=c.sifra
where c.naziv like '%a%';