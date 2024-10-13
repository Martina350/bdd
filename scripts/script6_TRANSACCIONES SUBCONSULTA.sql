select*from
transacciones tr, banco ba
where 
tr.banco_codigo_transaccion = ba.codigo_transaccion
and codigo_transaccion = 1