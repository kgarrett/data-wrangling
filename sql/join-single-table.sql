--Lecture "SQL Queries III - Join, Single table," 2017-02-14

SELECT *
FROM objects

--Gets the big join table
SELECT *
FROM objects, noises

SELECT *
FROM objects, noises
WHERE objects.noise_id = noises.id

SELECT *
FROM objects, noises
WHERE objects.noise_id = noises.id

SELECT *
FROM objects, noises
WHERE objects.noise_id = noises.id
  AND objects.name = "highlighter"

--The noise of the highlighter

--Noise has_many Object
--Object belongs_to Noise

--objects.noise_is is our foreign key
--noises.id is our primary key

--objects.noise_id = noises.id is the join condition

--Figure out what tables are involved, figure out which one has a foreign key, and that tells you the join condition


--Other way of thinking about this
SELECT *
FROM objects
WHERE objects.name = "highlighter"
  AND objects.noise_id = noise.id

SELECT noises.name
FROM objects
WHERE objects.name = "highlighter"
  AND objects.noise_id = noises.id

--The names of the "non-clicky" objects?

SELECT *
FROM noises
WHERE noises.name = "non-clicky"

SELECT *
FROM noises, objects
WHERE noises.name = "non-clicky"
  AND objects.noise_id = noises.id

SELECT objects.name
FROM noises, objects
WHERE noises.name = "non-clicky"
  AND objects.noise_id = noises.id

--When did Domhog Kiwter purchase his tickets?

SELECT *
FROM people

SELECT *
FROM people, purchases
WHERE purchases.person_id = people.id
  AND people.name = "Domhog Kiwter"

SELECT purchases.date
FROM people, purchases
WHERE purchases.person_id = people.id
  AND people.name = "Domhog Kiwter"

SELECT purchases.date
FROM people
  JOIN purchases
    ON purchases.person_id = people.id
WHERE people.name = "Domhog Kiwter"
