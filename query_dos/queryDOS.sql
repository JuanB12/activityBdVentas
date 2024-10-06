/* ---- Consulta 2 ---- */

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
    p.id_comercial AS pedido_id_comercial
FROM
    cliente c
    JOIN pedido p ON c.id = p.id_cliente
ORDER BY
    c.apellido1,
    c.apellido2;