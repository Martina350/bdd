-- crear tabla productos
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
insert into productos (codigo,nombre,descripcion,precio,stock)
values (25,'coca-cola','bebida de 2 litros',3.50,125)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (63,'pepsi','bebida de 1 litro',1.50,110)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (206,'trululu','gomitas acidas',0.90,45)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (85,'leche tony','bebida sabor chocolate',0.50,100)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (19,'kinder huevo','chocolate kinder',2.50,335)

insert into productos (codigo,nombre,precio,stock)
values (789,'tomate',0.30,488)

insert into productos (codigo,nombre,precio,stock)
values (740,'manzana',0.30,334)

insert into productos (codigo,nombre,precio,stock)
values (722,'cilantro',0.15,89)

select codigo,nombre,precio,stock from productos
select*from productos