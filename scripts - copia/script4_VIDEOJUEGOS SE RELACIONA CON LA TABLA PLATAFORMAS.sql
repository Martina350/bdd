select*from videojuegos

delete from videojuegos

alter table videojuegos
add column plataformas_codigo_videojuego int not null
drop table plataformas
create table plataformas (
    id_plataforma int not null,
    nombre_plataforma varchar(50) not null,
    codigo_videojuego int not null,
    constraint plataformas_pk primary key (codigo_videojuego)
)

alter table videojuegos
add constraint videojuegos_plataformas_fk 
foreign key (plataformas_codigo_videojuego)
references plataformas(codigo_videojuego)

select*from videojuegos

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (1, 'call of duty: modern warfare', 'juego de guerra moderna', 9,1);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (2, 'gears of war', 'acción y guerra futurista', 8,2);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (3, 'god of war', 'mitología y guerra', 10,3);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (4, 'cyberpunk 2077', 'futuro distópico', 7,4);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (5, 'cuphead', 'plataformas con estilo retro', 9,5);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (6, 'dark souls', 'rol y acción desafiante', 9,6);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (7, 'doom eternal', 'disparos y guerra infernal', 9,7);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (8, 'destiny 2', 'acción y guerra espacial', 8,8);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (9, 'civilization vi', 'estrategia y guerra entre civilizaciones', 8,9);

insert into videojuegos (codigo, nombre, descripcion, valoracion,plataformas_codigo_videojuego)
values (10, 'days gone', 'supervivencia postapocalíptica', 7,10);

select*from plataformas

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (1, 'nintendo switch', 1);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (2, 'nintendo switch', 2);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (3, 'pc', 3);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (4, 'playstation 4', 4);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (5, 'playstation 4', 5);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (6, 'xbox one', 6);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (7, 'pc', 7);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (8, 'mobile', 8);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (9, 'playstation 5', 9);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values (10, 'nintendo switch', 10);