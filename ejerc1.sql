create  database PhoneBookDb;
use PhoneBookDb;
create table contact (
id int auto_increment,
name varchar (50) not null,
last_name varchar  (50) not null,
address varchar (100),
number_phone varchar (20) not null,
primary key (id)
);

insert into contact
(name, last_name, address, number_phone)
values
('Clara', 'Perez', 'calle 34 78B-15', '3002331625'),
('Sol','Peña', 'carrera 20 56-34', '3005158643'),
('Carlos', 'Afanador', 'tv 50 123 70', '3156780965'),
('Diana','Vargas', 'carrera 10 65-34', '3010987654'),
('Pedro', 'Paramo', 'calle 76 34 23', '3119876543');

insert into contact
(name, last_name, address, number_phone)
values 
('Luisa', 'vargas', 'calle 45 35 98', '3118765432');
insert into contact
(name, last_name, address, number_phone)
values 
('Luis', 'Casas', 'calle 34 12 08', '3158765432');

select*from contact;






