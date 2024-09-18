--crear tabla cuentas
create table cuentas(
numero_cuenta char(5) not null,
cedula_propietario char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('52896','14785','20/08/2024',356.25)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('74125','15975','06/11/2024',450.15)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('36985','12345','28/05/2024',142.36)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12547','14865','14/03/2024',65.02)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('69853','17532','12/10/2024',12.04)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('48856','17116','26/05/2024',558.45)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('23456','17263','11/02/2024',800.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12875','17582','24/12/2024',6.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('95147','17526','16/06/2024',125.35)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('48265','17853','19/04/2024',20.15)

select*from cuentas