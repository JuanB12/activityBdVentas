/* ---- Consulta 8 ---- */
SELECT
    DISTINCT c.nombre AS cliente_nombre
FROM
    cliente c
    JOIN pedido p ON c.id = p.id_cliente
    JOIN comercial co ON p.id_comercial = co.id
WHERE
    co.nombre = 'Daniel'
    AND co.apellido1 = 'Sáez'
    AND co.apellido2 = 'Vega';