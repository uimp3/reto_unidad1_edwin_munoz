-- Q1
-- Listar todos los productos únicos

SELECT DISTINCT producto AS producto_unico
FROM ventas;

-- Q2
-- Pedidos del primer trimestre de 2024
-- con cantidad mayor a 5 unidades

SELECT *
FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-03-31'
AND cantidad > 5;

-- Q3
-- Vendedores cuyo ingreso bruto supera $10,000

SELECT
    vendedor,
    SUM(cantidad * precio_unitario) AS ingreso_bruto_total
FROM ventas
GROUP BY vendedor
HAVING ingreso_bruto_total > 10000;

-- Q4
-- Resumen por categoría

SELECT
    categoria,
    COUNT(*) AS total_pedidos,
    SUM(cantidad) AS unidades_vendidas,
    AVG(precio_unitario) AS precio_promedio
FROM ventas
GROUP BY categoria;

-- Q5
-- Cumplimiento de meta por vendedor

SELECT
    v.vendedor,
    v.zona,
    v.meta_mensual,
    SUM(
        ve.cantidad * ve.precio_unitario
    ) AS ventas_totales,
    ROUND(
        (
            SUM(
                ve.cantidad * ve.precio_unitario
            ) * 100.0
        ) / v.meta_mensual,
        2
    ) AS porcentaje_cumplimiento
FROM vendedores v
JOIN ventas ve
    ON v.vendedor = ve.vendedor
GROUP BY
    v.vendedor,
    v.zona,
    v.meta_mensual;

-- Q6
-- Cliente con mayor ingreso total
-- durante el primer semestre

SELECT
    cliente_id,
    ingreso_total
FROM (
    SELECT
        cliente_id,
        SUM(
            cantidad * precio_unitario
        ) AS ingreso_total
    FROM ventas
    WHERE fecha BETWEEN
          '2024-01-01'
      AND '2024-06-30'
    GROUP BY cliente_id
)
ORDER BY ingreso_total DESC
LIMIT 1;