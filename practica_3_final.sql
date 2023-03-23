use laboratory;

insert into invoice
(letter, number,date, amount)
values
('B', 1, '2011-11-18', 50),
('B', 2, '2012-10-23', 100),
('B', 3, '2016-09-08', 30),
('B', 4, '2020-06-09', 256),
('B', 5, '2022-03-26', 23);

select *from invoice;
 
 select max(amount) as 'Monto Máximo' from invoice;
 select min(amount) as 'Monto Mínimo' from invoice;
 
 select min(amount) as 'Monto Mínimo' from invoice where year (date) >=2000 and year (date) <=2008;

select min(amount) from invoice where year (date) >2000 and year (date) <2023;

select *from invoice where year (date)=2016;

select*from invoice where id='3';

select count(*) as 'Cantidad de Facturas' from invoice;

select count(*) as 'Facturas entre 35 y 40)' from invoice where amount>=35 and amount<=40;

select count(*) as 'Cantidad facturas año 2011' from invoice where year (date)=2011;
select count(*) as 'Cantidad facturas año 2012' from invoice where year (date)=2012;
select count(*) as 'Cantidad facturas año 2013' from invoice where year (date)=2013;
select count(*) as 'Cantidad facturas año 2016' from invoice where year (date)=2016;
select count(*) as 'Cantidad facturas año 2020' from invoice where year (date)=2020;
select count(*) as 'Cantidad facturas año 2022' from invoice where year (date)=2022;
select count(*) as 'Cantidad de Facturas B' from invoice where letter='B';

select letter, count(*) as 'Recuento' from invoice group by letter;
select year (date), count(*) from invoice group by year(date);











 
 
 

