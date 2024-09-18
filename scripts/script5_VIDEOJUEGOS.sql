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

insert into videojuegos(codigo,nombre,valoracion)
values ('052','five nights at freddys','95')

insert into videojuegos(codigo,nombre,valoracion)
values ('055','geometry dash','98')

insert into videojuegos(codigo,nombre,valoracion)
values ('061','the last of us','94')

select codigo,nombre,valoracion from videojuegos

select*from videojuegos

select*from videojuegos
where nombre like 'c%'

select*from videojuegos
where valoracion 
between '90' and '100'

select*from videojuegos 
where descripcion is null
