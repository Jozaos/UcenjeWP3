use master;
go
drop database if exists izlozbe;
go
create database izlozbe;
go
use izlozbe;

create table izlozbe(
id		int	primary key identity(1,1) not null,
vrsta			varchar(20),
lokacija		varchar(20),
djela			int,
sponzor			int,
kustos			int
);

create table kustos(
id		int	primary key identity(1,1) not null,
ime				varchar(20),
prezime			varchar(20),
oib				char(11),
izlozbe			int,
);

create table djela(
id		int	primary key identity(1,1) not null,
izlozbe	int
);

create table sponzor(
id		int	primary key identity(1,1) not null,
ime				varchar(20),
prezime			varchar(20),
oib				char(11),
izlozbe			int,
);

alter table kustos add foreign key (izlozbe) references izlozbe(id);
alter table sponzor add foreign key (izlozbe) references izlozbe(id);
alter table djela add foreign key (izlozbe) references izlozbe(id);
