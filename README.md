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

* Desarrollado por [Pablo Montenegro Ortega] - Estudiante de Data Science *
  
## 📌 Taller 06 – Aprendizaje Supervisado: Regresión (Predicción de Precios de Autos Usados)
* **Resumen Ejecutivo:** Análisis comparativo de modelos de aprendizaje supervisado para la predicción de precios de vehículos mediante regresión (Regresión Lineal, Árbol de Decisión y Random Forest).
* **1. Análisis de los Archivos y Datos Dataset Base:** Conjunto de datos de automóviles usados (cardekho.csv) con atributos técnicos y comerciales (como año, kilómetros recorridos, tipo de combustible, transmisión, cilindrada, potencia máxima y precio de venta) previamente homologados y traducidos al español latino.
* **2. Proceso Común de Preprocesamiento:** Tratamiento riguroso de valores nulos mediante imputación por la mediana, codificación ordinal estructurada para el historial de propietarios (propietarios_anteriores), codificación nominal (One-Hot Encoding) para variables categóricas, y estandarización estadística con StandardScaler sobre la matriz de características.
* **3. División del Dataset:** Implementación de una partición de entrenamiento y prueba (Train/Test Split 80/20) con semilla fija (random_state=42) para garantizar la reproducibilidad experimental.
* **Modelo 1: Regresión Lineal (Baseline):**
* **Objetivo:** Establecer una línea base de relación lineal simple entre las características del vehículo y su precio comercial.
* **Comportamiento:** Permite una interpretación directa de los coeficientes, pero muestra limitaciones para capturar relaciones y dinámicas no lineales complejas ($R^2 \approx 0.6885$).
* **Modelo 2: Árbol de Decisión:**
* **Objetivo:** Estructurar reglas jerárquicas de decisión basadas en particiones recursivas del espacio de características.
* **Comportamiento:** Ofrece un incremento sustancial en la precisión predictiva al modelar interacciones no lineales entre las variables mecánicas y comerciales ($R^2 \approx 0.9436$).
* **Modelo 3: Random Forest (Modelo Ganador):**
* **Objetivo:** Implementar un modelo de ensamblaje (ensemble) combinando múltiples árboles de decisión para mitigar el sobreajuste (overfitting) y maximizar la robustez.
* **Desempeño y Ganancia:** Sobresale de forma contundente como el mejor algoritmo evaluado, alcanzando el Coeficiente de Determinación más alto y una precisión sobresaliente ($R^2 \approx 0.9689$).
* **Conclusión Analítica:** La experimentación demuestra que los modelos basados en ensamblaje (Random Forest) superan

* Desarrollado por [Pablo Montenegro Ortega] - Estudiante de Data Science *
  
## 📌 Taller Proyecto Final - Línea de Trabajo: Machine Learing 
* **1. Introducción y Planteamiento del Problema:** El mercado laboral de tecnología e Inteligencia Artificial ofrece distintos roles con remuneraciones muy variadas. Antes de empezar a modelar, se hizo una validación exploratoria inicial del dataset y se encontró que el volumen de vacantes publicadas para los roles de Analista de Datos y Científico de Datos no presenta una tendencia de crecimiento clara año a año (correlación cercana a cero), por lo que el enfoque del proyecto se orientó hacia una pregunta distinta pero igual de útil para la orientación profesional: ¿qué variables determinan el salario de una oferta de empleo en el sector tecnológico, y qué tan bien se puede predecir ese salario a partir de las características del cargo?   El objetivo de este proyecto es construir y comparar distintos modelos de regresión que permitan predecir el salario (salario) de una vacante a partir de variables como el nivel de experiencia, el cargo, las habilidades técnicas solicitadas, el país y la modalidad de trabajo.
* **2. Exploración de Datos (EDA) y Preprocesamiento:** Durante la fase exploratoria con el conjunto de datos de 10,345 registros y 19 columnas se realizó una limpieza y traducción de las variables al español para facilitar la interpretación y la sustentación.   Se analizaron estadísticos descriptivos clave de la variable objetivo (salario), identificando un salario promedio competitivo y su dispersión frente a factores determinantes.   Se evaluó el impacto de la experiencia y las habilidades técnicas (skill_python, skill_sql, skill_ml, skill_deep_learning, skill_cloud) sobre la compensación salarial mediante visualizaciones univariadas y bivariadas (boxplots y gráficos de barras).
* **3. Modelado y Evaluación de Rendimiento:** Siguiendo los requisitos para la línea de aprendizaje supervisado (regresión) se implementaron al menos 3 modelos diferentes de Machine Learning orientados a la predicción continua.   Se dividió el conjunto de datos en entrenamiento y prueba, aplicando las transformaciones de preprocesamiento necesarias (como codificación de variables categóricas y escalamiento).Se comparó el rendimiento de los modelos utilizando métricas de evaluación de regresión apropiadas (tales como el Error Cuadrático Medio - MSE, la Raíz del Error Cuadrático Medio - RMSE, y el Coeficiente de Determinación $R^2$).
* **4. Conclusiones del Análisis y Sustentación:** A partir del flujo completo de ciencia de datos desarrollado en el notebook y los resultados de los modelos evaluados, se concluye lo siguiente:
* **Factores determinantes en la compensación:** El enfoque se replanteó con evidencia. No hay tendencia de crecimiento real en la demanda ni en el salario de estos roles en el dataset analizado.
* **Rendimiento de los modelos:** La Regresión Lineal fue el mejor modelo (R2=0.9144), lo que indica que la relación entre las variables y el salario es mayormente lineal.
* **El cargo y el nivel de experiencia Senior son los factores de mayor impacto positivo; las skills de ML, Deep Learning y Cloud también aportan un incremento salarial relevante.**
* **El dataset tiene características de datos sintéticos (fechas hasta 2026, variables sin relación temporal real), por lo que las conclusiones reflejan patrones del dataset modelado, y se recomienda validarlas con datos reales del mercado laboral.**
