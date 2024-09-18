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
values ('258','52896',24.58,'D','19/02/2024','10:25')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('400','78952',500.63,'D','22/04/2024','12:14')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('147','22247',105.63,'C','09/11/2024','18:40')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('582','32354',19.35,'D','31/12/2024','22:31')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('458','12213',624.47,'C','26/07/2024','05:55')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('366','58894',1.25,'D','02/01/2024','08:12')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('693','22774',1.530,'D','30/05/2024','16:40')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('789','36369',300.50,'C','13/07/2024','04:30')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('852','11478',41.26,'C','28/08/2024','13:35')

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('963','20153',147.25,'D','24/10/2024','08:10')

select*from transacciones