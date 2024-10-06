/* ---- Consulta 9 ---- */
SELECT
    DISTINCT c.id AS cliente_id,
    c.nombre AS cliente_nombre,
    c.apellido1 AS cliente_apellido1,
    c.apellido2 AS cliente_apellido2,
    c.ciudad AS cliente_ciudad,
    c.categoría AS cliente_categoria
FROM
    cliente c
    JOIN pedido p ON c.id = p.id_cliente
WHERE
    p.total > 2000;