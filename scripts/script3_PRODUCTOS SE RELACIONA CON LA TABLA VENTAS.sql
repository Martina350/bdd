select*from productos

delete from productos

alter table productos
add column ventas_codigo_producto int not null

drop table ventas

create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key (codigo_producto)
)

alter table productos
add constraint productos_ventas_fk
foreign key (ventas_codigo_producto) 
references ventas(codigo_producto)

select*from productos

update productos set descripcion=null where codigo=4
insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(1, 'Gomitas', 'Acidas', 3.50, 10,1);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(2, 'Shampoo', 'Savital', 2.50, 20,2);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(3, 'Deja', 'Deja', 1.50, 30,3);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(4, 'Pasta dental', 'Fortident', 3.00, 40,4);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(5, 'Cera', 'Cera de piso', 2.50, 50,5);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(6, 'Pan', 'Pan fresco', 1.50, 60,6);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(7, 'Queso', 'Queso tipo gouda', 5.50, 70,7);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto)
values(8, 'Leche', 'Leche entera', 2.50, 80,8);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(9, 'Jamon', 'Jamon cocido', 1.00, 90,9);

insert into productos (codigo, nombre, descripcion, precio, stock,ventas_codigo_producto) 
values(10, 'Coca Cola', 'Bebida gaseosa', 3.50, 100,29);

select*from ventas

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values (20,1,'28/04/2024',5);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (21, 2, '2024-04-28', 3);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (22, 3, '2024-04-28', 10);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (23, 4, '2024-04-28', 2);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (24, 5, '2024-04-28', 1);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (25, 6, '2024-04-28', 4);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (26, 7, '2024-04-28', 6);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (27, 8, '2024-04-28', 8);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (28, 9, '2024-04-28', 7);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (29, 10, '2024-04-28', 5);
