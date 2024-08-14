## Definición
- En estos ejemplos, COMMIT asegura que los cambios realizados se guarden en la base de datos,
mientras que ROLLBACK deshace cualquier cambio realizado durante la transacción si algo sale mal o si se decide no proceder.

## COMMIT
- Confirma los cambios realizados en la base de datos, haciéndolos permanentes, es decir no hay como cambiar a no ser que se elimine.
- Al hacer un COMMIT, confirmas todas las operaciones realizadas en la transacción. La base de datos guarda permanentemente todos los cambios hechos durante esa transacción.

![image](https://github.com/user-attachments/assets/8d69b30c-7fb2-4b7c-81a1-7947ce2d032a)

## ROLLBACK
- Deshace los cambios realizados desde el último COMMIT, restaurando la base de datos al estado anterior.
- Si hiciste un commit no puedes revertir los cambios con un rollback, a no ser que se elimine la información con un delete.
![image](https://github.com/user-attachments/assets/bde61a26-7320-4178-abc7-9a41634a2c0c)
