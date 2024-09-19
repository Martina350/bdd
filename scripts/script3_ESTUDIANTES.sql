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
values('1745698223','Kamila','Morales','kamilala23@gmail.com','19/12/2005');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1726312745','Martina','Leon','martinacamialeon@gmail.com','20/08/2005');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1785426396','Salome','Carrillo','salocarrillo24@gmail.com','24/04/2004');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1725364718','Emilia','Egas','emilulu_egas@gmail.com','19/07/2006');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0963254715','Dayannara','Campoverde','dyanmc1701@gmail.com','06/11/2006');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1723896435','Adrian','Valverde','adrianlexluthor@gmail.com','04/02/2007');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1738185207','Bryan','Saldarriaga','bryanjoss55@gmail.com','24/10/2006');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1715623114','Sofia','Rojas','sofirogabriela@gmail.com','24/10/2006');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');

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

delete from estudiantes
where cedula like '%5'

select*from estudiantes

select nombre,apellido from estudiantes
where nombre like 'M%' or apellido like '%Z'

select nombre from estudiantes
where cedula like '%18%' and cedula like '%32%'

select nombre,apellido from estudiantes
where cedula like '%06' or cedula like '17%'