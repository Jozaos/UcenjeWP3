
--kreiranje baze
--create database edunovawp3; 

--brisanje baze
--drop database edunovawp3;

--odabir baze podataka
--use master;
--use edunovawp3;

--varchar(10) je do 10 znakova, ne mora biti svih 10
--char(10) je svih 10 znakova...

--ctrl k+c komentira više odjednom, ctrl k+u mice komentar

--create table smjerovi(
--sifra int,
--naziv varchar(50),
--trajanje int,
--cijena decimal(18,2),
--vaucer bit
--);


--create table grupe(
--	sifra			int,
--	naziv			varchar(5),
--	smjer			int,
--	datumpocetka	datetime,
--	maxpolaznika	int,
--	predavac		int
--);

--create table polaznici(
--sifra			int,
--ime				varchar(50),
--prezime			varchar(50),
--email			varchar(100),
--oib				char(11),
--broj_ugovora	varchar(10)	
--);

--create table predavaci(
--id			int,
--ime			varchar(50),
--prezime		varchar(50),
--email		varchar(100),
--oib			char(11),
--iban		varchar(50)
--);

--drop table predavaci    -> obrise tablicu

--create table clanovi(
--grupa			int,
--polaznik		int
--);

