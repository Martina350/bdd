--crear tabla registros entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key (codigo_registro)
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('52863','1748963525','30/10/2001','14:42')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('89674','1710113040','05/08/2004','16:05')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('31325','0985742163','11/01/2008','20:14')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('85964','1758241698','29/07/2010','09:31')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('47142','1712132524','13/04/2012','15:59')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('13245','0987456123','15/01/2013','10:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('27456','1721222354','21/03/2016','23:59')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('36945','1758565425','04/06/2017','13:12')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('24875','1779964112','17/11/2019','22:40')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('64789','0960035847','21/10/2024','20:51')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('44558','1718192536','20/02/2024','07:51')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('58289','1745545658','28/02/2024','08:54')

select*from registros_entrada

select cedula_empleado,fecha,hora from registros_entrada 

select*from registros_entrada
where hora 
between '07:00' and '14:00'

select*from registros_entrada
where hora > '8:00'