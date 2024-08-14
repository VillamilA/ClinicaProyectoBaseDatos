create database clinica;
-- usar base de datos
use clinica;

-- crear tabla pacientes
create table pacientes (
  id_paciente int auto_increment,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  fecha_nacimiento date not null,
  direccion varchar(100) not null,
  telefono varchar(20) not null,
  email varchar(50) not null,
  primary key (id_paciente)
);

-- crear tabla especialidades
create table especialidades (
  id_especialidad int auto_increment,
  nombre varchar(50) not null,
  primary key (id_especialidad)
);

-- crear tabla doctores
create table doctores (
  id_doctor int auto_increment,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  especialidad_id int not null,
  primary key (id_doctor),
  foreign key (especialidad_id) references especialidades(id_especialidad)
);

-- crear tabla consultorios
create table consultorios (
  id_consultorio int auto_increment,
  nombre varchar(50) not null,
  primary key (id_consultorio)
);

-- crear tabla citas
create table citas (
  id_cita int auto_increment,
  paciente_id int not null,
  doctor_id int not null,
  consultorio_id int not null,
  fecha date not null,
  hora time not null,
  primary key (id_cita),
  foreign key (paciente_id) references pacientes(id_paciente),
  foreign key (doctor_id) references doctores(id_doctor),
  foreign key (consultorio_id) references consultorios(id_consultorio)
);

-- crear tabla tratamientos
create table tratamientos (
  id_tratamiento int auto_increment,
  cita_id int not null,
  descripcion varchar(200) not null,
  primary key (id_tratamiento),
  foreign key (cita_id) references citas(id_cita)
);

