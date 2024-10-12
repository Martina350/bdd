select*from transacciones

delete from transacciones

create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar (10),
	constraint banco_pk primary key(codigo_transaccion)
)

alter table transacciones
add column banco_codigo_transaccion int

alter table transacciones
add constraint transacciones_banco_fk
foreign key (banco_codigo_transaccion) 
references banco(codigo_transaccion)

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (1, '22001', 500.00, 'C', '2023-08-01', '09:00:00', 1);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (2, '22002', 750.00, 'C', '2023-08-02', '10:00:00', 2);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (3, '22003', 1000.00, 'C', '2023-08-03', '11:00:00', 3);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (4, '12345', 300.00, 'D', '2023-08-05', '08:30:00', 4);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (5, '12346', 150.00, 'D', '2023-08-06', '09:45:00', 5);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (6, '12347', 600.00, 'C', '2023-08-07', '10:15:00', 6);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (7, '12348', 850.00, 'D', '2023-08-08', '11:30:00', 7);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (8, '22004', 950.00, 'C', '2023-08-09', '12:45:00', 8);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (9, '12349', 450.00, 'D', '2023-08-10', '13:30:00', 9);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora, banco_codigo_transaccion)
values (10, '12350', 500.00, 'C', '2023-08-11', '14:00:00', 10);

select*from transacciones

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (1, 1, 'Primera');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (2, 2, 'Segunda');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (3, 3, 'Tercera');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (4, 4, 'Cuarta');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (5, 5, 'Quinta');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (6, 6, 'Sexta');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (7, 7, 'Séptima');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (8, 8, 'Octava');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (9, 9, 'Novena');

insert into banco (codigo_banco, codigo_transaccion, detalle)
values (10, 10, 'Décima');

select*from banco