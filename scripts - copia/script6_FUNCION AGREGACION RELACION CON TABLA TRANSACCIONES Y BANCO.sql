select count(tr) as total_transacciones_credito
from transacciones tr, banco ba
where tr.tipo = 'C'

select numero_cuenta, round(avg(cast(monto as decimal)), 2) as monto_promedio
from transacciones tr, banco ba
group by numero_cuenta