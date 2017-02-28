SELECT *
FROM tickets

SELECT tickets.price
FROM tickets


--No space between the functions
SELECT SUM(tickets.price)
FROM tickets

--$2,184,365

--rename the SUM column


SELECT *
FROM bands

SELECT bands.fee
FROM bands

SELECT SUM(bands.fee)
FROM bands

--$559,179

--rename (with or without quote marks if not using spaces)
SELECT SUM(bands.fee) AS total_band_fees
FROM bands

--Amount paid out if we paid the bands after each performance

SELECT *
FROM bands

SELECT *
FROM bands, performances
WHERE performances.band_id = bands.id

SELECT SUM(bands.fee) AS band_fees
FROM bands, performances
WHERE performances.band_id = bands.id

--$182,704
--There is some junk data because this only includes the bands that actually performed


--What is the average ticket price?
SELECT *
FROM tickets

SELECT tickets.price
FROM tickets

SELECT AVG(tickets.price)
FROM tickets
--$20.2870

--Counting the number of rows (COUNT)
--Number of bands in the database

SELECT *
FROM bands

SELECT bands.name
FROM bands

SELECT COUNT(bands.name)
FROM bands


COUNT (*)
--this gives you the number of rows in the table
SELECT COUNT(*)
FROM bands


--This basically does the same thing as COUNT (bands.name)
SELECT COUNT(*)
WHERE bands.name IS NOT NULL

--Remove duplicates with the word DISTINCT
SELECT DISTINCT bands.name
FROM bands
--Reducing it down to the unique set of values; does not have parentheses

--Count the unique values
SELECT COUNT(DISTINCT bands.name)
FROM bands


--IMPORTANT CONCEPT: Difference between COUNT(*), COUNT(column.name), & COUNT(DISTINCT column.name)
bands.name
Beardyman
the bands
Beardyman
NULL
the other band

COUNT (*) -> 5
COUNT(bands.name) => 4
COUNT(DISTINCT bands.name) => 3


--How many people are in the database?
--This is a problem for people who have the same name

SELECT COUNT(DISTINCT people.name)
FROM people

--COUNT(*) FROM people is what prof would expect for this question

--How many people purchased a ticket?

SELECT COUNT(DISTINCT purchases.person_id)
FROM purchases
