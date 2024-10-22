select*from 
transacciones tr, banco ba
where tr.tipo like '%C%'
and tr.numero_cuenta between '22001' and '22004'