use laboratory;

insert into client
values 
(1,'Mario', 'Pérez', 20-98765-8,'carrera 20 # 12-25', null),
(2,'Caludia', 'Luna', 16-87134-7, 'carrera 16 # 02-54',null),
(3,'Patricia', 'Colmena', 19-09877-0, 'calle 14 # 156-22',null),
(4,'Maia', 'Lozano', 23-65431-9, 'Tv 3 # 34-25',null),
(5,'Juan', 'Ríos', 20-76543-8, 'carrera 76 # 34-21',null);

select * from client;
select * from client;
update client
set name='José' where id = '1';

select*from client;
select * from client;
update client
set name='José' where id = '1';
select*from client;

select*from client;
update client set name='Pablo', last_name='Fuentes', cuit='20-210531-0' where id='3';
select*from client;

set SQL_SAFE_UPDATES=0;

select*from client;
update client set comments='' where comments is null;

select*from client;

Delete from client where last_name='Pérez';
select*from client;

delete from client where cuit like '%0';
select*from client;

insert into article
(name, price, stock)
values
('Cinta', 110, 50),
('Espatula', 45, 75),
('Tenedor', 87, 98),
('Regla', 156, 109),
('Pinza', 134, 32);
select*from article;

select price, price*20/100 as 'aumento' , price+(price*20/100) as 'total' from article where price>=50;
select price, price*20/100 as 'aumento' , price+(price*20/100) as 'total' from article where price<=50;
select price, price*0.15 as 'aumento', price+(price*0.15) as 'Total' from article where price >50;
select price, price*0.5 as 'descuento', price-(price*0.5) as total from article where price >200;
delete from article where stock='0';





