INSERT INTO Pacientes (nombre, apellido, fecha_nacimiento, direccion, telefono, email) VALUES
('Ana', 'García', '1985-04-15', 'Av. Libertador 234', '555-1234', 'ana.garcia@example.com'),
('Luis', 'Pérez', '1990-05-22', 'Calle Mayor 12', '555-5678', 'luis.perez@example.com'),
('María', 'Rodríguez', '1978-09-30', 'Plaza Central 5', '555-8765', 'maria.rodriguez@example.com'),
('Juan', 'Martínez', '1982-11-11', 'Calle del Sol 89', '555-4321', 'juan.martinez@example.com'),
('Carmen', 'Hernández', '1995-03-17', 'Av. del Norte 101', '555-3456', 'carmen.hernandez@example.com'),
('Javier', 'López', '1987-07-25', 'Calle del Río 55', '555-7890', 'javier.lopez@example.com'),
('Laura', 'Gómez', '1992-08-30', 'Calle de la Luna 78', '555-6543', 'laura.gomez@example.com'),
('Pedro', 'Vázquez', '1980-01-12', 'Calle del Mar 22', '555-3456', 'pedro.vazquez@example.com'),
('Sofía', 'Méndez', '1989-10-04', 'Av. de la Paz 13', '555-9876', 'sofia.mendez@example.com'),
('Carlos', 'Álvarez', '1991-06-18', 'Calle de la Esperanza 27', '555-1122', 'carlos.alvarez@example.com'),
('Lucía', 'Paniagua', '1986-02-20', 'Calle de la Alegría 39', '555-3344', 'lucia.paniagua@example.com'),
('Miguel', 'Cruz', '1975-12-05', 'Av. de los Pinos 66', '555-2233', 'miguel.cruz@example.com'),
('Valeria', 'Díaz', '1983-09-14', 'Calle del Viento 87', '555-7788', 'valeria.diaz@example.com'),
('Fernando', 'García', '1994-07-11', 'Calle del Ocaso 45', '555-6655', 'fernando.garcia@example.com'),
('Isabel', 'Ramírez', '1979-11-28', 'Av. de la Libertad 32', '555-5566', 'isabel.ramirez@example.com'),
('Andrés', 'Ríos', '1988-04-09', 'Calle del Río 93', '555-4433', 'andres.rios@example.com'),
('Natalia', 'Salazar', '1993-05-06', 'Calle de la Primavera 50', '555-8899', 'natalia.salazar@example.com'),
('Ricardo', 'Mora', '1981-08-23', 'Av. de la Cultura 19', '555-2234', 'ricardo.mora@example.com'),
('Patricia', 'Uribe', '1990-12-01', 'Calle de los Olivos 74', '555-3345', 'patricia.uribe@example.com'),
('Alejandro', 'Sánchez', '1984-03-14', 'Calle del Alba 33', '555-5566', 'alejandro.sanchez@example.com'),
('Diana', 'Torres', '1992-10-15', 'Av. del Océano 88', '555-6677', 'diana.torres@example.com'),
('Héctor', 'Suárez', '1980-07-02', 'Calle de la Pradera 29', '555-7789', 'hector.suarez@example.com'),
('Paola', 'Cárdenas', '1991-01-18', 'Calle del Jardín 57', '555-8890', 'paola.cardenas@example.com'),
('Jorge', 'Molina', '1986-06-30', 'Av. de los Rosales 62', '555-9900', 'jorge.molina@example.com'),
('Mónica', 'Vega', '1979-03-09', 'Calle de la Conquista 84', '555-1234', 'monica.vega@example.com'),
('Esteban', 'Márquez', '1988-05-14', 'Calle de la Fe 91', '555-5678', 'esteban.marquez@example.com'),
('Sandra', 'Córdoba', '1995-02-07', 'Av. del Sol 47', '555-8765', 'sandra.cordoba@example.com'),
('Luisana', 'Zapata', '1989-12-11', 'Calle de los Ángeles 90', '555-3456', 'luisana.zapata@example.com'),
('Oscar', 'Pinto', '1983-09-23', 'Calle del Carmen 35', '555-6543', 'oscar.pinto@example.com'),
('Cecilia', 'Tovar', '1994-04-04', 'Calle del Alba 74', '555-7890', 'cecilia.tovar@example.com'),
('Julian', 'Arango', '1982-11-20', 'Calle de la Unión 51', '555-9876', 'julian.arango@example.com'),
('Samantha', 'Rincón', '1991-08-12', 'Calle del Paraíso 85', '555-5566', 'samantha.rincon@example.com'),
('Guillermo', 'Ferrer', '1987-03-07', 'Av. del Príncipe 29', '555-2233', 'guillermo.ferrer@example.com'),
('Alejandra', 'Castaño', '1996-09-30', 'Calle de la Libertad 64', '555-3344', 'alejandra.castano@example.com'),
('Edison', 'Ceballos', '1985-01-19', 'Calle del Río 22', '555-7788', 'edison.ceballos@example.com'),
('Rosa', 'Gómez', '1990-12-03', 'Calle del Norte 88', '555-6677', 'rosa.gomez@example.com'),
('Tomás', 'Camargo', '1978-10-25', 'Calle de los Cedros 43', '555-5566', 'tomas.camargo@example.com'),
('Mariana', 'Figueroa', '1993-07-10', 'Calle de la Esperanza 99', '555-3345', 'mariana.figueroa@example.com'),
('Felipe', 'Hidalgo', '1988-11-29', 'Calle del Valle 21', '555-2234', 'felipe.hidalgo@example.com'),
('Valeria', 'Múñoz', '1994-02-18', 'Calle de la Rosa 76', '555-7789', 'valeria.munoz@example.com'),
('Ricardo', 'García', '1981-06-06', 'Calle de la Victoria 43', '555-8890', 'ricardo.garcia@example.com'),
('Beatriz', 'Lozano', '1989-03-03', 'Calle del Olivo 55', '555-2233', 'beatriz.lozano@example.com'),
('Francisco', 'Sánchez', '1992-05-11', 'Calle del Horizonte 12', '555-5678', 'francisco.sanchez@example.com'),
('Lina', 'Campos', '1985-08-24', 'Calle de la Loma 33', '555-7890', 'lina.campos@example.com'),
('Daniel', 'Rendón', '1991-07-17', 'Calle del Paraíso 67', '555-3344', 'daniel.rendon@example.com'),
('Catalina', 'Ruiz', '1980-09-12', 'Calle del Sur 81', '555-6677', 'catalina.ruiz@example.com'),
('Juliana', 'Peña', '1993-02-26', 'Calle de los Pinos 18', '555-7789', 'juliana.pena@example.com'),
('Mario', 'Jiménez', '1986-11-21', 'Calle de la Estrella 95', '555-8890', 'mario.jimenez@example.com'),
('Marcela', 'Ramírez', '1987-11-05', 'Av. de las Flores 14', '555-4455', 'marcela.ramirez@example.com'),
('Hugo', 'Núñez', '1992-03-21', 'Calle del Faro 87', '555-7788', 'hugo.nunez@example.com');


