create database SupermercadosSA;
use SupermercadosSA;

create table sucursal(
id int not null,
nombre varchar (15) not null,
direcccion varchar(25) not null,
primary key (id)
);

select*from sucursal;


create table empleado(
idEmpleado int not null,
Nombre varchar (15)not null,
idSucursal int,
foreign key (idSucursal) references sucursal (id),
primary key(idEmpleado)
);

insert into sucursal (id, nombre, direcccion)
values 
(14, 'Boyaca', 'Cll 6 78'),
(15, 'autopista', 'Cll 7 98'),
(16, 'Castellana', 'Cra 123 56'),
(17, 'Cordoba', 'Cll 9 23');

select*from sucursal;


insert into empleado (idEmpleado, Nombre, idSucursal)
values
(001, 'Carlos Gomez', 14),
(002, 'Camila Mantos', 14),
(003, 'Pedro Perez', 17),
(004, 'Luis fajardo', 16),
(005, 'Carolina Luna', 15);

select *from empleado;

select * 
from empleado E
join sucursal S
On E.idSucursal= S.id;

select
E.Nombre as 'Empleado',
S.nombre as 'Sucursal'
from empleado E
LEFT JOIN Sucursal S
On E.idSucursal = S.id;

select
E.Nombre as 'Empleado',
S.nombre as 'Sucursal'
from empleado E
right Join Sucursal S
on E.idSucursal= S.id;

select
E.Nombre as 'Empleado',
S.nombre as 'Sucursal'
from empleado E
join sucursal S
on E.idSucursal = S.id where idEmpleado >=003;

select
E.Nombre as 'Empleado',
S.nombre as 'Sucursal'
from empleado E
join sucursal S
on E.idSucursal = S.id where E.Nombre like "A%";








