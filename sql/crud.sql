--

--Warm-up
--Which venue had the minimum capacity?

SELECT *
FROM venues

SELECT *
FROM venues
ORDER BY venues.capactity ASC

SELECT *
FROM venues
ORDER BY venues.capactity ASC
LIMIT 1

MIN() AND MAX()

SELECT *
FROM venues

SELECT MIN(venues.capactiy)
FROM venues

--This is wrong and will not work:
SELECT venues.name, MIN(venues.capactiy)
FROM venues
--Don't use MIN() in the SELECT column

SELECT venues.name
FROM venues
WHERE venues.capactiy = MIN(venues.capactiy)
--This is ok, but ORDER BY and LIMIT are the better way to go

--Insert, Update, and Delete Lecture
--Our CRUD functions

INSERT INTO table_name(column1, column2) VALUE(data1,data2)
--data1 goes into column1 and data2 goes into column2

INSERT INTO books(id,title) VALUE(7,"Wuthering Heights")
--Can be single or double quotes

INSERT INTO books(title) VALUE("Wuthering Heights")
--Providing the ids manually, but the database will create them if we leave off and use AUTO_INCREMENT in the database (in phpmyadmin, shows up in the extra structure column)

--Insert "The Spirit Ring" to the bookstore database
INSERT INTO books(id,title) VALUE(7,"The Spirit Ring")
--Change the default to none and check the AI
INSERT INTO books(title) VALUE("The Spirit Ring")

--Updating data already in the database
--Find the rows we want to change - write WHERE clauses

SELECT authors.id
FROM authors
WHERE name = "Emily Bronte"

UPDATE authors
SET name = "Emily Brontë"
WHERE author.id = 23

--Always run the SELECT clause first so that you don't update things you were not expecting

--Find and replace
UPDATE authors
SET lastname = "Brontë"
WHERE lastname = "Bronte"

UPDATE performances
SET venue_id = 23, band_id = 7
WHERE id = 2
--After running these, the old data will be gone completely

--In the bookstore, change all the mailing addresses to postal mail
SELECT *
FROM address_records

SELECT *
FROM address_records
WHERE address_records.address_type = "mailing"

SELECT *
FROM address_records
WHERE address_records.address_type = "mailing"

--Change to an UPDATE
UPDATE address_records
SET address_records.address_type = "postal mail"
WHERE address_records.address_type = "mailing"

--Deleting data

SELECT *
FROM books
WHERE id = 23

DELETE
FROM books
WHERE id = 23
--ID will never be used again by AUTO_INCREMENT

--What happens if you have pointers to the data that you deleted?
--Cascade the deletes - not used very much anymore, but rather python, php or whatever is using the database

--Delete Emily Bronte and the books for which she is an author
SELECT *
FROM people
WHERE name = "Emily Bronte"

Delete
FROM people
WHERE name = "Emily Bronte"
--With the deletes, work form the inside out, i.e. delete books by Emily Bronte and then delete Emily Bronte rather than the other way around

--Books that Emily Bronte authored

SELECT *
FROM people

SELECT *
FROM people
WHERE name = "Emily Bronte"

--Subquery
--This needs to be checked; doesn't work in phpmyadmin
--Prof sending out solution 

SELECT *
FROM people
  JOIN book_roles
    ON book_roles.people_id = people.id
WHERE name = "Emily Bronte"
  AND book_roles.role = "author"

DELETE
FROM books
WHERE id IN (
  SELECT *
  FROM people
    JOIN book_roles
      ON book_roles.people_id = people.id
  WHERE name = "Emily Bronte"
    AND book_roles.role = "author"
)