insert into especialidades (nombre) values
('medicina general'),
('cardiología'),
('neurología'),
('ortopedia'),
('ginecología'),
('pediatría'),
('dermatología'),
('urología'),
('odontología'),
('psiquiatría'),
('cirugía general'),
('medicina interna'),
('neumología'),
('endocrinología'),
('hematología'),
('oncología'),
('rehabilitación'),
('otorrinolaringología'),
('inmunología'),
('alergología'),
('traumatología'),
('fisioterapia'),
('cirugía plástica'),
('gastroenterología'),
('nefrología'),
('infectología'),
('medicina deportiva'),
('medicina familiar'),
('medicina del trabajo'),
('medicina de urgencias'),
('medicina estética'),
('cirugía ortopédica'),
('cirugía cardiovascular'),
('cirugía pediátrica'),
('medicina reproductiva'),
('medicina de rehabilitación'),
('medicina paliativa'),
('medicina tropical'),
('medicina de la salud pública'),
('medicina del sueño'),
('medicina del dolor'),
('medicina nuclear'),
('medicina ocupacional'),
('medicina preventiva'),
('medicina forense'),
('medicina geriátrica'),
('medicina veterinaria'),
('medicina estética y cosmética'),
('medicina de emergencias'),
('medicina alternativa'),
('medicina integrativa');

insert into doctores (nombre, apellido, especialidad_id) values
('carlos', 'martínez', 1),
('gabriela', 'mendoza', 2),
('jose', 'ramírez', 3),
('maría', 'fernández', 4),
('alejandro', 'herrería', 5),
('paola', 'mora', 1),
('nicolás', 'suárez', 2),
('isabella', 'león', 3),
('juan', 'téllez', 4),
('laura', 'rodríguez', 5),
('francisco', 'quintero', 1),
('camila', 'mendoza', 2),
('sergio', 'cardenas', 3),
('valeria', 'gómez', 4),
('david', 'pinto', 5),
('juliana', 'rojas', 1),
('eduardo', 'suárez', 2),
('mónica', 'salazar', 3),
('felipe', 'molina', 4),
('catalina', 'rodríguez', 5),
('marco', 'arango', 1),
('andrea', 'velasquez', 2),
('manuel', 'peña', 3),
('margarita', 'duarte', 4),
('josé', 'martínez', 5),
('daniela', 'rojas', 1),
('victor', 'salcedo', 2),
('sofia', 'gómez', 3),
('roberto', 'piedra', 4),
('lina', 'vargas', 5),
('oscar', 'hoyos', 1),
('liliana', 'suárez', 2),
('natalia', 'garcía', 3),
('juan', 'sánchez', 4),
('gabriel', 'múñoz', 5),
('mónica', 'paredes', 1),
('camilo', 'rincón', 2),
('laura', 'torres', 3),
('alberto', 'arías', 4),
('paula', 'moreno', 5),
('alejandro', 'quintero', 1),
('isabel', 'patiño', 2),
('manuel', 'moreno', 3),
('verónica', 'pardo', 4),
('santiago', 'valencia', 5),
('mariana', 'contreras', 1),
('felipe', 'medina', 2),
('carolina', 'beltrán', 3),
('sergio', 'hernández', 4),
('jennifer', 'carrillo', 5);




