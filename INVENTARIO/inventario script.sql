drop table if exists categorias;
create table categorias(
	codigo_cat serial not null,
	nombre varchar(100) not null,
	categoria_padre int,
	constraint categorias_pk primary key (codigo_cat),
	constraint categorias_fk foreign key (categoria_padre)
	references categorias (codigo_cat)
);

insert into categorias(nombre, categoria_padre)
values ('Materia Prima',null);

insert into categorias(nombre, categoria_padre)
values ('Proteina',1);

insert into categorias(nombre, categoria_padre)
values ('Salsas',1);

insert into categorias(nombre, categoria_padre)
values ('Punto de Venta',null);

insert into categorias(nombre, categoria_padre)
values ('Bebidas',4);

insert into categorias(nombre, categoria_padre)
values ('Con Alcohol',5);

insert into categorias(nombre, categoria_padre)
values ('Sin Alcohol',5);

select*from categorias;

drop table if exists categorias_unidades_medida;
create table categorias_unidades_medida (
	codigo char(1) not null,
	nombre varchar (100) not null,
	constraint categorias_unidades_medida_pk primary key (codigo)
);

insert into categorias_unidades_medida (codigo, nombre)
values ('u', 'unidades');

insert into categorias_unidades_medida (codigo, nombre)
values ('v', 'volumen');

insert into categorias_unidades_medida (codigo, nombre)
values ('p', 'peso');

select*from categorias_unidades_medida;

drop table if exists unidades_medida;
create table unidades_medida (
	codigo_udm char(2) not null,
	categoria_udm char (1) not null,
	descripcion varchar(50) not null,
	constraint unidades_medida_pk primary key (codigo_udm),
    constraint unidades_medida_fk foreign key (categoria_udm)
    references categorias_unidades_medida (codigo)
);

insert into unidades_medida (codigo_udm, categoria_udm, descripcion)
values ('ml', 'v', 'mililitros');

insert into unidades_medida (codigo_udm, categoria_udm, descripcion)
values ('l', 'v', 'litros');

insert into unidades_medida (codigo_udm, categoria_udm, descripcion)
values ('u', 'u', 'unidad');

insert into unidades_medida (codigo_udm, categoria_udm, descripcion)
values ('d', 'u', 'decena');

insert into unidades_medida (codigo_udm, categoria_udm, descripcion)
values ('g', 'p', 'gramos');

insert into unidades_medida (codigo_udm, categoria_udm, descripcion)
values ('kg', 'p', 'kilogramos');

insert into unidades_medida (codigo_udm, categoria_udm, descripcion)
values ('lb', 'p', 'libras');

select * from unidades_medida;

drop table if exists tipo_documento;
create table tipo_documento (
	codigo char(1),
    descripcion varchar(50) not null,
    constraint tipo_documento_pk primary key (codigo)
);

insert into tipo_documento (codigo, descripcion)
values ('c', 'cedula');

insert into tipo_documento (codigo, descripcion)
values ('r', 'ruc');

select * from tipo_documento;

drop table if exists proveedor;
create table proveedor (
    ruc_cedula varchar(15) not null,
    tipo_documento char(1) not null,
    nombre varchar(50) not null,
    telefono varchar(15) not null,
    correo varchar(50) not null,
    direccion varchar(100) not null,
    constraint proveedor_pk primary key (ruc_cedula),
    constraint proveedor_tipo_documento_fk foreign key (tipo_documento)
    references tipo_documento (codigo)
);

insert into proveedor (ruc_cedula, tipo_documento, nombre, telefono, correo, direccion)
values ('1726312745001', 'r', 'confiteca', '0985236477', 'confitecadulces@gmail.com', 'los valles');

insert into proveedor (ruc_cedula, tipo_documento, nombre, telefono, correo, direccion)
values ('1726312745', 'c', 'martina leon', '0962837277', 'martinacamilaleon@gmail.com', 'mitad del mundo');

select * from proveedor;

drop table if exists producto;
create table producto (
    codigo_producto serial,
    nombre varchar(50) not null,
    udm char(2) not null,
    precio_venta money not null,
    tiene_iva boolean not null,
    coste money not null,
    categoria int not null,
    stock int,
    constraint producto_pk primary key (codigo_producto),
    constraint producto_udm foreign key (udm)
    references unidades_medida (codigo_udm),
    constraint producto_categoria_fk foreign key (categoria)
    references categorias (codigo_cat)
);

insert into producto (nombre, udm, precio_venta, tiene_iva, coste, categoria, stock)
values ('Coca Cola', 'u', 0.5804, true, 0.3729, 7, 105);

