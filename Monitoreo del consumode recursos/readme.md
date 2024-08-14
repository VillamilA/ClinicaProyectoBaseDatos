# MySQL Status and Configuration Queries

Este archivo contiene una serie de consultas SQL para monitorear el estado del servidor MySQL y obtener información sobre la configuración y rendimiento. Estas consultas pueden ser útiles para el análisis de rendimiento, la depuración y la configuración del servidor MySQL.

## Consultas

### Monitoreo del Consumo de Recursos y Registro de Actividades

```sql
SHOW STATUS LIKE 'Innodb_buffer_pool%';
SHOW STATUS LIKE 'Threads%';
SHOW STATUS LIKE 'Connections';