insert into consultorios (nombre) values
('consultorio 1'),
('consultorio 2'),
('consultorio 3'),
('consultorio 4'),
('consultorio 5'),
('consultorio 6'),
('consultorio 7'),
('consultorio 8'),
('consultorio 9'),
('consultorio 10'),
('consultorio 11'),
('consultorio 12'),
('consultorio 13'),
('consultorio 14'),
('consultorio 15'),
('consultorio 16'),
('consultorio 17'),
('consultorio 18'),
('consultorio 19'),
('consultorio 20'),
('consultorio 21'),
('consultorio 22'),
('consultorio 23'),
('consultorio 24'),
('consultorio 25'),
('consultorio 26'),
('consultorio 27'),
('consultorio 28'),
('consultorio 29'),
('consultorio 30'),
('consultorio 31'),
('consultorio 32'),
('consultorio 33'),
('consultorio 34'),
('consultorio 35'),
('consultorio 36'),
('consultorio 37'),
('consultorio 38'),
('consultorio 39'),
('consultorio 40'),
('consultorio 41'),
('consultorio 42'),
('consultorio 43'),
('consultorio 44'),
('consultorio 45'),
('consultorio 46'),
('consultorio 47'),
('consultorio 48'),
('consultorio 49'),
('consultorio 50');


insert into citas (paciente_id, doctor_id, consultorio_id, fecha, hora) values
(1, 1, 1, '2024-08-01', '09:00:00'),
(2, 2, 2, '2024-08-01', '09:30:00'),
(3, 3, 3, '2024-08-01', '10:00:00'),
(4, 4, 4, '2024-08-01', '10:30:00'),
(5, 5, 5, '2024-08-01', '11:00:00'),
(6, 6, 6, '2024-08-01', '11:30:00'),
(7, 7, 7, '2024-08-01', '12:00:00'),
(8, 8, 8, '2024-08-01', '12:30:00'),
(9, 9, 9, '2024-08-01', '13:00:00'),
(10, 10, 10, '2024-08-01', '13:30:00'),
(11, 11, 11, '2024-08-02', '09:00:00'),
(12, 12, 12, '2024-08-02', '09:30:00'),
(13, 13, 13, '2024-08-02', '10:00:00'),
(14, 14, 14, '2024-08-02', '10:30:00'),
(15, 15, 15, '2024-08-02', '11:00:00'),
(16, 16, 16, '2024-08-02', '11:30:00'),
(17, 17, 17, '2024-08-02', '12:00:00'),
(18, 18, 18, '2024-08-02', '12:30:00'),
(19, 19, 19, '2024-08-02', '13:00:00'),
(20, 20, 20, '2024-08-02', '13:30:00'),
(21, 21, 21, '2024-08-03', '09:00:00'),
(22, 22, 22, '2024-08-03', '09:30:00'),
(23, 23, 23, '2024-08-03', '10:00:00'),
(24, 24, 24, '2024-08-03', '10:30:00'),
(25, 25, 25, '2024-08-03', '11:00:00'),
(26, 26, 26, '2024-08-03', '11:30:00'),
(27, 27, 27, '2024-08-03', '12:00:00'),
(28, 28, 28, '2024-08-03', '12:30:00'),
(29, 29, 29, '2024-08-03', '13:00:00'),
(30, 30, 30, '2024-08-03', '13:30:00'),
(31, 31, 31, '2024-08-04', '09:00:00'),
(32, 32, 32, '2024-08-04', '09:30:00'),
(33, 33, 33, '2024-08-04', '10:00:00'),
(34, 34, 34, '2024-08-04', '10:30:00'),
(35, 35, 35, '2024-08-04', '11:00:00'),
(36, 36, 36, '2024-08-04', '11:30:00'),
(37, 37, 37, '2024-08-04', '12:00:00'),
(38, 38, 38, '2024-08-04', '12:30:00'),
(39, 39, 39, '2024-08-04', '13:00:00'),
(40, 40, 40, '2024-08-04', '13:30:00'),
(41, 41, 41, '2024-08-05', '09:00:00'),
(42, 42, 42, '2024-08-05', '09:30:00'),
(43, 43, 43, '2024-08-05', '10:00:00'),
(44, 44, 44, '2024-08-05', '10:30:00'),
(45, 45, 45, '2024-08-05', '11:00:00'),
(46, 46, 46, '2024-08-05', '11:30:00'),
(47, 47, 47, '2024-08-05', '12:00:00'),
(48, 48, 48, '2024-08-05', '12:30:00'),
(49, 49, 49, '2024-08-05', '13:00:00'),
(50, 50, 50, '2024-08-05', '13:30:00');

