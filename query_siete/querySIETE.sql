/* ---- Consulta 7 ---- */
SELECT
    DISTINCT co.nombre AS comercial_nombre,
    co.apellido1 AS comercial_apellido1,
    co.apellido2 AS comercial_apellido2
FROM
    comercial co
    JOIN pedido p ON co.id = p.id_comercial
    JOIN cliente c ON p.id_cliente = c.id
WHERE
    c.nombre = 'María'
    AND c.apellido1 = 'Santana'
    AND c.apellido2 = 'Moreno';