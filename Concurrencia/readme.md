### Uso de Transacciones 

Implementa transacciones para asegurar que una serie de operaciones de bases de datos se realicen de manera atómica, es decir, todas o ninguna de las operaciones son ejecutadas 

 ![image](https://github.com/user-attachments/assets/ee2cebb6-38fb-4567-84fd-b49e2c8cd13a)

![image](https://github.com/user-attachments/assets/47f73034-8995-461b-b690-6513639fe87a)

### Aislamiento de Transacciones 

MySQL soporta diferentes niveles de aislamiento de transacciones que controlan cómo y cuándo los cambios realizados por una transacción son visibles para otras transacciones concurrentes: 

READ UNCOMMITTED: Las transacciones pueden ver cambios no confirmados de otras transacciones. 

READ COMMITTED: Las transacciones solo ven los cambios que han sido confirmados. 

REPEATABLE READ: Las lecturas realizadas durante la transacción verán siempre los mismos datos, aunque otras transacciones hayan hecho cambios. 

SERIALIZABLE: Las transacciones se ejecutan como si fueran secuenciales, lo que evita conflictos de concurrencia pero puede reducir el rendimiento. 
 
![image](https://github.com/user-attachments/assets/22c8c8ce-746b-4622-8fe2-7a765f79be58)

### Bloqueos (Locks) 

MySQL proporciona mecanismos de bloqueo que permiten controlar el acceso a filas específicas durante las transacciones: 

LOCK IN SHARE MODE: Permite que otras transacciones lean las filas bloqueadas, pero no modificarlas. 

FOR UPDATE: Bloquea las filas seleccionadas, impidiendo que otras transacciones las lean o modifiquen hasta que se complete la transacción. 

![image](https://github.com/user-attachments/assets/acb34300-2e22-4731-95d6-8bafc1daf2cd)

### Control de Concurrencia Optimista 

Una técnica que puedes implementar es el control de concurrencia optimista, donde se verifica que los datos no han cambiado desde la última vez que fueron leídos antes de hacer un UPDATE. Esto se puede lograr mediante el uso de un campo de versión:

![image](https://github.com/user-attachments/assets/faa63e5b-d922-47f5-9c82-e6ede8bba1eb)
