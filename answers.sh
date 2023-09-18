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