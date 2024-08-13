-- CREAR VIEWS
-- Vista para ver información básica de pacientes:
create view vista_pacientes_basica as
select 
  id_paciente,
  nombre,
  apellido,
  fecha_nacimiento,
  email
from 
  pacientes;
  select * from vista_pacientes_basica;
  
  -- Vista para ver citas programadas por consultorio:
create view vista_citas_por_consultorio as
select 
  co.nombre as consultorio,
  c.id_cita,
  p.nombre as nombre_paciente,
  d.nombre as nombre_doctor,
  c.fecha,
  c.hora
from 
  citas c
join 
  pacientes p on c.paciente_id = p.id_paciente
join 
  doctores d on c.doctor_id = d.id_doctor
join 
  consultorios co on c.consultorio_id = co.id_consultorio;
  select * from vista_citas_por_consultorio;
  
  -- Vista para ver especialidades y sus doctores:
create view vista_especialidades_doctores as
select 
  e.nombre as especialidad,
  d.nombre as nombre_doctor,
  d.apellido as apellido_doctor
from 
  especialidades e
join 
  doctores d on e.id_especialidad = d.especialidad_id;
  select * from vista_especialidades_doctores;

-- PROCEDIMIENTOS ALMACENADOS
-- 1Procedimiento para actualizar la dirección de un paciente:
delimiter //

create procedure actualizar_direccion_paciente(
  in p_id_paciente int,
  in p_direccion varchar(100)
)
begin
  update pacientes
  set direccion = p_direccion
  where id_paciente = p_id_paciente;
end //

delimiter ;
select * from pacientes;
 -- aplicacion
call actualizar_direccion_paciente(1, 'Av Aucas e Inagpirca La Florida');
select * from pacientes where id_paciente = 1;
-- 2
delimiter //

create procedure eliminar_cita(
  in p_id_cita int
)
begin
  delete from citas
  where id_cita = p_id_cita;
end //

delimiter ;
call eliminar_cita(1);
select * from citas where id_cita = 1;

delimiter //

create procedure obtener_info_paciente(
  in p_id_paciente int
)
begin
  select 
    nombre,
    apellido,
    fecha_nacimiento,
    direccion,
    telefono,
    email
  from 
    pacientes
  where 
    id_paciente = p_id_paciente;
end //

delimiter ;
call obtener_info_paciente(1);

delimiter //

-- TRIGGER
-- CREAMOS UNA TABLA PARA REGISTRAR LAS AUDITORIA DE LOS TRIGGERS
create table auditoria_triggers (
  id_auditoria int auto_increment primary key,
  nombre_trigger varchar(100),
  tabla_afectada varchar(100),
  tipo_operacion varchar(10),
  fecha_ejecucion datetime,
  detalles varchar(255)
);

-- Trigger para registrar auditoría en la tabla de pacientes al insertar un nuevo paciente:
delimiter //
create trigger tr_auditoria_insert_paciente
after insert on pacientes
for each row
begin
  insert into auditoria_triggers (nombre_trigger, tabla_afectada, tipo_operacion, fecha_ejecucion, detalles)
  values ('tr_auditoria_insert_paciente', 'pacientes', 'INSERT', now(), concat('Nuevo paciente insertado: ', new.nombre, ' ', new.apellido));
end //
delimiter ;

insert into pacientes (nombre, apellido, fecha_nacimiento, direccion, telefono, email)
 values ('Juan', 'Perez', '1985-05-20', 'Calle Falsa 123', '555-1234', 'juan.perez@example.com');

select * from auditoria_triggers;

-- Trigger para registrar auditoría en la tabla de citas al actualizar una cita:
delimiter //
create trigger tr_auditoria_update_cita
after update on citas
for each row
begin
  insert into auditoria_triggers (nombre_trigger, tabla_afectada, tipo_operacion, fecha_ejecucion, detalles)
  values ('tr_auditoria_update_cita', 'citas', 'UPDATE', now(), concat('Cita actualizada: ID Cita = ', new.id_cita));
end //
delimiter ;
-- se realiza el update
update citas set fecha = '2024-08-02' where id_cita = 1;
-- verificamos el cambio en la tabla
   select * from auditoria_triggers;

-- Trigger para registrar auditoría en la tabla de doctores al eliminar un doctor:
delimiter //
create trigger tr_auditoria_delete_doctor
after delete on doctores
for each row
begin
  insert into auditoria_triggers (nombre_trigger, tabla_afectada, tipo_operacion, fecha_ejecucion, detalles)
  values ('tr_auditoria_delete_doctor', 'doctores', 'DELETE', now(), concat('Doctor eliminado: ID Doctor = ', old.id_doctor));
end //
delimiter ;
-- Verificacion de los datos y eliminacion
delete from doctores where id_doctor = 1;
select * from auditoria_triggers;