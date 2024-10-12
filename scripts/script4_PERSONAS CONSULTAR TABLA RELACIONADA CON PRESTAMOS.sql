select pe.cantidad_ahorrada,pr.monto,pr.garante from 
persona pe, prestamo pr
where monto>money(100) 
and monto<money(1000) 