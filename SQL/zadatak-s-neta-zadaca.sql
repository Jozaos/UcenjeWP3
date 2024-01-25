use master;
go
drop database if exists shop;
go
create database shop;
go
use shop;

create table person(
id int not null primary key identity(1,1),
ime varchar(20),
DoB date,
email varchar(50)
);

create table account(
id int not null primary key identity(1,1),
acc_num int,
created date,
status_acc varchar(50),
shipping_addres varchar(50),
paymet_method varchar(50)
);

create table cart(
id int not null primary key identity(1,1),
status_cart varchar(20),
created date,
purchase date,
payment_type varchar(20),
shipping_addres varchar(20),
cart int
);

create table item(
id int not null primary key identity(1,1),
item varchar(20),
descript varchar(50),
img varchar(50),
supplier varchar(20)
);

create table offer(
id int not null primary key identity(1,1),
offer_type varchar(20),
valid_from date,
valid_to date,
descript varchar(50),
terms_and_conditions varchar(50)
);

create table category(
id int not null primary key identity(1,1),
category_name varchar(20),
category_type varchar(20),
category_description varchar(20)
);

create table cart_item(
item_cart int,
cart_item int
);

create table item_offer(
item_offer int,
offer_item int
);

create table item_category(
item_ctg int,
ctg_item int
);

create table category_offer(
ctg_offer int,
offer_ctg int
);

alter table account add foreign key (acc_num) references person(id);
alter table cart add foreign key (cart) references account(id);
alter table cart_item add foreign key (item_cart) references item(id);
alter table cart_item add foreign key (cart_item) references cart(id);
alter table item_offer add foreign key (item_offer) references item(id);
alter table item_offer add foreign key (offer_item) references offer(id);
alter table item_category add foreign key (item_ctg) references item(id);
alter table item_category add foreign key (ctg_item) references category(id);
alter table category_offer add foreign key (ctg_offer) references category(id);
alter table category_offer add foreign key (offer_ctg) references offer(id);