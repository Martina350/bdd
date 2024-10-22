select vd.codigo, vd.nombre, vd.descripcion, vd.valoracion, pl.id_plataforma, pl.nombre_plataforma, pl.codigo_videojuego from 
videojuegos vd, plataformas pl
where 
vd. descripcion like 'guerra' 
or vd. valoracion > 7
or vd.nombre like '%c'
or vd.valoracion > 8 
or vd.nombre like '%d'