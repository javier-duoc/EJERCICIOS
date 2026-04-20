---Manejo de valores nulos en nombres de empleados
SELECT
    NOMBRE "NOMBRE CON NULOS",
    NVL (NOMBRE, 'VACIO') "NOMBRE SIN NULOS",
    EDAD "EDAD PERSONAS"
FROM NOMBRES;

---Cálculo del salario promedio en el departamento 10

SELECT
'PROMEDIO DE SALARIO DEL DEPARTAMENTO' || DEPT_NO || ': '||
CONCAT (TO_CHAR(AVG(SALARIO),'$99G999G999'), ' pesos') AS "PROMEDIO SALARIO"
FROM
    EMPLE
WHERE
    DEPT_NO= 10
GROUP BY 
    DEPT_NO;
    
    
---Estadísticas generales sobre empleados
SELECT
  'TOTAL EMPLEADOS: ' || COUNT (*) AS "EMPLEADOS REGISTRADOS",
  COUNT (COMISION) AS "CON COMISION",
  CONCAT (TO_CHAR(MAX(SALARIO),'$9G999G999'), ' PESOS') AS "SALARIO MAS ALTO",
  CONCAT(TO_CHAR(SUM(SALARIO),'$99G999G999'), ' PESOS') AS "TOTAL SALARIO"
  FROM EMPLE;
  
  --Análisis de oficios en los departamentos 10 y 20
  
  SELECT
    COUNT(OFICIO) AS " CANTIDAD DE OFICIOS",
    COUNT (DISTINCT OFICIO) "CANTIDAD DE OFICIOS DIFERENTES"
    FROM EMPLE
    WHERE DEPT_NO IN (10 , 20);
    
    
    
---Cálculo de años entre dos fechas y formatos de fecha
    SELECT 
    ROUND (MONTHS_BETWEEN(SYSDATE, TO_DATE('&&VAR_FECHA', 'DDMMYYYY')) / 12,0)
    AS "AÑOS ENTRE 2 FECHAS",
    TO_CHAR (TO_dATE('&&VAR_FECHA', 'DDMMYYYY'), 'FM "HOY ES" DAY "," DD "DE" MONTH
    "DE" YYYY') AS "FORMATO FECHA 1",
    TO_CHAR (TO_DATE('&&VAR_FECHA', 'DDMMYYYY'), 'DAY MONTH DD, YYYY'),
    TO_CHAR(TO_DATE('&&VAR_FECHA', 'DDMMYYYY'), 'MONTH') AS "MES"
FROM DUAL;

-----Configuración de formato de fecha y consulta de fechas de contratación
SELECT
TO_CHAR (FECHA_ALT, 'MONTH DD, YYYY') "MES DIA, AÑO"
FROM EMPLE;

---Cálculo de estadísticas salariales del departamento 30
SELECT
    (TO_CHAR(AVG(SALARIO),'$9G999G999')) AS "SALARIO MEDIO",
    COUNT (COMISION) "COMISION NO NULAS",
    (TO_CHAR(MAX(SALARIO),'9G999G999')) AS "SALARIO MAXIMO",
    (TO_CHAR(MIN(SALARIO),'999G999')) AS "SALARIO MINIMO"
    FROM EMPLE
    WHERE
        DEPT_NO = 30;
        
----Formateo de fechas de nacimiento de empleados

SELECT  
    NOMBRE || ' ' || TO_CHAR (FECHANAC, 'FM"NACIO EL" DD "DE" MONTH "DE" YYYY') AS "FORMATEADO"
    FROM NACIMIENTOS;





    
    
  
  
    

    
    







