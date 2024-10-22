select cl.nombre, cl.apellido from 
clientes cl, compras co
where cl.cedula like '7%'
and co.cedula like '7%'