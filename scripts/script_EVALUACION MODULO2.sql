drop table if exists historial_movimientos
drop table if exists productos
drop table if exists categorias

create table categorias (
    id char(4) not null,
    nombre varchar(50) not null,
	constraint idcategoria_pk primary key (id)
)

create table productos (
    id char(5) not null,
    nombre varchar(100) not null,
    precio_venta money not null,
    precio_compra money not null,
    id_categoria char(4) not null,
    constraint categorias_fk
	foreign key (id_categoria) 
	references categorias(id),
	constraint id_pk primary key (id)
)

create table historial_movimientos (
    id serial not null,
    id_producto char(5) not null,
    cantidad int not null,
    fecha_movimiento timestamp not null,
    constraint productos_fk
	foreign key (id_producto) 
	references productos(id),
	constraint productos_historial_pk primary key (id)
)

insert into categorias (id, nombre)
values ('c001', 'bebidas');

insert into categorias (id, nombre)
values ('c002', 'snacks');

insert into categorias (id, nombre)
values ('c003', 'golosinas');

insert into productos (id, nombre, precio_venta, precio_compra, id_categoria)
values ('p001', 'coca cola 350 ml', 0.7, 0.55, 'c001');

insert into productos (id, nombre, precio_venta, precio_compra, id_categoria)
values ('p002', 'coca cola 100 ml', 0.4, 0.25, 'c001');

insert into productos (id, nombre, precio_venta, precio_compra, id_categoria)
values ('p003', 'doritos 50g', 0.5, 0.35, 'c002');

insert into productos (id, nombre, precio_venta, precio_compra, id_categoria)
values ('p004', 'manicho', 0.25, 0.15, 'c003');

insert into productos (id, nombre, precio_venta, precio_compra, id_categoria)
values ('p005', 'tango', 0.5, 0.2, 'c003');

insert into historial_movimientos (id_producto, cantidad, fecha_movimiento)
values ('p001', 10, '2020-10-28 09:45');

insert into historial_movimientos (id_producto, cantidad, fecha_movimiento)
values ('p002', 8, '2020-10-28 10:20');

insert into historial_movimientos (id_producto, cantidad, fecha_movimiento)
values ('p001', 12, '2020-10-28 12:45');

select * from productos
select * from categorias
select * from historial_movimientos
