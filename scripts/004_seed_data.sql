-- 1. Inserción de Usuarios 
INSERT INTO USUARIO (id_usuario, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, edad, correo, contrasena, rol, ocupacion) VALUES
('1002345678', 'Sergio', 'David', 'Gomez', 'Gonzales', 20, 'sergio.gomez@unicesar.edu.co', '$2b$10$hashedpassword1', 'Conductor', 'Estudiante'),
('1008765432', 'Yefferson', NULL, 'Lopez', 'Perez', 21, 'yefferson.lopez@unicesar.edu.co', '$2b$10$hashedpassword2', 'Pasajero', 'Estudiante'),
('1003456789', 'Juan', 'David', 'Rangel', 'Silva', 22, 'juan.rangel@unicesar.edu.co', '$2b$10$hashedpassword3', 'Conductor', 'Estudiante'),
('1009876543', 'Maria', 'Fernanda', 'Torres', 'Daza', 19, 'maria.torres@unicesar.edu.co', '$2b$10$hashedpassword4', 'Pasajero', 'Estudiante'),
('1001112223', 'Carlos', 'Andres', 'Perez', 'Meza', 23, 'carlos.perez@unicesar.edu.co', '$2b$10$hashedpassword5', 'Conductor', 'Estudiante');

-- 2. Inserción de Rutas
INSERT INTO RUTA (origen, destino, lat_origen, lon_origen, lat_destino, lon_destino) VALUES
('Glorieta Mi Pedazo de Acordeon', 'Universidad Popular del Cesar (Sabanas)', 10.463100, -73.253200, 10.485200, -73.268100),
('Centro Comercial Guatapuri', 'Universidad Popular del Cesar (Hurtado)', 10.491500, -73.247800, 10.478900, -73.259400),
('Terminal de Transportes de Valledupar', 'Universidad Popular del Cesar (Sabanas)', 10.442100, -73.270100, 10.485200, -73.268100),
('Ciudadela 4 Centenarios', 'Universidad Popular del Cesar (Sabanas)', 10.451200, -73.261500, 10.485200, -73.268100),
('Barrio Los Mayales', 'Universidad Popular del Cesar (Hurtado)', 10.438900, -73.250100, 10.478900, -73.259400);

-- 3. Inserción de Teléfonos de Usuarios (Atributo multivaluado)
INSERT INTO TELEFONO_USUARIO (id_usuario, telefono) VALUES
('1002345678', '3001234567'),
('1002345678', '3119876543'),
('1008765432', '3014567890'),
('1003456789', '3167891234'),
('1009876543', '3205554433');

-- 4. Inserción de Preferencias (Relación 1:1 con Usuario)
INSERT INTO PREFERENCIA (id_usuario, prioridad_costo, prioridad_tiempo, preferir_compartir) VALUES
('1002345678', 4, 5, TRUE),
('1008765432', 5, 3, TRUE),
('1003456789', 3, 4, FALSE),
('1009876543', 5, 5, TRUE),
('1001112223', 2, 4, TRUE);

-- 5. Inserción de Vehículos (5 filas)
INSERT INTO VEHICULO (id_usuario, tipo, modelo, capacidad, ruta_cotidiana, foto_vehiculo) VALUES
('1002345678', 'Automovil', 'Chevrolet Spark GT 2018', 4, 'Barrio Los Cortijos -> UPC Sabanas', '/uploads/vehiculos/spark.jpg'),
('1003456789', 'Moto', 'Yamaha FZ 2.0 2021', 1, 'Sector Novalito -> UPC Hurtado', '/uploads/vehiculos/yamaha.jpg'),
('1009876543', 'Bicicleta electrica', 'Xiaomi Himo C20', 1, 'Barrio Dangond -> UPC Sabanas', NULL),
('1008765432', 'Automovil', 'Renault Logan 2020', 4, 'Barrio Villalba -> UPC Hurtado', '/uploads/vehiculos/logan.jpg'),
('1001112223', 'Moto', 'Bajaj Pulsar NS 200', 1, 'San Fernando -> UPC Sabanas', '/uploads/vehiculos/pulsar.jpg');

-- 6. Inserción en Especializaciones 
INSERT INTO AUTOMOVIL (id_vehiculo, numero_puertas) VALUES (1, 4);
INSERT INTO MOTO (id_vehiculo) VALUES (2);
INSERT INTO BICICLETA_ELECTRICA (id_vehiculo) VALUES (3);
INSERT INTO AUTOMOVIL (id_vehiculo, numero_puertas) VALUES (4, 4);
INSERT INTO MOTO (id_vehiculo) VALUES (5);

-- 7. Inserción de Viajes 
INSERT INTO VIAJE (id_conductor, id_ruta, fecha_hora_salida, costo, cupos_disponibles, estado) VALUES
('1002345678', 1, '2026-10-15 06:30:00', 3000.00, 3, 'Disponible'),
('1003456789', 2, '2026-10-15 12:00:00', 2500.00, 1, 'Disponible'),
('1001112223', 3, '2026-10-16 07:00:00', 2000.00, 2, 'Disponible'),
('1002345678', 4, '2026-10-16 12:30:00', 3500.00, 3, 'Disponible'),
('1003456789', 5, '2026-10-17 06:00:00', 0.00, 1, 'Disponible'); 

-- 8. Inserción de Solicitudes 
INSERT INTO SOLICITUD (id_usuario, id_ruta, fecha_hora, hora_limite, presupuesto, compartir) VALUES
('1008765432', 1, '2026-10-14 20:00:00', '07:00:00', 3500.00, TRUE),
('1009876543', 3, '2026-10-14 21:00:00', '06:45:00', 4000.00, TRUE),
('1003456789', 2, '2026-10-14 22:00:00', '11:45:00', 3000.00, TRUE),
('1002345678', 4, '2026-10-15 18:00:00', '12:15:00', 4000.00, TRUE),
('1001112223', 5, '2026-10-15 19:00:00', '05:45:00', 2500.00, FALSE);

-- 9. Inserción de Reservas 
INSERT INTO RESERVA (id_viaje, id_pasajero, estado) VALUES
(1, '1008765432', 'Confirmada'),
(2, '1009876543', 'Confirmada'),
(3, '1008765432', 'Pendiente'),
(4, '1001112223', 'Confirmada'),
(5, '1008765432', 'Confirmada');

-- 10. Inserción de Mensajes 
INSERT INTO MENSAJE (id_emisor, id_receptor, contenido, leido) VALUES
('1008765432', '1002345678', 'Hola, ¿puedes pasar por la esquina del parque?', TRUE),
('1002345678', '1008765432', 'Claro que sí, nos vemos a las 6:30 AM.', FALSE),
('1009876543', '1003456789', 'Hola, ¿a qué hora sales mañana?', TRUE),
('1003456789', '1009876543', 'A las 12:00 en punto.', TRUE),
('1001112223', '1008765432', 'Voy a salir un poco antes por tráfico.', FALSE);

-- 11. Inserción de Calificaciones 
INSERT INTO CALIFICACION (id_reserva, id_evaluador, id_evaluado, puntuacion, comentario) VALUES
(1, '1008765432', '1002345678', 5, 'Excelente conductor, muy puntual y amigable.'),
(2, '1009876543', '1003456789', 4, 'Buen viaje, muy amable.'),
(3, '1008765432', '1001112223', 5, 'Excelente servicio y puntualidad.'),
(4, '1001112223', '1002345678', 5, 'Todo perfecto.'),
(5, '1008765432', '1003456789', 5, 'Muy recomendado.');