select sum(cast(monto as numeric))
from clientes cl, compras co
group by cl

select count (id_compra)
from clientes cl, compras co
where co.fecha_compra = '10/10/2022'