insert into tratamientos (cita_id, descripcion) values
(1, 'examen físico completo'),
(2, 'evaluación cardiológica'),
(3, 'consultoría neurológica'),
(4, 'revisión ortopédica'),
(5, 'examen ginecológico'),
(6, 'consulta pediátrica'),
(7, 'chequeo dermatológico'),
(8, 'evaluación urológica'),
(9, 'limpieza dental'),
(10, 'consulta psiquiátrica'),
(11, 'cirugía de apendicitis'),
(12, 'consulta de medicina interna'),
(13, 'evaluación pulmonar'),
(14, 'control endocrinológico'),
(15, 'seguimiento hematológico'),
(16, 'tratamiento oncológico'),
(17, 'terapia de rehabilitación'),
(18, 'consulta otorrinolaringológica'),
(19, 'prueba de alergias'),
(20, 'tratamiento traumatológico'),
(21, 'sesión de fisioterapia'),
(22, 'cirugía reconstructiva'),
(23, 'evaluación digestiva'),
(24, 'consulta nefrológica'),
(25, 'evaluación infecciosa'),
(26, 'consulta de medicina deportiva'),
(27, 'consulta de medicina familiar'),
(28, 'revisión de medicina del trabajo'),
(29, 'atención de urgencias'),
(30, 'tratamiento estético'),
(31, 'cirugía ortopédica'),
(32, 'evaluación cardiovascular'),
(33, 'cirugía pediátrica'),
(34, 'tratamiento de fertilidad'),
(35, 'rehabilitación física'),
(36, 'cuidados paliativos'),
(37, 'consulta de medicina tropical'),
(38, 'seguimiento de salud pública'),
(39, 'evaluación del sueño'),
(40, 'gestión del dolor'),
(41, 'examen de medicina nuclear'),
(42, 'evaluación ocupacional'),
(43, 'medicina preventiva'),
(44, 'examen forense'),
(45, 'consulta geriátrica'),
(46, 'evaluación veterinaria'),
(47, 'consulta estética y cosmética'),
(48, 'atención de emergencias médicas'),
(49, 'medicina alternativa'),
(50, 'medicina integrativa');


-- Crear usuarios con contraseñas encriptadas
create user 'joe'@'localhost' identified with mysql_native_password by 'joe_password';
create user 'richard'@'localhost' identified with mysql_native_password by 'richard_password';
create user 'angel'@'localhost' identified with mysql_native_password by 'angel_password';
create user 'marco'@'localhost' identified with mysql_native_password by 'marco_password';

-- Crear roles
create role 'dorctor_read';
create role 'doctor_read_write';
create role 'admin';

-- Otorgar privilegios a roles
grant select on clinica.* to 'dorctor_read';
grant select, insert, update, delete on clinica.* to 'doctor_read_write';
grant all privileges on clinica.* to 'admin';

