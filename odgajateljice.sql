use master;
go
drop database if exists odgajateljice;
go
create database odgajateljice;
go
use odgajateljice;


create table skupine(
id		int	primary key identity(1,1) not null,
odgajateljice		int,
naziv				varchar(10),
djeca				int
);

create table odgajateljice(
id			int	primary key identity(1,1) not null,
ime				varchar(20),
prezime			varchar(20),
oib				char(11),
skupine			int,
);

create table djeca(
id			int	primary key identity(1,1) not null,
ime				varchar(20),
prezime			varchar(20),
oib				char(11),
skupine			int
);

create table strucnasprema(
id 	int primary key identity(1,1) not null,
odgajateljice	int,
);

alter table skupine add foreign key (odgajateljice) references odgajateljice(id);
alter table strucnasprema add foreign key (odgajateljice) references odgajateljice(id);
alter table djeca add foreign key (skupine) references skupine(id);