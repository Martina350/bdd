select MAX(cast(precio as numeric)) as precio_maximo
from productos pr, ventas ve

select SUM (cantidad) as cantidad_total_vendida
from productos pr, ventas ve