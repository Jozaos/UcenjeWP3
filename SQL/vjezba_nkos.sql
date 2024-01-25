use master;
go
go
go
go
drop database if exists NKOs;
go
go
go
go
go
create database NKOs collate Croatian_CI_AS;
go
go
go
go
go
use NKOs;

create table igraci(
id int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rodenja date not null,
transfer_igraca bit
);
create table ucinak(
id int not null primary key identity (1,1),
igrac int not null,
broj char(2) not null,
pozicija varchar(20)
);

alter table ucinak add foreign key (igrac) references igraci(id);

insert into igraci(ime, prezime, datum_rodenja, transfer_igraca) values
('Marko','Malenica','1994-02-08',0),
('Šime','Gržan','1994-04-06',0),
('Marin','Prekodravac','2005-03-03',0),
('Slavko','Bralić','1992-12-15',0),
('Vedran','Jugović','1989-07-31',0),
('Nail','Omerović','2002-10-20',0),
('Ramon Nazareno','Mierez','1997-05-13',0),
('Domagoj','Bukvić','2004-02-22',0);

insert into ucinak(igrac, broj, pozicija) values 
(1,'31','vratar'),
(2,'17','branič'),
(3,'20','branič'),
(4,'28','branič'),
(5,'7','vezni igrač'),
(6,'36','vezni igrač'),
(7,'13','napadač'),
(8,'39','napadač');
select * from ucinak;