--crear tabla registros entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key (codigo_registro)
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('52863','1748963525','30/10/2001','14:42');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('89674','1710113040','05/08/2004','16:05');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('31325','0985742163','11/01/2008','20:14');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('85964','1758241698','29/07/2010','09:31');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('47142','1712132524','13/04/2012','15:59');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('13245','0987456123','15/01/2013','10:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('27456','1721222354','21/03/2016','23:59');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('36945','1758565425','04/06/2017','13:12');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('24875','1779964112','17/11/2019','22:40');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('64789','0960035847','21/10/2024','20:51');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('44558','1718192536','20/02/2024','07:51');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values('58289','1745545658','28/02/2024','08:54');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');

select*from registros_entrada

select cedula_empleado,fecha,hora from registros_entrada 

select*from registros_entrada
where hora 
between '07:00' and '14:00'

select*from registros_entrada
where hora > '8:00'

select*from registros_entrada
where fecha = '05/08/2004'  

update registros_entrada set cedula_empleado='082345679' 
where fecha = '05/08/2004'

delete from	registros_entrada
where fecha >= '20/02/2024' and fecha <= '28/02/2024'

select*from registros_entrada

select*from registros_entrada
where fecha <= '01/09/2024' and fecha >= '30/09/2024'
or cedula_empleado like '%17'

select*from registros_entrada
where fecha <= '01/08/2024' and fecha >= '31/08/2024'
and cedula_empleado like '%17'
and hora between '08:00' and '12:00'

select*from registros_entrada
where fecha <= '01/08/2024' and fecha >= '30/08/2024'
and cedula_empleado like '%17'
and hora between '08:00' and '12:00'
or fecha <= '01/09/2024' and fecha >= '30/09/2024'
and cedula_empleado like '%09'
and hora between '09:00' and '13:00'