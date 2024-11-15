# Desafío PostgreSQL y PostGIS
El desafío consiste en generar un script en PostgreSQL, un archivo en formato shapefile (.shp) y otro en CSV de establecimientos educativos del sector público de la Comuna 5 de la Ciudad de Buenos Aires con su correspondiente dato de a qué manzana pertenece.

## Materiales
Para realizar el desafío, es necesario:

Descargar el shapefile o CSV de Establecimientos Educativos desde:
Establecimientos Educativos - Dataset https://data.buenosaires.gob.ar/dataset/establecimientos-educativos

Descargar el shapefile de Parcelas desde:
Parcelas - Dataset https://data.buenosaires.gob.ar/dataset/parcelas

Dato: Una manzana agrupa parcelas.

## Investigar sobre los siguientes geoprocesos:
- Dissolve
- Centroide
- Join espacial

## Productos Esperados
Los productos finales son:

Script .sql con el paso a paso partiendo desde la tabla de establecimientos educativos hasta la generación de los archivos tipo shapefile y CSV con los establecimientos y los datos de la manzana.
Archivo shapefile (.shp) con los puntos de establecimientos educativos del sector público de la Comuna 5 con la información de manzanas.
Archivo CSV con los puntos de establecimientos educativos del sector público de la Comuna 5 con la información de manzanas.
