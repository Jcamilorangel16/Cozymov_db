-- Demostracion de restricciones 

-- Check edad >= 16

INSERT INTO USUARIO (id_usuario, primer_nombre, primer_apellido, edad, correo, contrasena, rol, ocupacion) 
VALUES ('9999999999', 'Niño', 'Prueba', 14, 'niño@unicesar.edu.co', '$2b$10$hashedpassword', 'Pasajero', 'Estudiante');

-- costo >= 0

INSERT INTO VIAJE (id_conductor, id_ruta, fecha_hora_salida, costo, cupos_disponibles, estado) 
VALUES ('1002345678', 1, '2026-11-01 08:00:00', -500.00, 3, 'Disponible');