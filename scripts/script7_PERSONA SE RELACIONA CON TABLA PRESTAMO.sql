select*from persona

create table persona(
	cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    estatura decimal(10,2),
    fecha_nacimiento date not null,
    hora_nacimiento time not null,
    cantidad_ahorrada money,
    numero_hijos int,
    primary key (cedula)
)

create table prestamo(
	cedula char(10) not null,
    monto money not null,
    fecha_prestamo date not null,
    hora_prestamo time not null,
    garante varchar(40),
	constraint prestamo_pk primary key (cedula)
)

alter table persona 
add column prestamo_cedula char(10) not null

alter table persona
add constraint persona_prestamo_fk
foreign key (prestamo_cedula) 
references prestamo(cedula)

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('1234567890', 'sean', 'smith', 1.80, '1990-05-15', '14:30:00', 5000, 2, '1234567890');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('2234567891', 'john', 'doe', 1.75, '1985-03-22', '09:00:00', 2000, 3, '2234567891');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('3234567892', 'mary', 'johnson', 1.68, '1992-07-10', '10:30:00', 3500, 1, '3234567892');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('4234567893', 'linda', 'williams', 1.60, '1990-12-01', '08:15:00', 4000, 0, '4234567893');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('5234567894', 'james', 'brown', 1.82, '1988-11-30', '07:45:00', 6000, 2, '5234567894');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('6234567895', 'susan', 'davis', 1.70, '1991-06-18', '09:15:00', 5500, 1, '6234567895');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('7234567896', 'paul', 'martinez', 1.75, '1983-08-25', '10:00:00', 2500, 3, '7234567896');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('8234567897', 'karen', 'rodriguez', 1.62, '1994-04-09', '08:45:00', 4800, 0, '8234567897');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('9234567898', 'david', 'lee', 1.85, '1987-10-30', '12:00:00', 5000, 1, '9234567898');

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, prestamo_cedula)
values ('0234567899', 'amy', 'clark', 1.70, '1995-09-21', '11:00:00', 3000, 0, '0234567899');

select*from prestamo

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('1234567890', 500, '2023-09-15', '09:00:00', 'john doe');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('2234567891', 250, '2023-09-16', '10:00:00', 'mary johnson');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('3234567892', 750, '2023-09-17', '11:30:00', 'linda williams');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('4234567893', 100, '2023-09-18', '12:00:00', 'james brown');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('5234567894', 900, '2023-09-19', '13:00:00', 'susan davis');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('6234567895', 600, '2023-09-20', '14:00:00', 'paul martinez');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('7234567896', 300, '2023-09-21', '15:00:00', 'karen rodriguez');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('8234567897', 400, '2023-09-22', '16:00:00', 'david lee');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('9234567898', 800, '2023-09-23', '17:00:00', 'amy clark');

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('0234567899', 700, '2023-09-24', '18:00:00', 'sean smith');