insert into producto (nombre, udm, precio_venta, tiene_iva, coste, categoria, stock)
values ('Salsa de Tomate', 'kg', 0.95, true, 0.6736, 3, 49);

select * from producto;

drop table if exists estados_pedido;
create table estados_pedido (
    codigo char(1),
    descripcion varchar(50) not null,
    constraint estados_pedido_pk primary key (codigo)
);

insert into estados_pedido (codigo, descripcion)
values ('s', 'solicitado');

insert into estados_pedido (codigo, descripcion)
values ('r', 'recibido');

select * from estados_pedido;

drop table if exists cabecera_pedido;
create table cabecera_pedido (
    codigo serial,
    proveedor varchar(15) not null,
    fecha date not null,
    estado char(1) not null,
    constraint cabecera_pedido_pk primary key (codigo),
    constraint cabecera_pedido_proveedor_fk foreign key (proveedor)
    references proveedor (ruc_cedula),
    constraint cabecera_pedido_estado_fk foreign key (estado)
    references estados_pedido (codigo)
);

insert into cabecera_pedido (proveedor, fecha, estado)
values ('1726312745001', '2024-11-30', 'r');

insert into cabecera_pedido (proveedor, fecha, estado)
values ('1726312745', '2024-11-30', 's');

select * from cabecera_pedido;

drop table if exists detalle_pedido;
create table detalle_pedido (
    codigo serial,
    cabecera_de_pedido int not null,
    producto int not null,
    cantidad int not null,
    subtotal money,
    constraint detalle_pedido_pk primary key (codigo),
    constraint detalle_pedido_cabecera_fk foreign key (cabecera_de_pedido) references cabecera_pedido (codigo),
    constraint detalle_pedido_producto_fk foreign key (producto) references producto (codigo_producto)
);

insert into detalle_pedido (cabecera_de_pedido, producto, cantidad, subtotal)
values (1, 1, 100, 37.29);

insert into detalle_pedido (cabecera_de_pedido, producto, cantidad, subtotal)
values (1, 2, 50, 11.8);

insert into detalle_pedido (cabecera_de_pedido, producto, cantidad, subtotal)
values (2, 1, 10, 3.73);

select * from detalle_pedido;

drop table if exists historial_stock;
create table historial_stock (
    codigo serial,
    fecha timestamp without time zone,
    referencia varchar(20),
    producto int,
    cantidad int,
    constraint historial_stock_pk primary key (codigo),
    constraint historial_stock_producto_fk foreign key (producto)
    references producto (codigo_producto)
);

insert into historial_stock (fecha, referencia, producto, cantidad)
values ('2024-11-10 12:55', 'pedido1', 1, 100);

insert into historial_stock (fecha, referencia, producto, cantidad)
values ('2024-11-10 12:55', 'pedido1', 2, 50);

insert into historial_stock (fecha, referencia, producto, cantidad)
values ('2024-11-12 12:55', 'pedido2', 2, 50);

insert into historial_stock (fecha, referencia, producto, cantidad)
values ('2024-11-13 12:55', 'venta1', 1, -5);

insert into historial_stock (fecha, referencia, producto, cantidad)
values ('2024-11-14 12:55', 'venta1', 2, -1);

select * from historial_stock;

drop table if exists cabecera_ventas;
create table cabecera_ventas (
    codigo serial,
    fecha date,
    subtotal money,
    iva money,
    total money,
    constraint cabecera_ventas_pk primary key (codigo)
);

insert into cabecera_ventas (fecha, subtotal, iva, total)
values ('2024-11-15', 3.85, 0.46, 4.31);

select * from cabecera_ventas;

drop table if exists detalle_ventas;
create table detalle_ventas (
    codigo serial,
    cabecera_de_ventas int,
    producto int,
    cantidad int,
    precio_venta money,
    subtotal money,
    subtotal_iva money,
    constraint detalle_ventas_pk primary key (codigo),
    constraint detalle_ventas_cabecera_fk foreign key (cabecera_de_ventas)
    references cabecera_ventas (codigo),
    constraint detalle_ventas_producto_fk foreign key (producto)
    references producto (codigo_producto)
);

insert into detalle_ventas (cabecera_de_ventas, producto, cantidad, precio_venta, subtotal, subtotal_iva)
values (1, 1, 5, 0.58, 2.90, 0.35);

insert into detalle_ventas (cabecera_de_ventas, producto, cantidad, precio_venta, subtotal, subtotal_iva)
values (1, 2, 1, 0.95, 0.95, 0.04);

select * from detalle_ventas;