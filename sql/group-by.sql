--Lecture "SQL Queries VI - GROUP BY," 2017-02-23

--How many tickets sold by the end of April?
--(i.e. purchase.date < "2011-05-01 00:00:00")

SELECT *
FROM purchases

SELECT *
FROM purchases

SELECT *
FROM purchases
WHERE purchases.date < "2011-05-01 00:00:00"

SELECT *
FROM purchases, tickets
WHERE purchases.date < "2011-05-01 00:00:00"
  AND tickets.purchase_id = purchases.id

SELECT COUNT(*)
FROM purchases, tickets
WHERE purchases.date < "2011-05-01 00:00:00"
  AND tickets.purchase_id = purchases.id

SELECT COUNT(*) AS "num_sold_before_end_april"
FROM purchases, tickets
WHERE purchases.date < "2011-05-01 00:00:00"
  AND tickets.purchase_id = purchases.id

--How many purchases did each person make?
--EACH is a tip-off word that it is probably a GROUP BY query

SELECT *
FROM purchases

SELECT *
FROM purchases
ORDER BY purchases.person_id

SELECT purchases.person_id, COUNT(*) AS "purchases_per_person"
FROM purchases
GROUP BY purchases.person_id
ORDER BY purchases_per_person DESC

--Venues that hosted more than 3 performances?

SELECT *
FROM performances

SELECT *
FROM performances
ORDER BY performances.venue_id

SELECT performances.venue_id, venues.name, COUNT(*) AS "performances"
FROM performances, venues
WHERE performances.venue_id = venues.id
GROUP BY performances.venue_id
HAVING performances > 3
--Having is like the WHERE statement
--I have no idea if this is correct

--The venue that hosted the most performances?
SELECT performances.venue_id, venues.name, COUNT(*) AS "performances"
FROM performances, venues
WHERE performances.venue_id = venues.id
GROUP BY performances.venue_id
ORDER BY performances DESC
LIMIT 1

--GROUP BY more than one column - the second column is used to split ties from the first column
--The second value is ordered within the groups created by the first
