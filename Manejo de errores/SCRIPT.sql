-- VERIFICACION E INSERCION CONDICIONAL
-- Crear procedimiento almacenado para insertar datos con manejo de errores
DELIMITER $$

CREATE PROCEDURE InsertarDatosClinica()
BEGIN
    DECLARE error INT DEFAULT 0;

    -- Iniciar una transacción
    START TRANSACTION;

    -- Intentar insertar datos en la tabla de pacientes
    INSERT INTO pacientes (nombre, apellido, fecha_nacimiento, direccion, telefono, email) VALUES
    ('Laura', 'García', '1985-05-15', 'Calle Falsa 123', '123456789', 'laura.garcia@example.com');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO pacientes (nombre, apellido, fecha_nacimiento, direccion, telefono, email) VALUES
    ('Miguel', 'Fernández', '1990-08-22', 'Avenida Siempre Viva 742', '987654321', 'miguel.fernandez@example.com');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO pacientes (nombre, apellido, fecha_nacimiento, direccion, telefono, email) VALUES
    ('Ana', 'Rodríguez', '1978-11-30', 'Plaza Mayor 5', '456789123', 'ana.rodriguez@example.com');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    -- Intentar insertar datos en la tabla de especialidades
    INSERT INTO especialidades (nombre) VALUES
    ('Cardiología');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO especialidades (nombre) VALUES
    ('Pediatría');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO especialidades (nombre) VALUES
    ('Ginecología');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    -- Intentar insertar datos en la tabla de doctores
    INSERT INTO doctores (nombre, apellido, especialidad_id) VALUES
    ('Juan', 'Pérez', 1);
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO doctores (nombre, apellido, especialidad_id) VALUES
    ('María', 'López', 2);
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO doctores (nombre, apellido, especialidad_id) VALUES
    ('Carlos', 'Ruiz', 3);
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    -- Intentar insertar datos en la tabla de consultorios
    INSERT INTO consultorios (nombre) VALUES
    ('Consultorio 1');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO consultorios (nombre) VALUES
    ('Consultorio 2');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO consultorios (nombre) VALUES
    ('Consultorio 3');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    -- Intentar insertar datos en la tabla de citas
    INSERT INTO citas (paciente_id, doctor_id, consultorio_id, fecha, hora) VALUES
    (1, 1, 1, '2024-09-01', '09:00:00');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO citas (paciente_id, doctor_id, consultorio_id, fecha, hora) VALUES
    (2, 2, 2, '2024-09-02', '10:00:00');
    SET error = error + IF(ROW_COUNT() = 0, 1, 0);

    INSERT INTO citas (paciente_id, doctor_id, consultorio_id, fecha, hora) VALUES
    (3, 3, 3, '2024-09-03', '11:00:00');
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
CALL InsertarDatosClinica();
