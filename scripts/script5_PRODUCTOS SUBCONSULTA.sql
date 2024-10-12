select pr.nombre, pr.stock from
productos pr, ventas ve
where 
pr.codigo=ve.codigo_producto
and ve.cantidad like '5%'
