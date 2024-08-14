-- Funciones de cadena
	-- Concat
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM pacientes;
SELECT CONCAT('Doctor: ', nombre, ' ', apellido) AS detalle_doctor FROM doctores;
SELECT CONCAT('Consultorio: ', nombre) AS detalle_consultorio FROM consultorios;

	-- Substring
SELECT SUBSTRING(nombre, 1, 3) AS iniciales_nombre FROM pacientes;
SELECT SUBSTRING(direccion, 1, 10) AS direccion_corta FROM pacientes;
SELECT SUBSTRING(email, LOCATE('@', email) + 1) AS dominio_email FROM pacientes;

	-- Locate
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