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