Este script SQL permite combinar la información de establecimientos educativos con la información de las manzanas de un parcelario en la comuna 5. 
A partir de esta combinación, se generan archivos de salida en formato Shapefile y CSV para análisis geoespacial.

Detalles del Dataset
La tabla parcelario_cur3d_20230531 ha sido renombrada a parcelas para simplificar el uso en los scripts.
La tabla resultante, establecimiento_manzana, contiene las siguientes columnas:
nombre_est: Nombre del establecimiento educativo.
manzana: Código de la manzana.
area: Área de la manzana.
unidades: Número de unidades en la manzana.
barrios: Nombre del barrio.
seccion: Sección administrativa.
geom: Geometría de la manzana combinada.
Requisitos
PostgreSQL:

Versión: PostgreSQL 14.
Tablas necesarias: establecimientos_educativos_wgs84 y parcelas deben estar cargadas en la base de datos. Puedes obtener el dataset de parcelas desde https://data.buenosaires.gob.ar/dataset/parcelas
OSGeo4W / GDAL: Para la exportación a Shapefile usando pgsql2shp.

Cliente psql: Necesario para ejecutar el comando \COPY si se usa en terminal.

Sistema de Referencia Espacial (SRS): Utiliza EPSG:4326.

Aclaración para Rutas en Linux y Windows
En Linux: Usa barras normales (/) para las rutas de archivos. Ejemplo: /home/usuario/archivo.csv.
En Windows: También es recomendable usar barras normales (/) en PostgreSQL para evitar errores, en lugar de barras invertidas (\). Ejemplo: C:/Users/Usuario/archivo.csv.
