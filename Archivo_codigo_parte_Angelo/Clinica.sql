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

-- crear tabla doctores
create table doctores (
  id_doctor int auto_increment,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  especialidad_id int not null,
  primary key (id_doctor),
  foreign key (especialidad_id) references especialidades(id_especialidad)
);

-- crear tabla especialidades
create table especialidades (
  id_especialidad int auto_increment,
  nombre varchar(50) not null,
  primary key (id_especialidad)
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











