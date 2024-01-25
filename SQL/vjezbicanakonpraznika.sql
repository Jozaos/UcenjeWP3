use master;
go
drop database if exists vjezba;
go
create database vjezba;
go
use vjezba;
go

create table prva(
id int primary key identity (1,1) not null,
ime varchar(20),
prezime varchar(20),
oib char(11)
);

create table druga(
id int primary key identity (1,1) not null,
adresa varchar(50),
email varchar(100),
iban varchar(40),
veza int
);

alter table druga add foreign key (veza) references prva(id);

select * from prva;

insert into prva (ime, prezime, oib) values
('Pero','Perić',11111111111),
('Đuro','Đurić',22222222222),
('Ana','Anić',33333333333);
