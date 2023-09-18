# first answer
SELECT * FROM students;

# second answer
SELECT * FROM students 
WHERE Age > 30;

# third answer
SELECT * FROM students 
WHERE Gender = "F" AND Age > 30;

# answer four
SELECT Points FROM students
WHERE name = "Alex";

# answer five
INSERT INTO students(name , Age, Gender, Points)VALUES("Ahmad", 20, "M", 30000);

# answer six
UPDATE students
SET Points = Points + 10 WHERE name = "Basma";

# answer seven
UPDATE students
SET Points = Points - 10 WHERE name = "Alex";

# create table
CREATE TABLE graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    age INT,
    gender VARCHAR(255),
    points INT,
    grad DATE
);

# insert values
INSERT INTO graduates (name, age, gender, points)
SELECT name, age, gender, points
FROM students
WHERE name = 'Layal';

# update 
UPDATE graduates
SET grad = '08-09-2018'
WHERE name = 'Layal';

# delete
DELETE FROM students 
WHERE name = "Layal";

#creating a joint table
CREATE TABLE kousa AS 
SELECT employees.name , employees.Company, companies.date
FROM employees 
INNER JOIN companies
ON employees.company = companies.name

#select
SELECT name FROM kousa
WHERE date < 2000

#Selecting Role
SELECT Company FROM employees
WHERE Role = "Graphic Designer"

# Order Desc
SELECT * from students
ORDER BY points DESC
LIMIT 1 ;

# Select avg
SELECT AVG(points) AS averagepoints
FROM students;

# Counting points
SELECT COUNT() AS numstudents
FROM students
WHERE points = 500;

# Select
SELECT name
FROM students
WHERE name LIKE '%s%';

# order desc
SELECT
FROM students
ORDER BY points DESC;"