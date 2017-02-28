--Lecture "SQL Queries IV - Join, many tables," 2017-02-16

--What objects are green?
--My solution
SELECT *
FROM colors

SELECT *
FROM colors, objects
WHERE objects.color_id = colors.id

SELECT *
FROM colors, objects
WHERE objects.color_id = colors.id
  AND colors.name = "green"

SELECT objects.name
FROM colors, objects
WHERE objects.color_id = colors.id
  AND colors.name = "green"


--how the prof did it
SELECT *
FROM colors

SELECT *
FROM colors
WHERE colors.name = "green"

SELECT *
FROM colors, objects
WHERE colors.name = "green"
  AND colors.id = objects.color_id

SELECT objects.name
FROM colors, objects
WHERE colors.name = "green"
  AND colors.id = objects.color_id

--What are the noises of the red objects?

SELECT *
FROM colors

SELECT *
FROM colors
WHERE colors.name = "red"

SELECT *
FROM colors, objects
WHERE colors.name = "red"
  AND objects.color_id = colors.id

SELECT *
FROM colors, objects, noises
WHERE colors.name = "red"
  AND objects.color_id = colors.id
  AND objects.noise_id = noises.id

SELECT noises.name
FROM colors, objects, noises
WHERE colors.name = "red"
  AND objects.color_id = colors.id
  AND objects.noise_id = noises.id

--Who bought tickets to see Beardy Man?

SELECT *
FROM bands

SELECT *
FROM bands
WHERE bands.name = "Beardyman"

--Number of rows: 1

SELECT *
FROM bands, performances
WHERE bands.name = "Beardyman"
  AND performances.band_id = bands.id

--Number of rows: 1

SELECT *
FROM bands, performances, tickets
WHERE bands.name = "Beardyman"
  AND performances.band_id = bands.id
  AND tickets.performance_id = performances.id

--Number of rows: 818

SELECT *
FROM bands, performances, tickets, purchases
WHERE bands.name = "Beardyman"
  AND performances.band_id = bands.id
  AND tickets.performance_id = performances.id
  AND tickets.purchase_id = purchases.id

--Number of rows: 818

SELECT *
FROM bands, performances, tickets, purchases, people
WHERE bands.name = "Beardyman"
  AND performances.band_id = bands.id
  AND tickets.performance_id = performances.id
  AND tickets.purchase_id = purchases.id
  AND purchases.person_id = people.id

--Name of rows: 818

SELECT people.name
FROM bands, performances, tickets, purchases, people
WHERE bands.name = "Beardyman"
  AND performances.band_id = bands.id
  AND tickets.performance_id = performances.id
  AND tickets.purchase_id = purchases.id
  AND purchases.person_id = people.id

--Number of rows: 818
