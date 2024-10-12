select cl.cedula, cl.nombre, cl.apellido, ec.descripcion from
clientes cl, estado_civil ec
where
cl.estado_civil_codigo = ec.codigo
and nombre like 'L%'