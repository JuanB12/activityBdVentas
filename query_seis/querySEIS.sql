/* ---- Consulta 6 ---- */
SELECT
    CONCAT(
        c.nombre,
        ' ',
        c.apellido1,
        ' ',
        COALESCE(c.apellido2, '')
    ) AS Nombre_Completo,
    p.total AS pedido_mayor
FROM
    cliente c
    JOIN pedido p ON c.id = p.id_cliente
ORDER BY
    p.total DESC
LIMIT
    1;