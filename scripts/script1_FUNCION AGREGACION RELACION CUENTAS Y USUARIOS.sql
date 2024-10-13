select AVG(cast(saldo as numeric))
from cuentas cu, usuario us
where cu.usuario_cedula = us.cedula

select count(numero_cuenta)
from cuentas cu, usuario us
group by tipo_cuenta