-- Asignar roles a usuarios
grant 'dorctor_read' to 'joe'@'localhost';
grant 'doctor_read_write' to 'richard'@'localhost';
grant 'doctor_read_write' to 'angel'@'localhost';
grant 'admin' to 'marco'@'localhost';

-- Aplicar cambios
flush privileges;

-- Verificación
select user, host from mysql.user where user in ('joe', 'richard', 'angel', 'marco');

create user 'linda'@'localhost' identified with mysql_native_password by 'linda_password';
grant 'dorctor_read' to 'linda'@'localhost';
show grants for 'angel'@'localhost';
revoke 'doctor_read_write' from 'angel'@'localhost';
grant 'dorctor_read' to 'angel'@'localhost';

alter user 'joe'@'localhost' identified by '1234567';
set global default_password_lifetime = 90;



-- EJERCICIOS DDL
-- para cambiar el nombre de la tabla doctores
rename table doctores to medicos;
-- para vaciar los datos de la tabla pacientes
truncate table pacientes;
-- para eliminar la tabla
drop table pacientes;
-- para modificar una tabla con alter
alter table doctores add column fecha_contratacion date;
-- en caso de querer eliminar la database clinica
drop database clinica;
-- para crear puede ser o tabla o la base de datos
create database clinica;

-- EJERCICIOS DML
-- insertar un paciente
insert into pacientes (nombre, apellido, fecha_nacimiento, direccion, telefono, email) values
('ana', 'garcía', '1985-04-15', 'av. libertador 234', '555-1234', 'ana.garcia@example.com');
-- actualizar un paciente
update pacientes set direccion = 'av. nueva dirección 123' where id_paciente = 1;
-- eliminar un dato o varios
delete from pacientes where id_paciente = 1;
-- leer o seleccionar un dato o tabla
select * from pacientes where nombre = 'ana';

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


-- Funciones de cadena
	-- Concat
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM pacientes;
SELECT CONCAT('Doctor: ', nombre, ' ', apellido) AS detalle_doctor FROM doctores;
SELECT CONCAT('Consultorio: ', nombre) AS detalle_consultorio FROM consultorios;

	-- Substring
SELECT SUBSTRING(nombre, 1, 3) AS iniciales_nombre FROM pacientes;
SELECT SUBSTRING(direccion, 1, 10) AS direccion_corta FROM pacientes;
SELECT SUBSTRING(email, LOCATE('@', email) + 1) AS dominio_email FROM pacientes;

	-- Charindex
SELECT LOCATE('Pérez', apellido) AS posicion_apellido FROM pacientes;
SELECT LOCATE('Calle', direccion) AS posicion_direccion FROM pacientes;
SELECT LOCATE('@', email) AS posicion_arroba FROM pacientes;

	-- Replace
SELECT REPLACE(nombre, 'a', '@') AS nombre_modificado FROM pacientes;
SELECT REPLACE(direccion, ' ', '_') AS direccion_modificada FROM pacientes;
SELECT REPLACE(email, 'example', 'demo') AS email_modificado FROM pacientes;

-- Funciones de fecha y hora
	-- DATEADD
SELECT DATE_ADD(fecha_nacimiento, INTERVAL 1 YEAR) AS fechaNaci FROM pacientes;
SELECT DATE_ADD(fecha, INTERVAL 1 DAY) AS siguiente_dia FROM citas;
SELECT DATE_ADD(hora, INTERVAL 1 HOUR) AS siguiente_hora FROM citas;

	-- DATEDIFF
SELECT DATEDIFF(CURDATE(), fecha_nacimiento) AS edad_dias FROM pacientes;
SELECT DATEDIFF(fecha, CURDATE()) AS dias_para_cita FROM citas;
SELECT DATEDIFF(fecha, '2023-01-01') AS dias_desde_inicio_ano FROM citas;

	-- GETDATE
