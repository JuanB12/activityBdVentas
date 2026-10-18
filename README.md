<div align="center">

# 🗄️ Gestión de Ventas — SQL

**Base de datos relacional para gestionar clientes, comerciales y pedidos, con 9 consultas SQL que responden preguntas reales del negocio.**

![SQL](https://img.shields.io/badge/SQL-3776AB?style=flat-square&logo=databricks&logoColor=FFD43B)
![MySQL](https://img.shields.io/badge/MySQL-0B1220?style=flat-square&logo=mysql&logoColor=FFD43B)
![phpMyAdmin](https://img.shields.io/badge/phpMyAdmin-3776AB?style=flat-square&logo=phpmyadmin&logoColor=white)

</div>

> 🎓 **Proyecto universitario**.

---

## 📌 Descripción

Sistema de gestión de ventas que registra **clientes**, los **comerciales** que los atienden (con su comisión) y los **pedidos** que realizan. Sobre ese modelo se construyeron consultas con `JOIN`, filtros, ordenamientos y agregaciones.

## 🧩 Modelo de datos

```
cliente  1 ──── N  pedido  N ──── 1  comercial
(id, nombre,        (id, total,        (id, nombre,
 apellidos,          fecha,             apellidos,
 ciudad,             id_cliente,        comisión)
 categoría)          id_comercial)
```

## 🔍 Consultas

| # | Pregunta que responde | Técnicas |
|---|---|---|
| 1 | ¿Qué clientes han hecho pedidos? (nombre completo, sin repetir) | `JOIN`, `CONCAT`, `COALESCE`, `GROUP BY` |
| 2 | Todos los pedidos de cada cliente, ordenados por apellido | `JOIN`, `ORDER BY` |
| 3 | Todos los pedidos gestionados por cada comercial | `JOIN`, `ORDER BY` |
| 4 | Clientes con sus pedidos y el comercial que los atendió | `JOIN` de 3 tablas |
| 5 | Pedidos de 2017 con un total entre 300 y 1000 | `BETWEEN` en fechas y montos |
| 6 | ¿Qué cliente hizo el pedido de mayor valor? | `ORDER BY … DESC`, `LIMIT` |
| 7 | ¿Qué comerciales atendieron a la clienta María Santana Moreno? | `JOIN`, `DISTINCT`, `WHERE` |
| 8 | ¿Qué clientes atendió el comercial Daniel Sáez Vega? | `JOIN`, `DISTINCT`, `WHERE` |
| 9 | Clientes con algún pedido de más de 2000 | `JOIN`, `DISTINCT`, filtro por monto |

Cada consulta está en su carpeta: `query_uno/`, `query_dos/`, … `query_nueve/`.

## 🚀 Cómo usarlo

```bash
git clone https://github.com/JuanB12/activityBdVentas.git
cd activityBdVentas
```

1. Importa `ventas.sql` en MySQL o MariaDB (por ejemplo, desde phpMyAdmin o con `mysql -u root -p < ventas.sql`). Crea las tablas y carga los datos de ejemplo.
2. Ejecuta cualquier consulta de las carpetas `query_*`.

---

<div align="center">

Hecho por **[Juan Barrios](https://github.com/JuanB12)** · Backend Developer 🐍

</div>
