--Lecture "SQL Queries I - Intro and SELECT basics," 2017-02-09

SELECT *
FROM cars

--Want to keep a record of the queries executed

SELECT *
FROM cars
WHERE cars.cyclinders = 4

--The AND is inside the WHERE clause; want one condition per line
--This is a less than, rather than equal, still results in a true or a false
--Data needs to go into quotes

SELECT *
FROM cars
WHERE cars.cylinders = 4
  AND cars.year < 2000

SELECT *
FROM cars
WHERE cars.manufacturer = "Audi"

SELECT *
FROM cars
WHERE cars.manufacturer = "Audi"
   OR cars.manufacturer = "Ford"

--This is the harder way
SELECT *
FROM cars
WHERE cars.year = 2008
  AND ( cars.manufacturer = "Ford" OR cars.manufacturer = "Audi" )

--In takes a list of alternatives, no need to use OR, so only need to use AND
--Rarely the case that we need OR

--This is how you run alternative lists: rather than OR use IN
SELECT *
FROM cars
WHERE cars.year = 2008
  AND cars.manufacturer IN ("Ford", "Audi")

SELECT cars.manufacturer, cars.model
FROM cars
WHERE cars.year = 2008

--Find the city mileage of the Fords

SELECT cars.city_mpg, cars.model
FROM cars
WHERE cars.manufacturer = "Ford"
ORDER BY city_mpg DESC
LIMIT 1
