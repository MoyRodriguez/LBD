create database escolar1

use escolar1

create table materia (
	materia_id int not null,
	nombre_m varchar(50) not null,
	creditos_m tinyint not null,
	semestre_m tinyint not null,
	constraint pk_mat primary key(materia_id)
	)
select * from materia 

create table alumno (
	matricula_id int not null,
	nombre_a varchar(30),
	apPaterno_a varchar(20),
	apMaterno_a varchar(20),
	fechaNa_a date,
	carrera_id tinyint,

	constraint pk_alu primary key(matricula_id)
	)
select * from alumno

create table carrera(
	carrera_id int not null,
	nombre_a varchar(60),
	abrv_c varchar(7),
	duracion tinyint,
	constraint pk_car primary key (carrera_id)
	 )
select *from carrera

create table profesor(
profesor_id smallint not null,
nombre_p varchar(20),
apellidos varchar(60),
tel_p varchar(15),
tutor bit,
estatus bit,
constraint pk_pro primary key (profesor_id)
)

select * from profesor

create table materia_alumno(
materia_id int not null,
matricula_id int not null,
calificacion tinyint,
fechacurso date, 
identificador int not null,
constraint fk_ma foreign key (materia_id) references materia (materia_id),
constraint fk_mat foreign key (matricula_id) references alumno (matricula_id),
constraint pk_ma primary key (identificador)
)
select * from materia_alumno

create table materia_profesor(
materia_id int not null,
profesor_id smallint not null,
identificador int not null,
constraint pk_ma1 primary key (identificador),
constraint fk_ma1 foreign key (materia_id) references materia (materia_id),
constraint fk_pr foreign key (profesor_id) references profesor (profesor_id)
)
select * from materia_profesor

select * from materia
go

select * from alumno
go
select * from profesor
select * from carrera
select * from materia_alumno
select * from materia_profesor

insert into materia values(1 , 'Base de datos' , 3 , 3 )
insert into materia values(2 , 'Laboratorio de Base de datos' , 2 , 3 )
insert into materia values(3 , 'Geometria Analitica y Calculo Diferencial' , 3 , 2 )
insert into materia values(4 , 'Evidencias Digitales' , 3 , 2 )
insert into materia values(5 , 'Algebra' , 3 , 1 )

alter table materia 
add abr varchar(7)

begin transaction a1 
update materia set abr = 'bd' 

rollback transaction a1  

update materia set abr = 'BD' where materia_id = 1 
update materia set abr = 'LBD' where materia_id = 2
update materia set abr = 'GACD' where materia_id = 3
update materia set abr = 'ED' where materia_id = 4
update materia set abr = 'ALG' where materia_id = 5



--use escolar1
insert into Profesor values (
	1,'Maria', 'Diaz', 8122133380,1,1)

	insert into Profesor values (
	2,'Juan', 'Orozco', 8122421380,0,1)

	insert into Profesor values (
	3,'Mario', 'Diaz', 812654380,0,1)

	insert into Profesor values (
	4,'Jose', 'Torres', 8122111380,1,1)
	 
	 select * from profesor

insert into Carrera values (
	100,'Matematicas', 'MATH', 8)

insert into Carrera values (
	101,'Seguridad', 'LSTI', 8)

insert into Materia_Alumno values (
	1,1232335, 69, '07-08-2017',1)
insert into Materia_Alumno values (
	2,1232335, 71, '07-09-2017',2)
insert into Materia_Alumno values (
	3,1232335, 98, '05-10-2017',3)

insert into Materia_Alumno values (
	3,1545455, 20, '03-08-2017',4)
insert into Materia_Alumno values (
	3,1810755, 78, '04-09-2017',5)
insert into Materia_Alumno values (
	3,1823232, 100, '02-5-2017',6)

insert into Materia_Alumno values (
	2,1545455, 70, '07-08-2017',7)

select * from alumno

insert into alumno values (	
 1232335,'	Ozzy','	Gazzy','	Gondola','	1966-09-14',	3)
 insert into alumno values (
1545455,'	Alfonso','	Copetes','	Topetioux','	1933-07-13',	4)
insert into alumno values (
1810755,'	Osmar','	Garcia','	Gonzalez','	1999-11-11',	1)
insert into alumno values (
1823232,'	Alee','	Apple','	Wonder','	1987-10-12',	2)

select * from materia_alumno

select distinct(matricula_id ) from materia_alumno


select matricula_id,
count(matricula_id) NRegistros,sum(calificacion) SumaCalificaciones,
 avg(calificacion) Promedio
from materia_alumno
group by matricula_id


select a.matricula_id,a.nombre_a,a.apPaterno_a,
count(ma.matricula_id) NRegistros,sum(ma.calificacion) SumaCalificaciones,
 avg(ma.calificacion) Promedio
from materia_alumno ma,alumno a
where ma.matricula_id  = a.matricula_id 
group by a.matricula_id,a.nombre_a,a.apPaterno_a



