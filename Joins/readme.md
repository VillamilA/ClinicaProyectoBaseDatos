###INNER JOIN 

Consulta para obtener la información completa de las citas, incluyendo los datos del paciente, el doctor y el consultorio para cada cita: 

 ![image](https://github.com/user-attachments/assets/ec7c5f90-9536-4cc2-acb0-4416a0c20e70)

Consulta para obtener la información de cada cita junto con la descripción del tratamiento asociado a esa cita (si existe): 

 ![image](https://github.com/user-attachments/assets/25c3c538-6b28-47d9-9f4a-9dfb21d04f8f)


###LEFT JOIN 

Consulta para obtener todos los pacientes y las citas que han tenido, incluyendo aquellos pacientes que no tienen citas: 
 
![image](https://github.com/user-attachments/assets/a104d714-f1a8-4476-913f-63f25ed14ccf)

Consulta para obtener una lista de todos los pacientes junto con la información de las citas que han tenido, si es que han tenido alguna: 

 ![image](https://github.com/user-attachments/assets/eb847b99-5dee-4b55-bc75-9226012ea874)


###RIGHT JOIN 

Consulta para obtener todos los doctores y las citas que tienen, incluyendo aquellos doctores que no han tenido citas: 

![image](https://github.com/user-attachments/assets/d26c5647-b390-4996-b171-db70029cc53c)

Consulta para obtener una lista de todas las citas junto con la información del doctor que realizó cada cita, incluyendo aquellos doctores que no tienen citas: 

 ![image](https://github.com/user-attachments/assets/35d9cc9f-a3ea-4dc6-945f-7d690f6f25f9)

###FULL OUTER JOIN 

En MySQL, no existe `FULL OUTER JOIN` directamente, por lo que se utiliza una combinación de `LEFT JOIN` y `RIGHT JOIN  

Consulta para obtener la información completa de citas y pacientes, incluyendo aquellos registros en ambas tablas que no tienen coincidencias 

 ![image](https://github.com/user-attachments/assets/d067cd14-ef5b-471f-9049-bfd5b5c8f81e)


###CROSS JOIN 

Consulta para obtener una combinación de todas las especialidades con todos los doctores (Nota: `CROSS JOIN` puede producir una gran cantidad de resultados): 

![image](https://github.com/user-attachments/assets/6c432599-1a75-48d1-aed8-2b58da9bcf1f)

Consulta para obtener una combinación de todos los pacientes con todos los doctores. 

![image](https://github.com/user-attachments/assets/26fc4e20-18e7-4db6-a545-165812188ff7)


### Joins Complejos: Múltiples Tablas y Subconsultas 

Consulta Compleja con Múltiples Tablas 

Consulta para obtener el listado de tratamientos, junto con la información de la cita, paciente y doctor asociados: 

![image](https://github.com/user-attachments/assets/9917c7fc-e9bc-4869-8d98-dc4d4cb373d4)

 
### Subconsulta con Joins 

Consulta para obtener una lista de pacientes que han tenido citas recientes (en los últimos 30 días) junto con los tratamientos que recibieron en esas citas 

![image](https://github.com/user-attachments/assets/3851d5ab-41da-41b3-9006-7959332bd2ff)

