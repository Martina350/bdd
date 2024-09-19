--crear tabla transacciones
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('258','52896',24.58,'D','19/02/2024','10:25');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('400','78952',500.63,'D','22/04/2024','12:14');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('147','22247',105.63,'C','09/11/2024','18:40');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('582','32354',19.35,'D','31/12/2024','22:31');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('458','12213',624.47,'C','26/07/2024','05:55');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('366','58894',1.25,'D','02/01/2024','08:12');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('693','22774',1.530,'D','30/05/2024','16:40');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('789','36369',300.50,'C','13/07/2024','04:30');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('852','11478',41.26,'C','28/08/2024','13:35');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('963','20153',147.25,'D','24/10/2024','08:10');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(23210, '32015', 400, 'C','07/12/2015','13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

select*from transacciones

select*from transacciones
where tipo like 'C%'

select*from transacciones
where monto 
between money(200) and money(2000) 

select codigo,monto,tipo,fecha from transacciones
where fecha is not null

select*from transacciones
where monto>money(100) and monto<money(500) 
and fecha between '01/08/2024' and '31/08/2024' 
and hora between '14:00' and '20:00'

update transacciones set tipo='T'
where monto>money(100) and monto<money(500) 
and fecha between '01/08/2024' and '31/08/2024' 
and hora between '14:00' and '20:00'

delete from transacciones 
where hora 
between '14:00' and '18:00'
and fecha between '01/08/2024' and '31/08/2024'

select*from transacciones

select*from transacciones
where tipo like 'C%' 
and numero_cuenta between 22001 and 22004

select*from transacciones
where tipo like 'D%'
and fecha ='25/05/2024' 
and numero_cuenta between 22007 and 22010

select*from transacciones
where codigo between 1 and 5 
and numero_cuenta between 22002 and 22004
and fecha='26/05/2024' and fecha='29/05/2024'