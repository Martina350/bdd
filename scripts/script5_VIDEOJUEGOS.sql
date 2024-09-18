--crear tabla videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('014','minecraft','videojuego de construcción','100')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('026','roblox','videojuegos en línea','95')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('030','fortnite','juego multiplataforma gratuito','90')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('035','clash royal','videojuego de estrategia','100')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('048','fall guys','videojuego de plataformas y battle royale','85')

select*from videojuegos


