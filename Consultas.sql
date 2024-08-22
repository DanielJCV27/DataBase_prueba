--Total venta usuario

SELECT u.nombre, 
       COALESCE(SUM(v.total_venta), 0) AS total_ventas
FROM Usuarios u
LEFT JOIN Ventas v ON u.usuario_id = v.usuario_id 
GROUP BY u.usuario_id;


--Total venta por producto 

SELECT p.nombre_producto, 
       COALESCE(SUM(vp.cantidad * p.precio), 0) AS total_ventas
FROM Productos p
LEFT JOIN Ventas_Productos vp ON p.producto_id = vp.producto_id
GROUP BY p.producto_id;


--Total ventas por mes

SELECT STRFTIME('%Y-%m',v.fecha_venta) AS mes, SUM(v.total_venta) AS total_ventas FROM Ventas v
GROUP BY mes;

--Prom Ventas Diarias

SELECT AVG(total_venta)AS promedio_diario FROM (SELECT fecha_venta,SUM (total_venta)AS total_venta FROM Ventas
GROUP BY fecha_venta
);

-- Usuarios con mas de 5 compras en el ultimo mes

SELECT u.nombre , COUNT(v.venta_id) AS total_compras 
 FROM Ventas v 
 JOIN Usuarios u ON v.usuario_id =u.usuario_id 
 WHERE v.fecha_venta >= date('now','-1 month')
 GROUP BY u.usuario_id 
 HAVING COUNT(v.venta_id)>5; 
 
--Usuarios que no han realizado ventas en el ultimo mes 

Select u.nombre FROM Usuarios u LEFT JOIN Ventas v ON u.usuario_id = v.usuario_id and v.fecha_venta >= date('now','-1 month')
WHERE v.venta_id IS NULL;

