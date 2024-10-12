select cu.numero_cuenta,cu.fecha_creacion,cu.saldo,us.cedula from
usuario us, cuentas cu
where fecha_creacion >= '21/09/2022'
and fecha_creacion <= '21/09/2023'