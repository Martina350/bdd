select us.nombre, cu.numero_cuenta from
usuario us, cuentas cu
where saldo>money(100)
and saldo<money(1000)
