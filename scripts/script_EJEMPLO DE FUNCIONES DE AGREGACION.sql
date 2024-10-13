select count (pr.cedula)
from persona pe, prestamo pr
where pe.prestamo_cedula = pr.cedula
and numero_hijos = 1

select MIN(cast(cantidad_ahorrada as numeric))
from persona

select SUM(cast(cantidad_ahorrada as numeric))
from persona pe, prestamo pr
where pe.prestamo_cedula = pr.cedula
and numero_hijos = 1

select AVG(cast(cantidad_ahorrada as numeric))
from persona pe, prestamo pr
where pe.prestamo_cedula = pr.cedula
and numero_hijos = 1

select prestamo_cedula, sum(numero_hijos) from persona
group by prestamo_cedula