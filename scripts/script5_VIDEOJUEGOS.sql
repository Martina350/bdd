--crear tabla videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('014','minecraft','videojuego de construcción','100');

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('026','roblox','videojuegos en línea','95');

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('030','fortnite','juego multiplataforma gratuito','90');

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('035','clash royal','videojuego de estrategia','100');

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('048','fall guys','videojuego de plataformas y battle royale','85');

insert into videojuegos(codigo,nombre,valoracion)
values ('052','five nights at freddys','95');

insert into videojuegos(codigo,nombre,valoracion)
values ('055','geometry dash','98');

insert into videojuegos(codigo,nombre,valoracion)
values ('061','the last of us','94');

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Clash of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de pelea', 8);

select codigo,nombre,valoracion from videojuegos

select*from videojuegos

select*from videojuegos
where nombre like 'c%'

select*from videojuegos
where valoracion 
between '90' and '100'

select*from videojuegos 
where descripcion is null

select*from videojuegos 
where valoracion > '90'

update videojuegos set descripcion='mejor puntuado'
where valoracion > '90'

delete from videojuegos
where valoracion<'90'

select*from videojuegos 

select*from videojuegos
where nombre like 'C%' or valoracion='7'

select*from videojuegos
where codigo between '3' and '7' 
or valoracion='7'

select*from videojuegos
where nombre like 'C%' and valoracion>='7'
or nombre like 'D%' and valoracion>='8'