create database laboratory;
use laboratory;
create table invoice (
id int auto_increment,
letter char not null,
number int (5) zerofill not null,
date date not null,
amount int not null,
primary key (id)
);

create table article (
id int auto_increment,
name varchar (50) not null,
price double not null,
stock int not null,
primary key (id)
);

create table client (
id int auto_increment,
name varchar (50) not null,
last_name varchar (50) not null,
cuit char (16) not null,
adress varchar (100) not null,
comments longtext,
primary key (id)
);

insert into invoice
(letter, number,date, amount)
values
('B', 1, '2011-11-18', 50),
('B', 2, '2012-10-23', 100),
('B', 3, '2016-09-08', 30),
('B', 4, '2020-06-09', 256),
('B', 5, '2022-03-26', 23);

select *from invoice;

insert into article
(name, price, stock)
values
('Cinta', 110, 50),
('Espatula', 45, 75),
('Tenedor', 87, 98),
('Regla', 156, 109),
('Pinza', 134, 32);

select*from article;

insert into client
(name, last_name, Cuit, Adress)
values
('Mario', 'Pérez', 20-98765-8, 'carrera 20 # 12-25'),
('Caludia', 'Luna', 16-87134-7, 'carrera 16 # 02-54'),
('Patricia', 'Colmena', 19-09877-0, 'calle 14 # 156-22'),
('Maia', 'Lozano', 23-65431-9, 'Tv 3 # 34-25'),
('Juan', 'Ríos', 20-76543-8, 'carrera 76 # 34-21');

select*from client;

select*from article where price >100;
select *from article where price >=20 and price <= 40;
select*from article where price >=40 and price <=60;
select*from article where price=20 and stock>30;
select*from article where price=12 or price=20 or price=30;
select*from article where price=10 or price=110;

select*from article order by price desc;
select*from client;

















