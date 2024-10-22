select cl.cedula, sum(cast(monto as numeric))as monto_total_compras
from clientes cl, compras co
group by cl.cedula

select co.fecha_compra, count (id_compra) as total_compras
from clientes cl, compras co
where co.fecha_compra = '10/10/2022'
group by co.fecha_compra