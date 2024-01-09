use master;
go
drop database if exists edunovawp3;
go
-- ovo je komentar
create database edunovawp3 collate Croatian_CI_AS;
go
--drop database edunovawp3;
--use master
use edunovawp3;

create table smjerovi(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
trajanje int null, --null se ne piše. Ako ne piše not null onda se podrazumjeva null
cijena decimal(18,2), -- iako ništa ne piše je null
vaucer bit
);

create table grupe(

	sifra			int			not null primary key identity(1,1),
	naziv			varchar(5)	not null,
	smjer			int			not null,
	datumpocetka	datetime,
	maxpolaznika	int			not null,
	predavac		int

);


create table polaznici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100),
oib char(11),
brojugovora varchar(10)
);

create table predavaci(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100) not null,
oib char(11),
iban varchar(50)
);

-- ako nešto pogriješim onda mogu obrisati tablicu pa ponovo kreirati
--drop table predavaci;


create table clanovi(
grupa int not null,
polaznik int not null
);

-- kreiranje vanjskih kljuÄŤeva
alter table grupe add foreign key (smjer) references smjerovi(sifra);
alter table grupe add foreign key (predavac) references predavaci(sifra);

alter table clanovi add foreign key (grupa) references grupe(sifra);
alter table clanovi add foreign key (polaznik) references polaznici(sifra);




-- školska sintaksa
-- 1
insert into smjerovi (naziv, trajanje,cijena,vaucer)
values ('Web programiranje', 225, 1859.45,1);

-- loša sintaksa
-- 2
insert into smjerovi values
('Web dizajn',null,null,null);

-- minimalna dobra sintaksa
-- 3
insert into smjerovi (naziv) values ('čšćđž ČŠĆĐŽ');





insert into predavaci (ime, prezime, email) values
-- 1
('Tomislav','Jakopec','tjakopec@gmail.com'),
-- 2
('Shaquille','O''Neal','shaki@gmail.com');





-- 1 do 24
insert into polaznici(ime,prezime,email) values
('Slaven','Poznić','slaven.poznic@hotmail.com'),
('Karla','Kraljik','kraljikkarla@gmail.com'),
('Dino','Sabljić','dino.sabljic@gmail.com'),
('Luka','Crljić','lukacrljic7@gmail.com'),
('Mario','Baliban','mariobalibanos@gmail.com'),
('Branimir','Fekete','branimir.fekete@gmail.com'),
('Dajana','Tolić','dajanabozic@gmail.com'),
('Ivan','Tolić','ivan.tolic1989@gmail.com'),
('Tomislav','Kučić','tomislavkucic@gmail.com'),
('Zdenko','Barić','zbaric_hr@yahoo.com'),
('Mihael','Žulj','mihaelzulj@gmail.com'),
('Ivan','Marošević','ivanmarosevic4@gmail.com'),
('Goran','Kovačić','kovacic.go@gmail.com'),
('Nataša','Jakopec','njakopec@gmail.com'),
('Goran','Franjić','goran@proces.hr'),
('Ana','Jurić','ana.juric19@gmail.com'),
('Emina','Vejsilović','emiomiemi@gmail.com'),
('Josip','Rebolj','rebolj.josip031@gmail.com'),
('Merlin','Jišše','jisse.merlin@gmail.com'),
('Snežana','Grković','snezana4688@yahoo.com'),
('Rade','Jasenovčanin','rade.jasenovcanin@yahoo.com'),
('Krešimir','Bilokapić','ilead7@gmail.com'),
('Srđan','Filipović','srdjanfilipovic991@gmail.com'),
('Veljko','Vujić','veljko2805vujic@gmail.com');





insert into grupe (naziv,predavac,datumpocetka,smjer,maxpolaznika)
values
-- 1
('WP3',1,'2023-11-29 19:00:00',1,25),
-- 2
('WP2',null,'2023-11-07 17:00:00',1,25);




insert into clanovi (grupa,polaznik) values
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8)
,(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16)
,(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);


select naziv from smjerovi;

select naziv, cijena, * from smjerovi;

select naziv as smjer_naziv, cijena from smjerovi;

select naziv, cijena, 'Osijek' as mjesto from smjerovi;

select naziv, len(naziv) as znakova from smjerovi;

select getdate();

select * from polaznici
where prezime='Tolić';

select * from polaznici where sifra<=12;

select * from polaznici 
where ime like '%j%';

select * from polaznici where sifra between 5 and 15;

select * from polaznici where sifra in(2,7,9);

select * from polaznici where ime like '%a%' and sifra>10;

select * from polaznici where ime not like '%a%';

select * from polaznici where ime like 'S%';

select * from polaznici where ime like '%a';

select * from polaznici where ime like 'm%' or ime like 'l%';

select * from polaznici where ime like 'm%' or ime like 'l%'
order by prezime;

select * from polaznici where ime like 'm%' or ime like 'l%'
order by prezime desc;

select top 10 *from polaznici;

select top 10 * into odabrani from polaznici;
select * from odabrani;

drop table odabrani;

use knjiznica;

select * from katalog where naslov like '%ljubav%' and sifra not in (2784, 2938, 3063, 2541); 


select count(*) from mjesto;