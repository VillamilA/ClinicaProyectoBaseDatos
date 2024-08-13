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