-- Taller 03 SQL - Sakila
-- Estudiante: Pablo Montenegro

USE sakila;

-- 1.1 Listar actores ordenados por apellido
SELECT 
    first_name, 
    last_name 
FROM actor
ORDER BY last_name ASC;


-- 1.2 Peliculas de mas de 2 horas y rating PG-13
-- Uso el WHERE para filtrar duracion y clasificacion
SELECT 
    title, 
    length, 
    rating 
FROM film
WHERE length > 120 AND rating = 'PG-13'
ORDER BY length DESC;


-- 2.1 Contar cuantas peliculas hay por cada rating
SELECT 
    rating, 
    COUNT(*) AS cantidad_peliculas
FROM film
GROUP BY rating;


-- 2.2 Top 10 clientes que mas han pagado
-- Uno la tabla payment con customer para ver los nombres
SELECT 
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_pagado
FROM payment AS p
INNER JOIN customer AS c ON p.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_pagado DESC
LIMIT 10;


-- 3.1 Mostrar las peliculas con su categoria
-- Necesito relacionar tres tablas: film, film_category y category
SELECT 
    f.title AS pelicula,
    c.name AS categoria
FROM film AS f
INNER JOIN film_category AS fc ON f.film_id = fc.film_id
INNER JOIN category AS c ON fc.category_id = c.category_id;


-- 3.2 Total de alquileres por tienda
SELECT 
    i.store_id AS tienda,
    COUNT(r.rental_id) AS total_alquileres
FROM rental AS r
INNER JOIN inventory AS i ON r.inventory_id = i.inventory_id
GROUP BY i.store_id;


-- 4.1 Peliculas con costo de reemplazo mayor al promedio
-- Primero saco el promedio con una subconsulta en el WHERE
SELECT 
    title, 
    replacement_cost
FROM film
WHERE replacement_cost > (SELECT AVG(replacement_cost) FROM film)
ORDER BY replacement_cost DESC;