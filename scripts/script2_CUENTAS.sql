--crear tabla cuentas
create table cuentas(
numero_cuenta char(5) not null,
cedula_propietario char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('52896','14785','20/08/2024',356.25);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('74125','15975','06/11/2024',450.15);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('36985','12345','28/05/2024',142.36);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12547','14865','14/03/2024',65.02);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('69853','17532','12/10/2024',12.04);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('48856','17116','26/05/2024',558.45);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('23456','17263','11/02/2024',800.00);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12875','17582','24/12/2024',6.00);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('95147','17526','16/06/2024',125.35);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('48265','17853','19/04/2024',20.15);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('30302','17141','18/09/2024',14.15);

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('52526','17889','08/07/2024',16.75);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

select*from cuentas

select numero_cuenta, saldo from cuentas 

select*from cuentas
where fecha_creacion >= '18/09/2024'
and fecha_creacion <= '20/08/2024'

select numero_cuenta, saldo from cuentas
where fecha_creacion <= '26/05/2024'
and fecha_creacion >= '14/03/2024'

select*from cuentas
where cedula_propietario like '17%'

update cuentas set saldo=10
where cedula_propietario like '17%'

delete from cuentas
where cedula_propietario like '14%'

select*from cuentas

select numero_cuenta,saldo from cuentas
where saldo>money(100) 
and saldo<money(1000)

select*from cuentas
where fecha_creacion <= '15/10/2024'
and	fecha_creacion >='22/01/2023'

select*from cuentas
where saldo=money(0) 
or cedula_propietario like '%2'