use master;
go
drop database if exists webshop;
go
create database webshop collate Croatian_CI_AS;
go
use webshop;

create table proizvodi(
id int not null primary key identity (1,1),
naziv int not null,
datum_nabave datetime not null,
cijena decimal(18,2),
aktivan varchar(15)
);

create table stavke(
id int not null primary key identity(1,1),
racun int,
proizvod int,
kolicina varchar(20),
cijena decimal(18,2)
);

create table racuni(
id int not null primary key identity(1,1),
datum date not null,
kupac int,
stanje varchar(20)
);

create table kupci(
id int not null primary key identity(1,1),
ime varchar(20) not null,
prezime varchar(20) not null,
ulica varchar(100) not null,
mjesto varchar(50) not null
);

alter table stavke add foreign key (proizvod) references proizvodi(id);
alter table stavke add foreign key (racun) references racuni(id);
alter table racuni add foreign key (kupac) references kupci(id);