SELECT CURDATE() AS fecha_actual;
SELECT NOW() AS fecha_hora_actual;
SELECT CURTIME() AS hora_actual;

	-- FORMAT
SELECT DATE_FORMAT(fecha_nacimiento, '%d/%m/%Y') AS fecha_nacimiento_formateada FROM pacientes;
SELECT DATE_FORMAT(fecha, '%M %d, %Y') AS fecha_formateada FROM citas;
SELECT DATE_FORMAT(hora, '%h:%i %p') AS hora_formateada FROM citas;

-- Funciones matematicas
	-- ROUND
SELECT ROUND(AVG(LENGTH(nombre)), 2) AS promedio_longitud_nombre FROM pacientes;
SELECT ROUND(LENGTH(direccion), -1) AS direccion_redondeada FROM pacientes;
SELECT ROUND(LENGTH(email), 0) AS longitud_email FROM pacientes;

    -- CEILING
SELECT CEILING(LENGTH(nombre)) AS longitud_nombre_redondeada_arriba FROM pacientes;
SELECT CEILING(LENGTH(direccion) / 10) * 10 AS direccion_redondeada_arriba FROM pacientes;
SELECT CEILING(LENGTH(email) / 5) * 5 AS email_redondeado_arriba FROM pacientes;

    -- FLOOR
SELECT FLOOR(LENGTH(nombre)) AS longitud_nombre_redondeada_abajo FROM pacientes;
SELECT FLOOR(LENGTH(direccion) / 10) * 10 AS direccion_redondeada_abajo FROM pacientes;
SELECT FLOOR(LENGTH(email) / 5) * 5 AS email_redondeado_abajo FROM pacientes;

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


-- ---------------------------------------------------------
-- INSERCION DE DATOS CON TRANSACCIONES
-- Iniciar una transacción
START TRANSACTION;

-- Intentar insertar datos en la tabla de departamentos usando INSERT IGNORE
INSERT IGNORE INTO Departamentos (id, nombre) VALUES
(1, 'Recursos Humanos'),
(2, 'TI'),
(3, 'Ventas');

-- Intentar insertar datos en la tabla de empleados usando INSERT IGNORE
INSERT IGNORE INTO Empleados (id, nombre, departamento_id, salario) VALUES
(1, 'Juan Pérez', 1, 50000.00),
(2, 'María López', 2, 60000.00),
(3, 'Carlos Ruiz', 3, 55000.00),
(4, 'Ana Gómez', 2, 62000.00),
(5, 'Luis Martínez', NULL, 48000.00);

-- Confirmar la transacción
COMMIT;

-- Mensaje de éxito
SELECT 'Datos insertados correctamente.' AS mensaje_exito;

/* ----------------------------------*/
-- VERIFICACION E INSERCION CONDICIONAL
-- Crear procedimiento almacenado para insertar datos con manejo de errores
DELIMITER $$

CREATE PROCEDURE InsertarDatos()
BEGIN
    DECLARE error INT DEFAULT 0;

    -- Iniciar una transacción
    START TRANSACTION;

    -- Intentar insertar datos en la tabla de departamentos usando INSERT IGNORE
    INSERT IGNORE INTO Departamentos (id, nombre) VALUES (1, 'Recursos Humanos');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT IGNORE INTO Departamentos (id, nombre) VALUES (2, 'TI');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT IGNORE INTO Departamentos (id, nombre) VALUES (3, 'Ventas');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    -- Intentar insertar datos en la tabla de empleados usando INSERT IGNORE
    INSERT IGNORE INTO Empleados (id, nombre, departamento_id, salario) VALUES (1, 'Juan Pérez', 1, 50000.00);
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT IGNORE INTO Empleados (id, nombre, departamento_id, salario) VALUES (2, 'María López', 2, 60000.00);
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT IGNORE INTO Empleados (id, nombre, departamento_id, salario) VALUES (3, 'Carlos Ruiz', 3, 55000.00);
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT IGNORE INTO Empleados (id, nombre, departamento_id, salario) VALUES (4, 'Ana Gómez', 2, 62000.00);
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT IGNORE INTO Empleados (id, nombre, departamento_id, salario) VALUES (5, 'Luis Martínez', NULL, 48000.00);
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    -- Manejo de errores y confirmación/rollback de la transacción
    IF error > 0 THEN
        ROLLBACK;
        SELECT 'Error al insertar datos. Transacción revertida.' AS mensaje_error;
    ELSE
        COMMIT;
        SELECT 'Datos insertados correctamente.' AS mensaje_exito;
    END IF;
