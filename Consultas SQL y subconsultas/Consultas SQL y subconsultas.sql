-- Consultas Basicas
select * from pacientes;
-- Where
select * from pacientes where apellido = 'garcía';
-- usando order by
select * from pacientes order by fecha_nacimiento desc;
-- group by
select apellido, count(*) as cantidad from pacientes group by apellido;
-- having
select apellido, count(*) as cantidad from pacientes group by apellido having count(*) > 1;

-- SUBCONSULTAS
select nombre, (select count(*) from citas where citas.paciente_id = pacientes.id_paciente) as citas_count
from pacientes;
-- FROM
select avg(citas_count) as promedio_citas from (
    select count(*) as citas_count from citas group by paciente_id
) as subconsulta;
-- WHERE
select * from doctores where id_doctor in (
    select doctor_id from citas where fecha = '2024-08-01'
);
-- Muestra todos los doctores que tienen citas programadas para el 1 de agosto de 2024.
select nombre from pacientes p where exists (
    select 1 from citas c where c.paciente_id = p.id_paciente and c.fecha = '2024-08-01'
);
