/* ---- Consulta 4 ---- */
SELECT
    c.id AS cliente_id,
    c.nombre AS cliente_nombre,
    c.apellido1 AS cliente_apellido1,
    c.apellido2 AS cliente_apellido2,
    c.ciudad AS cliente_ciudad,
    c.categoría AS cliente_categoria,
    p.id AS pedido_id,
    p.total AS pedido_total,
    p.fecha AS pedido_fecha,
    co.id AS comercial_id,
    co.nombre AS comercial_nombre,
    co.apellido1 AS comercial_apellido1,
    co.apellido2 AS comercial_apellido2,
    co.comisión AS comercial_comision
FROM
    cliente c
    JOIN pedido p ON c.id = p.id_cliente
    JOIN comercial co ON p.id_comercial = co.id
ORDER BY
    c.apellido1,
    c.apellido2,
    p.fecha;