CREATE TABLE Usuarios (
	usuario_id INTEGER PRIMARY KEY AUTOINCREMENT,
	nombre TEXT NOT NULL,
	email TEXT NOT NULL,
	rol TEXT NOT NULL,
	estado TEXT NOT NULL 
);

CREATE TABLE Ventas (
	venta_id INTEGER PRIMARY KEY AUTOINCREMENT,
	usuario_id INTEGER,
	fecha_venta DATE NOT NULL,
	total_venta DECIMAL (10,2) NOT NULL,
	FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);

CREATE TABLE Productos (
	producto_id INTEGER PRIMARY KEY AUTOINCREMENT,
	nombre_producto TEXT NOT NULL,
	precio DECIMAL (10,2)NOT NULL

);

CREATE TABLE Ventas_Productos(
venta_producto_id INTEGER PRIMARY KEY AUTOINCREMENT,
venta_id INTEGER,
producto_id INTEGER,
cantidad INTEGER NOT NULL,
FOREIGN KEY (venta_id)REFERENCES Ventas(venta_id),
FOREIGN KEY (producto_id)REFERENCES Productos(producto_id)
);








