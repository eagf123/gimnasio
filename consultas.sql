/*Mostrar el histórico de clientes que se han registrado por cada año. Debe
aparecer en una columna el año, en otra columna la cantidad de
registrados en ese año, en otra columna el tipo de membresía
*/
select * from 
(select membresia.tipodemembresia,  count(membresia.tipodemembresia)
from inscripcion inner join membresia on
inscripcion.idmembresia=membresia.idmembresia group by membresia.tipodemembresia) 
tit1 inner join
 (select inscripcion.fecha_inscripcion,  count(inscripcion.fecha_inscripcion)
from inscripcion inner join membresia on
inscripcion.idmembresia=membresia.idmembresia group by inscripcion.fecha_inscripcion) 
tit2 on tit1=tit2

/*Mostrar el histórico de clientes que se han registrado por cada año. Debe
aparecer en una columna el año, en otra columna la cantidad de
registrados en ese año, en otra columna el tipo de membresía
*/
select extract(year from inscripcion.fecha_inscripcion),
count(extract(year from inscripcion.fecha_inscripcion)),
membresia.tipodemembresia 
from inscripcion inner join membresia on
	
	inscripcion.idmembresia=membresia.idmembresia 

group by membresia.tipodemembresia , extract(year from inscripcion.fecha_inscripcion)
order by extract(year from inscripcion.fecha_inscripcion)
/*Mostrar el histórico de cuántos clientes existen inscritos en cada membresía. 
Debe aparecer en una columna el tipo de membresía y 
*/
select 
membresia.tipodemembresia,count(membresia.tipodemembresia)
from inscripcion inner join membresia on
	inscripcion.idmembresia=membresia.idmembresia 
group by membresia.tipodemembresia
/*Mostrar el histórico de cuántos empleados fueron contratados por cada año. 
Debe aparecer en una columna el año y en otra columna la cantidad de empleados contratados.
*/
SELECT 
extract(year from fechadeingresoempleado) as anio,
count (extract(year from fechadeingresoempleado)) as cantidad_empleados_contratados
	FROM public.empleado GROUP BY extract(year from fechadeingresoempleado)