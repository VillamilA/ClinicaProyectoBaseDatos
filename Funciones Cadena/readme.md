
---

## Funciones de Cadena y Fecha en MySQL

Este archivo contiene ejemplos de cómo utilizar funciones de cadena y fecha en MySQL para manipular y formatear datos.
Estas funciones son útiles para el procesamiento de datos y la presentación de resultados en informes y aplicaciones.

**Funciones de Cadena**

**Concat**

```sql
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM pacientes;
SELECT CONCAT('Doctor: ', nombre, ' ', apellido) AS detalle_doctor FROM doctores;
SELECT CONCAT('Consultorio: ', nombre) AS detalle_consultorio FROM consultorios;
```
**Concatena cadenas para crear nuevos valores a partir de campos existentes.**

**Substring**

Extrae partes específicas de una cadena de texto.
```sql

SELECT SUBSTRING(nombre, 1, 3) AS iniciales_nombre FROM pacientes;
SELECT SUBSTRING(direccion, 1, 10) AS direccion_corta FROM pacientes;
SELECT SUBSTRING(email, LOCATE('@', email) + 1) AS dominio_email FROM pacientes;

```
Charindex (LOCATE)

Encuentra la posición de una subcadena dentro de una cadena.
sql
```
SELECT LOCATE('Pérez', apellido) AS posicion_apellido FROM pacientes;
SELECT LOCATE('Calle', direccion) AS posicion_direccion FROM pacientes;
SELECT LOCATE('@', email) AS posicion_arroba FROM pacientes;

```
Replace

Reemplaza partes de una cadena con otra cadena.
```sql

SELECT REPLACE(nombre, 'a', '@') AS nombre_modificado FROM pacientes;
SELECT REPLACE(direccion, ' ', '_') AS direccion_modificada FROM pacientes;
SELECT REPLACE(email, 'example', 'demo') AS email_modificado FROM pacientes;
```

Funciones de Fecha y Hora
DATEADD

Añade un intervalo de tiempo a una fecha.
```sql

SELECT DATE_ADD(fecha_nacimiento, INTERVAL 1 YEAR) AS fechaNaci FROM pacientes;
SELECT DATE_ADD(fecha, INTERVAL 1 DAY) AS siguiente_dia FROM citas;
SELECT DATE_ADD(hora, INTERVAL 1 HOUR) AS siguiente_hora FROM citas;

```
DATEDIFF

Calcula la diferencia en días entre dos fechas.
```sql

SELECT DATEDIFF(CURDATE(), fecha_nacimiento) AS edad_dias FROM pacientes;
SELECT DATEDIFF(fecha, CURDATE()) AS dias_para_cita FROM citas;
SELECT DATEDIFF(fecha, '2023-01-01') AS dias_desde_inicio_ano FROM citas;

```
GETDATE

Obtiene la fecha y hora actual.
```sql

SELECT CURDATE() AS fecha_actual;
SELECT NOW() AS fecha_hora_actual;
SELECT CURTIME() AS hora_actual;

```
FORMAT

Formatea fechas y horas en un formato legible.
```sql

SELECT DATE_FORMAT(fecha_nacimiento, '%d/%m/%Y') AS fecha_nacimiento_formateada FROM pacientes;
SELECT DATE_FORMAT(fecha, '%M %d, %Y') AS fecha_formateada FROM citas;
SELECT DATE_FORMAT(hora, '%h:%i %p') AS hora_formateada FROM citas;

```
