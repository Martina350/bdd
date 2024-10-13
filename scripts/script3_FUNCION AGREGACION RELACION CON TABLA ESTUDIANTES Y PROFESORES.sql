select count (*) as total_estudiantes
from estudiantes es, profesores pr
group by pr

select round(avg(extract(year from current_date) - extract(year from fecha_nacimiento)) ) as edad_promedio
from estudiantes es, profesores pr