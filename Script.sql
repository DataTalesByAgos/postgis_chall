DROP TABLE IF EXISTS public.establecimiento_manzana;

CREATE TABLE public.establecimiento_manzana AS
SELECT 
    e.nombre_est,
    p.manzana,
    p.area,
    p.unidades,
    p.barrios,
    p.seccion,
    ST_Union(p.geom) AS geom
FROM 
    public.establecimientos_educativos_wgs84 e
JOIN 
    public.parcelas p
ON 
    ST_Intersects(e.geom, p.geom)
WHERE 
    e.comuna = 5
GROUP BY    
    e.nombre_est,
    p.manzana,
    p.area,
    p.unidades,
    p.barrios,
    p.seccion;

-- Editar con ruta propia, ejecutar \COPY desde psql
COPY (SELECT nombre_est, manzana, area, unidades, barrios, seccion
       FROM public.establecimiento_manzana) 
TO 'C:/Users/PC01/Desktop/establecimientos_manzana.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');
