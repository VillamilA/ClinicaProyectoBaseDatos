-- Monitoreo del consumo de recursos y el registro de actividades
SHOW STATUS LIKE 'Innodb_buffer_pool%';

SHOW STATUS LIKE 'Threads%';
SHOW STATUS LIKE 'Connections';

SHOW VARIABLES LIKE 'performance_schema%';
SHOW TABLES FROM performance_schema;

SHOW GLOBAL STATUS;

SELECT * FROM INFORMATION_SCHEMA.PROCESSLIST;

SHOW ENGINE INNODB STATUS;