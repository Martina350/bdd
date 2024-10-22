select AVG(cast(saldo as numeric))as saldo_promedio
from cuentas cu, usuario us
where cu.usuario_cedula = us.cedula

select us.tipo_cuenta, count(numero_cuenta)as total_cuentas
from cuentas cu, usuario us
group by tipo_cuenta