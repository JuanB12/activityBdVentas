/* ---- Consulta 3 ---- */
SELECT
    co.id AS comercial_id,
    co.nombre AS comercial_nombre,
    co.apellido1 AS comercial_apellido1,
    co.apellido2 AS comercial_apellido2,
    co.comisión AS comercial_comision,
    p.id AS pedido_id,
    p.total AS pedido_total,
    p.fecha AS pedido_fecha,
    p.id_cliente AS pedido_id_cliente
FROM
    comercial co
    JOIN pedido p ON co.id = p.id_comercial
ORDER BY
    co.apellido1,
    co.apellido2;