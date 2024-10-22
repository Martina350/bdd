select pr.nombre,pr.stock,ve.cantidad from
productos pr, ventas ve
where nombre like '%m%'
or descripcion like '0'