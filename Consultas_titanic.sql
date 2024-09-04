-- Consultar cuantas personas tiene 54 años
SELECT * FROM titanic WHERE Age = '54'; 

-- Select para seleccionar datos de la bd
SELECT * FROM titanic;

-- Filtrar valores
SELECT * FROM titanic WHERE Sex = 'female';

-- Ordenar edades de manera ascendente
SELECT * FROM titanic ORDER BY Age DESC;

-- Contar filas
SELECT COUNT(*) FROM titanic WHERE Age = 28;

-- Contar sobrevivientes
SELECT count(*) FROM titanic WHERE Survived='1';

-- Contar pasajeros por clase
SELECT Pclass, COUNT(1) CANTIDAD FROM titanic GROUP BY Pclass;

-- Buscar pasajeros que abordaron en un purto especifico
SELECT * FROM titanic WHERE Embarked='C';

-- Realiza al menos 5 consultas diferentes a las abordadas. crea un repositorio donde despliegue el sql.
-- Dale permiso a un compañero para colaborar en tu repositorio.

-- 1. Agrupar cantidad de sobrevivientes por genero
SELECT Sex, Survived, count(1) cantidad FROM titanic GROUP BY Sex, Survived ORDER BY Sex;

-- 2. Consultar cuantos menores de 18 años no sobrevivieron, agrupados por genero
SELECT Sex, count(1) cantidad FROM titanic WHERE Age <=18 AND Survived = '0' GROUP BY Sex;

-- 3. COntar cantidad de sobrevivientes y no sobrevientes por clases
SELECT Pclass, Survived, COUNT(*) CANTIDAD FROM titanic GROUP BY Pclass, Survived;

-- 4. Consultar promedio de edad segun el genero
SELECT Sex, round(avg(Age),2) Promedio FROM titanic GROUP BY Sex;

-- 5. Selecciona el el pasajero de menor edad que no sobrevivio
SELECT * FROM titanic WHERE Age = (SELECT min(Age) FROM titanic WHERE Survived='0') AND Survived='0';





 


