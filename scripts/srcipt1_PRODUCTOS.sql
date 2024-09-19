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
values (25,'coca-cola','bebida de 2 litros',3.50,125);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (63,'pepsi','bebida de 1 litro',1.50,110);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (206,'trululu','gomitas acidas',0.90,45);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (85,'leche tony','bebida sabor chocolate',0.50,100);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (19,'kinder huevo','chocolate kinder',2.50,335);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (154,'quaker','avenas y cereales',2.02,128);

insert into productos (codigo,nombre,precio,stock)
values (789,'tomate',0.30,488);

insert into productos (codigo,nombre,precio,stock)
values (740,'manzana',0.30,334);

insert into productos (codigo,nombre,precio,stock)
values (722,'cilantro',0.15,89);

insert into productos (codigo,nombre,precio,stock)
values (332,'queso',1.30,330);

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);

insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);

insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);

insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);

insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);

insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);

select codigo,nombre,precio,stock from productos
select*from productos

select*from productos
where nombre like 'q%'

select*from productos
where descripcion is null

select*from productos
where precio between money(2) and money(3)

select*from productos
where descripcion is null

update productos set stock=0
where descripcion is null

delete from productos
where descripcion is null 

select*from productos

select*from productos 
where stock=10 and precio<money(10)

select*from productos
where nombre like 'm%' or descripcion is null

select nombre from productos
where descripcion is null or stock=0