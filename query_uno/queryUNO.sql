/* ---- Consulta 1 ---- */
SELECT
    c.id,
    CONCAT (
        c.nombre,
        ' ',
        c.apellido1,
        ' ',
        COALESCE(c.apellido2, '')
    ) AS NombreCompleto
FROM
    cliente c
    JOIN pedido p ON c.id = p.id_cliente
GROUP BY
    c.id
ORDER BY
    c.nombre;