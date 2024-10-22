select es.cedula, es.nombre, es.apellido,es.email, es.fecha_nacimiento,es.codigo_profesor from
estudiantes es, profesores pr
where
es.codigo_profesor=pr.estudiantes_codigo_profesor
and nombre like 'Francisco'