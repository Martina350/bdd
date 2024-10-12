select*from cuentas

delete from cuentas

alter table usuario
alter column cedula type char(5);

create table usuario (
	cedula char(10),
	nombre varchar(20) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_pk primary key(cedula)
)


alter table cuentas
add column usuario_cedula char(10) 

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (usuario_cedula)
references usuario(cedula)


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('30401','17475','21/08/2022',356.25,'17475')

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20005', '10002', '10/09/2023', 700.00,'10002')

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20010', '10005', '18/02/2023', 2500.00,'10005')

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20007', '10003', '05/09/2023', 1100.00,'10003')

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20004', '10004', '25/11/2022', 500.00,'10004')

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20002', '10002', '15/01/2023', 150.00,'10002')

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20001','17475','01/05/2023',356.25,'17475)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20006', '10004', '08/11/2022', 500.00,'10004')

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20003', '10003', '10/07/2023', 300.00, '10003')

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cedula)
values ('20009', '10004', '13/11/2023', 800.00)

select*from cuentas

select*from usuario

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('17475','Adrian','Valverde','corriente',1000.00);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('10002', 'Maria', 'Gomez', 'Corriente', 500.00);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('10005', 'Carlos', 'Garcia', 'Corriente', 1200.00);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('10004', 'Ana', 'Lopez', 'Credito', 800.00);

insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values('10003', 'Luis', 'Martinez', 'Ahorro', 300.00);

select*from usuario
