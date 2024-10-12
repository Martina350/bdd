select*from registros_entrada

delete from registros_entrada

alter table registros_entrada
add column empleado_codigo_empleado int not null

create table empleado(
	codigo_empleado int not null,
    nombre varchar(25) not null,
    fecha date not null,
    hora time not null,
	constraint empelado_pk primary key(codigo_empleado)
)

alter table registros_entrada
add constraint registros_entrada_empleado_fk
foreign key (empleado_codigo_empleado)
references empleado(codigo_empleado)

select*from registros_entrada

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (1, '1726312745', '2023-08-01', '08:30:00', 2201);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (2, '1726312746', '2023-08-02', '09:00:00', 2202);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (3, '1726312747', '2023-08-05', '10:00:00', 2203);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (4, '1726312748', '2023-08-10', '11:30:00', 2204);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (5, '1726312749', '2023-09-01', '12:15:00', 2205);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (6, '1726312750', '2023-09-10', '08:45:00', 2206);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (7, '1726312751', '2023-09-15', '09:30:00', 2207);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (8, '1726312752', '2023-10-01', '10:30:00', 2208);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (9, '1726312753', '2023-10-15', '11:00:00', 2209);

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora,empleado_codigo_empleado)
values (10, '1726312754', '2023-11-01', '12:45:00', 2210);



insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2201, 'juan perez', '2023-08-01', '08:00:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2202, 'maria lopez', '2023-08-02', '08:15:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2203, 'carlos garcia', '2023-08-03', '08:30:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2204, 'ana ramirez', '2023-08-04', '08:45:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2205, 'diego martinez', '2023-08-05', '09:00:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2206, 'jose rodriguez', '2023-08-06', '09:15:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2207, 'andrea suarez', '2023-08-07', '09:30:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2208, 'fernando castro', '2023-08-08', '09:45:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2209, 'luisa morales', '2023-08-09', '10:00:00');

insert into empleado (codigo_empleado, nombre, fecha, hora)
values (2210, 'ricardo fernandez', '2023-08-10', '10:15:00');

select*from empleado