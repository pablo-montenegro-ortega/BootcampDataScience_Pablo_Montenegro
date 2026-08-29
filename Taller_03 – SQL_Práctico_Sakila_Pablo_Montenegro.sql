-- Taller 03 SQL - Sakila (Corrección)
-- Estudiante: Pablo Montenegro

USE sakila;

-- ==========================================
-- PARTE 1 – SELECT y WHERE
-- ==========================================

-- 1. Mostrar nombre y apellido de todos los clientes
SELECT first_name, last_name 
FROM customer;

-- 2. Películas con duración mayor a 120 minutos
SELECT title, length 
FROM film 
WHERE length > 120;


-- ==========================================
-- PARTE 2 – ORDER BY
-- ==========================================

-- 3. Ordenar clientes por apellido --> Por orden alfabetico de la A a la Z
SELECT first_name, last_name 
FROM customer 
ORDER BY last_name ASC;

-- 4. Top 5 películas más largas --> TIP: Use la palabra LIMIT
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 5;


-- ==========================================
-- PARTE 3 – INNER JOIN
-- ==========================================

-- 5. Cantidad pagada y fecha del pago con nombre y apellido del cliente (JOIN entre Payment - Customer)
SELECT c.first_name, c.last_name, p.amount, p.payment_date 
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id;

-- 6. Películas alquiladas (JOIN entre Rental - Inventory - Film)
SELECT r.rental_id, f.title, i.inventory_id, r.rental_date 
FROM rental r
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id;


-- ==========================================
-- PARTE 4 – LEFT JOIN
-- ==========================================

-- 7. Nombre y apellido de clientes sin pagos (LEFT JOIN entre Payment - Customer pero usando WHERE)
SELECT c.first_name, c.last_name 
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id 
WHERE p.payment_id IS NULL;

-- 8. Listar los nombres de las peliculas y su duracion de aquellos titulos que no tienen actores
SELECT f.title, f.length 
FROM film f
LEFT JOIN film_actor fa ON f.film_id = fa.film_id 
WHERE fa.actor_id IS NULL;


-- ==========================================
-- PARTE 5 – INSERT, UPDATE, DELETE (Data Definition Language / DML)
-- RECUERDA USAR WHERE
-- ==========================================

-- 9. Insertar actor temporal
INSERT INTO actor (first_name, last_name) 
VALUES ('PABLO', 'MONTENEGRO');

-- 10. Actualizar actor (Modificar el actor temporal creado)
UPDATE actor 
SET first_name = 'PABLO EMILIO' 
WHERE first_name = 'PABLO' AND last_name = 'MONTENEGRO';

-- 11. Eliminar actor (Eliminar el actor temporal usando WHERE)
DELETE FROM actor 
WHERE first_name = 'PABLO EMILIO' AND last_name = 'MONTENEGRO';


-- ==========================================
-- PARTE 6 – Consultas Avanzadas
-- ==========================================

-- 12. Top 5 clientes con mayor cantidad de dinero pagado al servicio de rentas
SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount) AS total_pagado 
FROM customer c
INNER JOIN payment p ON c.customer_id = p.customer_id 
GROUP BY c.customer_id, c.first_name, c.last_name 
ORDER BY total_pagado DESC 
LIMIT 5;

-- 13. Top 5 Películas más alquiladas (JOIN entre Rental - Inventory - Film) --> Agrupar los datos con conteo y tomar las mejores 5
SELECT f.title, COUNT(r.rental_id) AS total_alquileres 
FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id 
GROUP BY f.film_id, f.title 
ORDER BY total_alquileres DESC 
LIMIT 5;
