select pr.codigo, es.nombre, es.apellido from 
estudiantes es, profesores pr
where es.codigo_profesor = pr.estudiantes_codigo_profesor
and nombre like 'n%'
and apellido like 'n%'
