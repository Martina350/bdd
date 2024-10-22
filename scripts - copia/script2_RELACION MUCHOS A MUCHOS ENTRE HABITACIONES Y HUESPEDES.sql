create table habitacion (
	habitacion_numero int,
	precio_por_noche decimal not null,
	piso int not null, 
	max_personas int,
	constraint habitacion_pk primary key(habitacion_numero)
)

create table huespedes(
	id int,
	nombres varchar (45) not null,
	apellidos varchar (45) not null,
	telefono char (10),
	correo varchar(45),
	direccion varchar (45),
	ciudad varchar (45),
	pais varchar (45),
	constraint huespedes_pk primary key(id)
)

create table reservas (
	inicio_fecha date,
    fin_fecha date,
    habitacion int not null,
    huesped_id int not null,
    constraint habitacion_fk foreign key (habitacion) references habitacion(habitacion_numero),
    constraint huespedes_fk foreign key (huesped_id) references huespedes(id),
    constraint reservas_pk primary key (habitacion, huesped_id)
)

 insert into habitacion values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);

select*from habitacion

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');

select*from huespedes

insert into reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);

select*from reservas

select ha.habitacion_numero, hu.nombres, hu.apellidos from
habitacion ha, huespedes hu, reservas re
where ha.habitacion_numero = re.habitacion
and hu.id = re.huesped_id

select nombres, apellidos from huespedes
where id in (select huesped_id
from reservas
where habitacion = 2)

select ha.habitacion_numero, count(re.huesped_id)from
habitacion ha, reservas re
where ha.habitacion_numero = re.habitacion
group by ha.habitacion_numero

select ha.piso, hu.nombres, hu.apellidos from
habitacion ha, huespedes hu, reservas re
where ha.habitacion_numero = re.habitacion
and hu.id = re.huesped_id
and ha.piso = 4

select nombres, apellidos from huespedes
where id in (select huesped_id
from reservas
where habitacion = 3)

select ha.habitacion_numero, AVG(re.huesped_id)from
habitacion ha, reservas re
where ha.habitacion_numero = re.habitacion
group by ha.habitacion_numero

select ha.habitacion_numero, hu.nombres, hu.apellidos from
habitacion ha, huespedes hu, reservas re
where ha.habitacion_numero = re.habitacion
and hu.id = re.huesped_id

select nombres, apellidos from huespedes
where id in (select huesped_id
from reservas
where habitacion = 4)

select ha.habitacion_numero, sum(ha.precio_por_noche)from
habitacion ha, reservas re
where ha.habitacion_numero = re.habitacion
group by ha.habitacion_numero
