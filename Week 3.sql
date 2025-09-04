CREATE DATABASE Schooldb;
USE Schooldb;
CREATE TABLE Student (
Student_id INT AUTO_INCREMENT PRIMARY KEY,
Full_name VARCHAR (100) NOT NULL,
Age INT NOT NULL
);

INSERT INTO Student (Student_id,Full_name,Age)
VALUES
(1, 'Grace Maathai', 17),
(2, 'Ray Wantam', 18),
(3, 'Tony Stands', 18),
(4, 'Princess Diana', 17),
(5, 'Viny Travis', 18);

UPDATE Student
SET Age=20
WHERE Student_id=2;

    




