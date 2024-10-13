select pl.id_plataforma, pl.nombre_plataforma, pl.codigo_videojuego from
videojuegos vd, plataformas pl
where
vd.plataformas_codigo_videojuego = pl.codigo_videojuego
and nombre like 'god of war'