select*from clientes

delete from clientes

alter table clientes
add column compras_cedula char(10) not null

create table compras(
	id_compra int, 
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2),
	constraint compras_cedula primary key (cedula)
)

alter table clientes 
add constraint compras_cedula_fk
foreign key (compras_cedula)
references compras(cedula)

select*from clientes

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('1726312745', 'Carlos', 'Perez','U','1726312745');

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('9876543217', 'Monica', 'Gomez','U','9876543217');  

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('2345678912', 'Juan', 'Lopez','S','2345678912');

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('3456787123', 'Maria', 'Hernandez','C','3456787123'); 

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('4567891234', 'Ana', 'Martinez','C','4567891234');

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('5678912345', 'Luis', 'Garcia','S','5678912345');

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('6789123457', 'Pedro', 'Ramirez','U','6789123457'); 

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('7891234567', 'Sofia', 'Diaz','C','7891234567'); 

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('8912345678', 'Laura', 'Fernandez','S','8912345678');

insert into clientes (cedula, nombre, apellido,estado_civil_codigo,compras_cedula)
values ('9123456789','Pablo','Shez','U','9123456789');

select*from compras

insert into compras(id_compra,cedula,fecha_compra,monto)
values (2,'1726312745','30/05/2022',300.00)

insert into compras (id_compra, cedula, fecha_compra, monto)
values (3, '9876543217', '15/06/2022', 150.50);

insert into compras (id_compra, cedula, fecha_compra, monto)
values (4, '2345678912', '01/07/2022', 250.75);

insert into compras (id_compra, cedula, fecha_compra, monto)
values (5, '3456787123', '20/08/2022', 400.00);

insert into compras (id_compra, cedula, fecha_compra, monto)
values (6, '4567891234', '05/09/2022', 500.25);

insert into compras (id_compra, cedula, fecha_compra, monto)
values (7, '5678912345', '10/10/2022', 120.00);

insert into compras (id_compra, cedula, fecha_compra, monto)
values (8, '6789123457', '12/11/2022', 310.40);

insert into compras (id_compra, cedula, fecha_compra, monto)
values(9, '7891234567', '22/12/2022', 275.60);

insert into compras (id_compra, cedula, fecha_compra, monto)
values (10, '8912345678', '15/01/2023', 620.80);

insert into compras (id_compra, cedula, fecha_compra, monto)
values (11, '9123456789', '15/01/2023', 620.80);
