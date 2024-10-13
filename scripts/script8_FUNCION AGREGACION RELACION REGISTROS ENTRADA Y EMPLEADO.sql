select count(codigo_registro)as total_registros
from registros_entrada re, empleado em
group by re.cedula_empleado

select MIN(re.fecha) AS fecha_minima, 
MAX(re.fecha) AS fecha_maxima
from registros_entrada re, empleado em