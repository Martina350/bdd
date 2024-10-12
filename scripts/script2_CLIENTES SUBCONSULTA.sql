select cl.cedula, cl.nombre, cl.apellido, cl.edad from
clientes cl, compras co
where 
cl.compras_cedula=co.cedula
and nombre like 'Monica'