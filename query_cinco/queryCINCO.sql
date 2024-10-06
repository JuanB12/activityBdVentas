/* ---- Consulta 5 ---- */
SELECT
    c.id AS cliente_id,
    c.nombre AS cliente_nombre,
    c.apellido1 AS cliente_apellido1,
    c.apellido2 AS cliente_apellido2,
    c.ciudad AS cliente_ciudad,
    c.categoría AS cliente_categoria,
    p.id AS pedido_id,
    p.total AS pedido_total,
    p.fecha AS pedido_fecha
FROM
    cliente c
    JOIN pedido p ON c.id = p.id_cliente
WHERE
    p.fecha BETWEEN '2017-01-01'
    AND '2017-12-31'
    AND p.total BETWEEN 300
    AND 1000
ORDER BY
    c.apellido1,
    c.apellido2;