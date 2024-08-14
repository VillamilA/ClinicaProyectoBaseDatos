-- COMMIT
-- Confirmar inserción de nuevo paciente:
start transaction;
insert into pacientes (nombre, apellido, fecha_nacimiento, direccion, telefono, email) 
values ('luis', 'salazar', '1985-06-10', 'calle nueva 12', '555-0001', 'luis.salazar@example.com');
commit;

-- Confirmar actualización de datos del doctor:
start transaction;
update doctores 
set nombre = 'mario', apellido = 'fernández' 
where id_doctor = 10;
commit;

-- Confirmar eliminación de una cita:
start transaction;
delete from citas 
where id_cita = 5;
commit;


-- ROLLBACK 
-- Revertir inserción de nuevo paciente:
start transaction;
insert into pacientes (nombre, apellido, fecha_nacimiento, direccion, telefono, email) 
values ('ana', 'garcía', '1990-07-15', 'avenida central 15', '555-5555', 'ana.garcia@example.com');
rollback;

-- Revertir actualización de datos del doctor:
start transaction;
update doctores 
set nombre = 'mariana', apellido = 'sánchez' 
where id_doctor = 8;
rollback;

-- Revertir eliminación de una cita:
start transaction;
delete from citas 
where id_cita = 12;
rollback;