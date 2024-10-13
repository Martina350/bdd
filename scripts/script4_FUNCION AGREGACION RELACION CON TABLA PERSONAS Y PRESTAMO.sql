select sum(cast(monto as numeric)) as monto_total_prestamos
from persona pe, prestamo pr
group by pe.cedula

select count (*) as total_personas
from persona pe, prestamo pr
where numero_hijos > 1