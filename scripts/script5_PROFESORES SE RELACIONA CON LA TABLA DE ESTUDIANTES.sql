select*from estudiantes
delete from estudiantes

alter table estudiantes
add column codigo_profesor int

alter table estudiantes
drop constraint estudiantes_pk

alter table estudiantes
add constraint estudiantes_pk primary key (codigo_profesor)

alter table profesores
drop constraint profesores_pk

select*from profesores

create table profesores(
	codigo int,
	nombre varchar(50) not null
)

alter table profesores
add column estudiantes_codigo_profesor int

alter table profesores
add constraint profesores_estudiantes_fk
foreign key (estudiantes_codigo_profesor)
references estudiantes(codigo_profesor)

select*from profesores

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0102030405', 'pedro', 'andrade', 'pedro@gmail.com', '2000-01-15', 1); 

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0203040506', 'luis', 'crespo', 'luis@gmail.com', '2001-02-18', 2);

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0304050607', 'maria', 'garcia', 'maria@gmail.com', '1999-03-22', 3);

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0405060708', 'jose', 'fernandez', 'jose@gmail.com', '2002-04-10', 4);

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0506070809', 'ana', 'rendon', 'ana@gmail.com', '1998-05-30', 5);

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0607080910', 'carlos', 'mendoza', 'carlos@gmail.com', '1997-06-12', 2);

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0708091011', 'lucia', 'cano', 'lucia@gmail.com', '2003-07-09', 3);

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0809101112', 'jorge', 'manzano', 'jorge@gmail.com', '2000-08-16', 1); 

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('0910111213', 'sofia', 'lopez', 'sofia@gmail.com', '2001-09-05', 4);

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) 
values ('1011121314', 'gabriel', 'sanchez', 'gabriel@gmail.com', '1999-10-11', 5);

insert into profesores (codigo, nombre) 
values (1, 'francisco');

insert into profesores (codigo, nombre) 
values (2, 'maria');

insert into profesores (codigo, nombre) 
values (3, 'juan');

insert into profesores (codigo, nombre) 
values (4, 'ana');

insert into profesores (codigo, nombre) 
values (5, 'carlos');