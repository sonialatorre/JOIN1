create database registros;
use registros;
create table r_persona (
id int auto_increment,
nombre varchar (10) not null,
apellido varchar (10) not null,
fecha_cumpleaños date,
estado_civil varchar (10) not null,
ciudad varchar (10) not null,
primary key (id)
);

insert into r_persona (nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values 
('Maria', 'Vargas', 1999-12-09, 'soltero', 'Bogota'),
('Pedro', 'luna', 1989-11-15, 'soltero', 'Bogota'),
('Laura', 'Vargas', 1986-09-04, 'casado', 'Bogota'),
('Juanita', 'Baez', 1990-10-03, 'casado', 'Cali'),
('Antonio', 'Gutierrez', 1983-04-02, 'casado', 'Medellin'),
('Marta', 'Peña', 2005-07-05, 'soltero', 'Bogota'),
('Luis', 'Rincon', 1990-04-09, 'casado', 'Cartagena'),
('Camila', 'Baez', 2000-09-05, 'soltero', 'Bogota');

select*from r_persona;

select nombre, apellido from r_persona;

select *from r_persona order by nombre ASC;

select *from r_persona where estado_civil= 'casado';

select *from r_persona where estado_civil = 'soltero';

select *from r_persona where apellido ='Baez';

select *from r_persona where apellido='Vargas' and estado_civil='soltero';

insert into r_persona (nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values ('Carla', 'Manzano', 1993-10-03, 'casado','Bogota');

delete from r_persona
where (id='3');

select *from r_persona limit 1 offset 4;

select *from r_persona where nombre like 'a%';

select*from r_persona where apellido like '%z';

select *from r_persona; 
update r_persona
set apellido = 'Alba'
where id='5'


















