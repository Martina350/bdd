select*from
persona pe, prestamo pr
where pe.prestamo_cedula=pr.cedula
and nombre like 'sean'