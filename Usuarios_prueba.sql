INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('Carlos Martínez', 'carlos.martinez@example.com', 'admin', 'activo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('Ana Gómez', 'ana.gomez@example.com', 'usuario', 'activo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('Juan Pérez', 'juan.perez@example.com', 'usuario', 'inactivo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('María Rodríguez', 'maria.rodriguez@example.com', 'usuario', 'activo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('José López', 'jose.lopez@example.com', 'usuario', 'activo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('Laura Sánchez', 'laura.sanchez@example.com', 'admin', 'activo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('Pedro Jiménez', 'pedro.jimenez@example.com', 'usuario', 'activo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('Lucía Díaz', 'lucia.diaz@example.com', 'usuario', 'inactivo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('Miguel Torres', 'miguel.torres@example.com', 'usuario', 'activo');
INSERT INTO Usuarios (nombre, email, rol, estado) VALUES ('Sofía Romero', 'sofia.romero@example.com', 'usuario', 'activo');

-- Venta 1
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (1, '2024-08-01', 150.75);

-- Venta 2
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (2, '2024-08-02', 250.00);

-- Venta 3
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (1, '2024-08-03', 300.50);

-- Venta 4
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (3, '2024-08-01', 50.00);

-- Venta 5
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (4, '2024-08-05', 500.00);

-- Venta 6
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (5, '2024-08-06', 100.25);

-- Venta 7
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (1, '2024-08-07', 75.00);

-- Venta 8
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (6, '2024-08-07', 200.50);

-- Venta 9
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (7, '2024-08-08', 350.00);

-- Venta 10
INSERT INTO Ventas (usuario_id, fecha_venta, total_venta)
VALUES (8, '2024-08-08', 120.75);


-- Producto 1
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Laptop', 1000.00);

-- Producto 2
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Smartphone', 600.00);

-- Producto 3
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Tablet', 300.00);

-- Producto 4
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Monitor', 200.00);

-- Producto 5
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Teclado', 50.00);

-- Producto 6
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Mouse', 25.00);

-- Producto 7
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Impresora', 150.00);

-- Producto 8
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Auriculares', 75.00);

-- Producto 9
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Cámara', 500.00);

-- Producto 10
INSERT INTO Productos (nombre_producto, precio)
VALUES ('Altavoces', 80.00);

-- Venta 1 (usuario_id=1) incluye 1 Laptop y 2 Teclados
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (1, 1, 1);
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (1, 5, 2);

-- Venta 2 (usuario_id=2) incluye 1 Smartphone y 1 Auriculares
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (2, 2, 1);
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (2, 8, 1);

-- Venta 3 (usuario_id=1) incluye 1 Tablet y 1 Monitor
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (3, 3, 1);
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (3, 4, 1);

-- Venta 4 (usuario_id=3) incluye 1 Mouse
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (4, 6, 1);

-- Venta 5 (usuario_id=4) incluye 1 Impresora y 1 Altavoces
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (5, 7, 1);
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (5, 10, 1);

-- Venta 6 (usuario_id=5) incluye 1 Cámara
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (6, 9, 1);

-- Venta 7 (usuario_id=1) incluye 1 Auriculares
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (7, 8, 1);

-- Venta 8 (usuario_id=6) incluye 1 Monitor
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (8, 4, 1);

-- Venta 9 (usuario_id=7) incluye 2 Smartphones
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (9, 2, 2);

-- Venta 10 (usuario_id=8) incluye 1 Teclado y 1 Mouse
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (10, 5, 1);
INSERT INTO Ventas_Productos (venta_id, producto_id, cantidad)
VALUES (10, 6, 1);
