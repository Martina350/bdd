select es.codigo_profesor, count (*) as total_estudiantes
from estudiantes es, profesores pr
group by es.codigo_profesor

select round(avg(extract(year from current_date) - extract(year from fecha_nacimiento)) ) as edad_promedio
from estudiantes es, profesores pr
