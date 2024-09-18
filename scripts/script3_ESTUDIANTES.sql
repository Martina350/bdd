--crear tabla estudiar
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1745698223','Kamila','Morales','kamilala23@gmail.com','19/12/2005')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1726312745','Martina','Leon','martinacamialeon@gmail.com','20/08/2005')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1785426396','Salome','Carrillo','salocarrillo24@gmail.com','24/04/2004')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1725364718','Emilia','Egas','emilulu_egas@gmail.com','19/07/2006')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0963254715','Dayannara','Campoverde','dyanmc1701@gmail.com','06/11/2006')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1723896435','Adrian','Valverde','adrianlexluthor@gmail.com','04/02/2007')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1738185207','Bryan','Saldarriaga','bryanjoss55@gmail.com','24/10/2006')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1715623114','Sofia','Rojas','sofirogabriela@gmail.com','24/10/2006')

select*from estudiantes

select cedula,nombre from estudiantes

select nombre from estudiantes 
where cedula  like '17%'

select nombre,apellido from estudiantes
where nombre like 'A%'

select*from estudiantes
where cedula like '17%'

update estudiantes set apellido='Hernandez'
where cedula like '17%'