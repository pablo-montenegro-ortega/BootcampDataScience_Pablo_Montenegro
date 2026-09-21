# Bootcamp Data Science – Materiales Entregables

## Descripción
Este repositorio contiene los ejercicios, talleres y proyectos desarrollados durante el Bootcamp de Data Science. El objetivo es consolidar conocimientos en análisis de datos, programación en Python, SQL y herramientas de visualización de datos.

## Contenido del repositorio y Habilidades Demostradas

### 1. Ejercicios en Python Básico. Conocimiento de la interfax - Presente
* Uso y declaración de Variables
* Comandos print, input, if - elif - else, try - except, for, While
* Listas, Tuplas, Diccionarios

### 2. Ejercicios de Pandas (Python) - A Futuro
* Manipulación y limpieza de datos.
* Análisis exploratorio de datos (EDA).

### 3. Bases de Datos (SQL) - A Futuro
* Consultas básicas (SELECT, WHERE).
* Ordenamiento de datos (ORDER BY).
* Joins (INNER, LEFT).
* Agregaciones (SUM, COUNT, GROUP BY).

---
## 📌 Taller 03 – SQL Práctico (Sakila)
* **Objetivo:** Análisis exploratorio y consulta de datos relacionales en la base de datos de alquiler de películas *Sakila*.
* **Tecnologías:** SQL (MySQL Workbench / VS Code).
* **Archivos:** `Taller_03 – SQL_Práctico_Sakila.sql`
* **Puntos clave:**
  * Consultas relacionales con `SELECT`, `WHERE`, `ORDER BY` y `LIMIT`.
  * Agregación de datos mediante `GROUP BY`, `HAVING`, `COUNT`, `SUM` y `AVG`.
  * Modelado y combinación de múltiples tablas con `INNER JOIN` y `LEFT JOIN`.

---

## 📌 Taller 04 – Consumo de API REST y Dashboard Power BI
* **Objetivo:** Extraer datos en tiempo real mediante API REST para monitorear la volatilidad y capitalización del mercado cripto.
* **Tecnologías:** Python (Requests, Pandas), Power BI Desktop, DAX.
* **Archivos:** `Taller_04 -Consumo_de_APIs_mas_PowerBI.ipynb`, `Taller_04 -Consumo_de_APIs_mas_PowerBI.pbix`
* **Puntos clave:**
  * Extracción y transformación (ETL) de datos JSON desde API pública en Jupyter Notebook.
  * Modelado de datos en Power BI y desarrollo de medidas DAX para indicadores dinámicos.
  * Diseño de dashboard en *Dark Mode* con tablas de detalle, gráficos de rendimiento y semaforización.

### 📊 Vista previa del Dashboard
![Dashboard Cripto](Taller_04_Dashboard_Preview.png)

*Desarrollado por [Pablo Montenegro Ortega] - Estudiante de Data Science*

## 📌 Taller 05 – Taller 05 Reducción de Dimensiones y Clustering con Spotify
* **Resumen Ejecutivo:** Análisis Comparativo PCA (2D vs. 3D)
* **1. Análisis de los Archivos y Datos Dataset Base:** Conjunto de datos de canciones de Spotify con atributos musicales estandarizados (como acusticidad, bailabilidad, energía, valencia, tempo, sonoridad, etc.) previamente homologados al español.
* **Proceso Común:** En ambos modelos se aplicó limpieza de nulos, estandarización estadística con StandardScaler (para dar el mismo peso a variables con escalas distintas) y reducción dimensional mediante Análisis de Componentes Principales (PCA).
* **2. ¿Por qué implementar un modelo en 2D y otro en 3D?** La razón principal es evaluar el equilibrio entre la pérdida de información (proyección) y la interpretabilidad visual, analizando cómo se incrementa la varianza explicada acumulada al añadir una dimensión adicional.
* **Modelo en 2D (Dos Dimensiones):**
* **Objetivo:** Proyectar los datos en un plano cartesiano bidimensional ($X, Y$) para una visualización y análisis de clústeres simplificado.
* **Comportamiento:** Captura una porción menor de la variabilidad total de los datos musicales originales, sirviendo como una aproximación inicial rápida **[48,74%]**
* **Modelo en 3D (Tres Dimensiones):**
* **Objetivo:** Incorporar un tercer eje espacial ($Z$) para capturar mayor riqueza estructural del espacio de audio original.
* **Ganancia de Varianza:** Permite retener un porcentaje mayor de la varianza acumulada total (alcanzando típicamente más del 60% **[60,76%]** en este tipo de atributos musicales).
* **Conclusión Analítica:** El paso de 2D a 3D demuestra una mejora directa en la representación de la variabilidad de las canciones, permitiendo que algoritmos como KMeans discriminen con mayor precisión los clústeres musicales sin sacrificar drásticamente la capacidad de visualización espacial.
