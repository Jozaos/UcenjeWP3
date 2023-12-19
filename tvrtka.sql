use master;
go
drop database if exists tvrtka;
go
create database tvrtka collate Croatian_CI_AS;
go
use tvrtka;

create table zaposlenici(
id int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodenja date not null,
placa decimal(10,2) not null,
invalid bit 
);
create table slike(
id int not null primary key identity (1,1),
zaposlenik int not null,
redni_broj char(2) not null,
putanja varchar(100)
);

alter table slike add foreign key (zaposlenik) references zaposlenici(id);

insert into zaposlenici(ime, prezime, datum_rodenja, placa, invalid) values
('Josip','Rebolj','2000-02-01','725.55',0),
('Petar','Klarić','1995-12-18','999.95',1),
('Mateja','An''Tunović','2001-01-13','1200.00',0);

insert into slike(zaposlenik, redni_broj, putanja) values 
(1,'1','aaaaa'),(1,'1','bbbbb'),
(2,'2','aaaaa'),(2,'2','bbbbb'),
(3,'3','aaaaa'),(3,'3','bbbbb');

select * from slike;