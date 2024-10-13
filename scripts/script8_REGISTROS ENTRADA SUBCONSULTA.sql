select re.codigo_registro, em.nombre from
registros_entrada re, empleado em
where 
re.codigo_registro = em.codigo_empleado
and re.cedula_empleado like '2201'