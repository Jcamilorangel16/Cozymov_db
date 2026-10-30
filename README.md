# Cozymov - Base de Datos de Movilidad Universitaria

## Contexto y Motivación
Dentro del entorno universitario, muchos estudiantes necesitan trasladarse diariamente hacia o desde la institución y no siempre cuentan con un medio de transporte propio. Las alternativas disponibles muchas veces no se ajustan a la hora de entrada, el punto de partida, el destino o el presupuesto del estudiante. 

Aunque es común que diferentes estudiantes realicen trayectos semejantes en horarios cercanos, la coordinación de estos recorridos suele depender de comunicaciones informales y poco eficientes ante la falta de un sistema centralizado. 

**Cozymov** nace como una solución tecnológica a esta necesidad: una plataforma que facilita la coordinación de desplazamientos entre los integrantes de la comunidad universitaria. El sistema permite a los usuarios publicar viajes, registrar solicitudes y encontrar coincidencias precisas de acuerdo con su ubicación, horario y preferencias específicas (como prioridad de costo, tiempo o disposición a compartir).

## Tecnologías y Diseño
- **Motor de Base de Datos:** PostgreSQL
- **Gestor:** pgAdmin 4
- **Arquitectura:** Modelo Entidad-Relación Extendido (EER) con esquema relacional normalizado hasta la Forma Normal de Boyce-Codd (BCNF).

## Estructura de los Scripts
1. `001_tablas_base.sql`: Creación de entidades principales e independientes (Usuarios, Rutas).
2. `002_extensiones_y_vehiculos.sql`: Tablas satélite y especialización disjunta/total de vehículos (Automóvil, Moto, Bicicleta eléctrica).
3. `003_tablas_operacionales_e_historial.sql`: Tablas transaccionales (Viajes, Solicitudes, Reservas, Calificaciones y Mensajería interna).
4. `004_seed_data.sql`: Inserción de datos de prueba cubriendo todos los casos de relación del negocio.
5. `005_demostracionesDominio.sql`: Pruebas de restricciones lógicas (CHECK) y demostración de rechazo del servidor.

## Equipo de Desarrollo
- Juan Camilo Rangel Osias
- Luis Alejandro Guerrero González
- Jaider Alberto Rocha Redondo
- Thomas Alfonso Méndez Vega
- Sebastián Camilo Fontecha Barreto