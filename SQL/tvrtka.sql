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
('Josip','Rebolj','2000-02-01',725.55,0),
('Petar','Klarić','1995-12-18',999.95,1),
('Mateja','An''Tunović','2001-01-13',1200.00,0),
('WILLIAM','JOHN','2000-11-25',10000.65,0),
('JOHN','WILLIAM','2000-11-25',10000.65,0),
('GEORGE','GEORGE','2000-11-25',10000.65,0),
('THOMAS','THOMAS','2000-11-25',10000.65,0),
('ARTHUR','JAMES','2000-11-25',10000.65,0),
('JAMES','ARTHUR','2000-11-25',10000.65,0),
('CHARLES','FREDERICK','2000-11-25',10000.65,0),
('FREDERICK','ALBERT','2000-11-25',10000.65,0),
('ALBERT','CHARLES','2000-11-25',10000.65,0),
('ERNEST','ROBERT','2000-11-25',10000.65,0),
('ALFRED','EDWARD','2000-11-25',10000.65,0),
('EDWARD','JOSEPH','2000-11-25',10000.65,0),
('JOSEPH','ERNEST','2000-11-25',10000.65,0),
('HAROLD','ALFRED','2000-11-25',10000.65,0),
('ROBERT','FRANK','2000-11-25',10000.65,0),
('FRANK','HENRY','2000-11-25',10000.65,0),
('HENRY','LESLIE','2000-11-25',10000.65,0),
('HARRY','HAROLD','2000-11-25',10000.65,0),
('WALTER','HARRY','2000-11-25',10000.65,0),
('REGINALD','LEONARD','2000-11-25',10000.65,0),
('HERBERT','RONALD','2000-11-25',10000.65,0),
('LEONARD','STANLEY','2000-11-25',10000.65,0),
('STANLEY','WALTER','2000-11-25',10000.65,0),
('LESLIE','REGINALD','2000-11-25',10000.65,0),
('RICHARD','HERBERT','2000-11-25',10000.65,0),
('CYRIL','RICHARD','2000-11-25',10000.65,0),
('SIDNEY','ERIC','2000-11-25',10000.65,0),
('FRANCIS','NORMAN','2000-11-25',10000.65,0),
('PERCY','CYRIL','2000-11-25',10000.65,0),
('DAVID','JACK','2000-11-25',10000.65,0),
('WILFRED','SIDNEY','2000-11-25',10000.65,0),
('SAMUEL','DAVID','2000-11-25',10000.65,0),
('NORMAN','KENNETH','2000-11-25',10000.65,0),
('CECIL','FRANCIS','2000-11-25',10000.65,0),
('ERIC','WILFRED','2000-11-25',10000.65,0);

insert into slike(zaposlenik, redni_broj, putanja) values 
(1,'1','aaaaa'),(1,'1','bbbbb'),
(2,'2','aaaaa'),(2,'2','bbbbb'),
(3,'3','aaaaa'),(3,'3','bbbbb');

select * from zaposlenici;