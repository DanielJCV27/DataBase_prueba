# Proyecto de Prueba: Diseño y Consultas en Base de Datos Relacional

## Descripción

Este proyecto tiene como objetivo evaluar la capacidad para diseñar y gestionar bases de datos relacionales, así como realizar consultas SQL para obtener y analizar datos. 
El proyecto incluye la creación de tres tablas relacionadas (`Usuarios`, `Ventas`, `Productos`), así como la ejecución de varias consultas para obtener estadísticas clave sobre las ventas y los usuarios.

## Estructura de la Base de Datos

### Tablas

- **Usuarios**: Contiene información sobre los usuarios del sistema.
  - `usuario_id`: Identificador único del usuario (PK).
  - `nombre`: Nombre del usuario.
  - `email`: Correo electrónico del usuario.
  - `rol`: Rol del usuario (ej. `admin`, `usuario`).
  - `estado`: Estado del usuario (ej. `activo`, `inactivo`).

- **Ventas**: Registra las ventas realizadas por los usuarios.
  - `venta_id`: Identificador único de la venta (PK).
  - `usuario_id`: Identificador del usuario que realizó la venta (FK).
  - `fecha_venta`: Fecha en que se realizó la venta.
  - `total_venta`: Monto total de la venta.

- **Productos**: Contiene información sobre los productos disponibles para la venta.
  - `producto_id`: Identificador único del producto (PK).
  - `nombre_producto`: Nombre del producto.
  - `precio`: Precio del producto.

- **Ventas_Productos**: Relaciona ventas con productos específicos.
  - `venta_id`: Identificador de la venta (FK).
  - `producto_id`: Identificador del producto (FK).
  - `cantidad`: Cantidad de unidades del producto vendidas en la venta.

## Datos de Prueba

Se han creado registros de ejemplo para las tablas `Usuarios`, `Ventas`, `Productos`, y `Ventas_Productos` para facilitar la prueba de las consultas y el análisis de los datos.

## Consultas SQL

Las siguientes consultas SQL han sido diseñadas para obtener análisis específicos:

1. **Total de ventas por usuario**:
    ```sql
    SELECT u.nombre, SUM(v.total_venta) AS total_ventas
    FROM Usuarios u
    LEFT JOIN Ventas v ON u.usuario_id = v.usuario_id
    GROUP BY u.nombre;
    ```

2. **Total de ventas por producto**:
    ```sql
    SELECT p.nombre_producto, SUM(vp.cantidad * p.precio) AS total_ventas
    FROM Productos p
    JOIN Ventas_Productos vp ON p.producto_id = vp.producto_id
    GROUP BY p.nombre_producto;
    ```

3. **Total de ventas por mes**:
    ```sql
    SELECT strftime('%Y-%m', v.fecha_venta) AS mes, SUM(v.total_venta) AS total_ventas
    FROM Ventas v
    GROUP BY mes;
    ```

4. **Promedio de ventas diarias**:
    ```sql
    SELECT AVG(daily_sales.total) AS promedio_ventas_diarias
    FROM (
        SELECT fecha_venta, SUM(total_venta) AS total
        FROM Ventas
        GROUP BY fecha_venta
    ) daily_sales;
    ```

5. **Usuarios con más de cinco compras en el último mes**:
    ```sql
    SELECT u.nombre, COUNT(v.venta_id) AS total_compras
    FROM Usuarios u
    JOIN Ventas v ON u.usuario_id = v.usuario_id
    WHERE v.fecha_venta >= date('now', '-1 month')
    GROUP BY u.nombre
    HAVING COUNT(v.venta_id) > 5;
    ```

6. **Usuarios que no han realizado ventas en el último mes**:
    ```sql
    SELECT u.nombre
    FROM Usuarios u
    LEFT JOIN Ventas v ON u.usuario_id = v.usuario_id 
    AND v.fecha_venta >= date('now', '-1 month')
    WHERE v.venta_id IS NULL;
    ```

## Instrucciones

1. **Configuración de la base de datos**: Utiliza el script SQL proporcionado (`setup.sql`) para crear las tablas y poblar la base de datos con los datos de prueba.

2. **Ejecución de consultas**: Usa las consultas SQL anteriores para probar el análisis de datos en tu entorno SQL.

3. **Validación**: Verifica que las consultas devuelvan los resultados esperados basados en los datos de prueba.

## Requisitos Previos

- DBeaver o cualquier otro cliente SQL compatible con SQLite.
- SQLite instalado en tu sistema.