END$$

DELIMITER ;

-- Llamar al procedimiento almacenado para insertar los datos
CALL InsertarDatos();

/* -------------------------------------- */
-- LIMPIEZA DE DATOS EXISTENTES ANTES DE INSERCIONES
-- Desactivar verificaciones de claves foráneas
SET FOREIGN_KEY_CHECKS = 0;

-- Limpiar datos existentes
TRUNCATE TABLE Empleados;
TRUNCATE TABLE Departamentos;

-- Activar verificaciones de claves foráneas
SET FOREIGN_KEY_CHECKS = 1;

-- Iniciar una transacción
START TRANSACTION;

-- Intentar insertar datos en la tabla de departamentos
INSERT INTO Departamentos (id, nombre) VALUES
(1, 'Recursos Humanos'),
(2, 'TI'),
(3, 'Ventas');

-- Intentar insertar datos en la tabla de empleados
INSERT INTO Empleados (id, nombre, departamento_id, salario) VALUES
(1, 'Juan Pérez', 1, 50000.00),
(2, 'María López', 2, 60000.00),
(3, 'Carlos Ruiz', 3, 55000.00),
(4, 'Ana Gómez', 2, 62000.00),
(5, 'Luis Martínez', NULL, 48000.00);

-- Confirmar la transacción
COMMIT;

-- Mensaje de éxito
SELECT 'Datos insertados correctamente.' AS mensaje_exito;

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


alter user 'joe'@'localhost' identified by '1234567';
set global default_password_lifetime = 90;

-- seguridad: crear un usuario de solo lectura
create user 'lectura'@'localhost' identified by 'password123';
grant select on clinica.* to 'lectura'@'localhost';

-- seguridad: crear un usuario con permisos completos
create user 'admin'@'localhost' identified by 'admin123';
grant all privileges on clinica.* to 'admin'@'localhost';
flush privileges;

-- auditoría: habilitar el log de consultas generales (para rastrear todas las consultas realizadas)
set global general_log = 'on';
set global log_output = 'table';

-- auditoría: revisar el log de consultas generales
select * from mysql.general_log where argument like '%clinica%';

-- seguridad: definir restricciones adicionales a nivel de columna
alter table pacientes modify email varchar(50) not null unique;


-- Monitoreo del consumo de recursos y el registro de actividades
SHOW STATUS LIKE 'Innodb_buffer_pool%';

SHOW STATUS LIKE 'Threads%';
SHOW STATUS LIKE 'Connections';

SHOW VARIABLES LIKE 'performance_schema%';
SHOW TABLES FROM performance_schema;

SHOW GLOBAL STATUS;

SHOW VARIABLES LIKE 'performance_schema%';
SHOW TABLES FROM performance_schema;

SELECT * FROM INFORMATION_SCHEMA.PROCESSLIST;

SHOW ENGINE INNODB STATUS;

-- Establecer el nivel de aislamiento a Serializable
set transaction isolation level serializable;
-- Iniciar una transacción
start transaction;

-- Consultar datos
select * from pacientes;
-- Confirmar (commit) la transacción
commit;
ALTER TABLE citas ADD COLUMN version INT DEFAULT 1;










