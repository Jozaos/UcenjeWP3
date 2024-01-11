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
