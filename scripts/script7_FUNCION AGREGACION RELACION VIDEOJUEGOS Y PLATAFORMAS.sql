select count(pl) as total_plataformas
from videojuegos vd, plataformas pl
group by pl.codigo_videojuego

select round(avg(valoracion), 2) as valoracion_promedio
from videojuegos vd, plataformas pl