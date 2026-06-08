CREATE DATABASE StudentManagement;
USE StudentManagement;

CREATE TABLE Students(
	StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20),
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(1),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

INSERT INTO Students(Name,Gender,Age,Grade,MathScore,ScienceScore,EnglishScore) VALUES
('Abha','F',20,'B',78,79,80),
('Riya','F',22,'A',90,92,88),
('Akshit','M',21,'B',77,80,80),
('Dolma','F',20,'D',60,60,58),
('Bhanu','F',21,'A',86,82,85),
('Ram','M',20,'A',90,90,93),
('Bharat','M',20,'C',60,68,75),
('Raj','M',23,'B',75,80,79),
('Jenny','F',19,'F',30,33,40),
('Kate','M',20,'E',55,50,52),
('Heena','F',20,'A',90,92,89);

SELECT * FROM Students;

SELECT AVG(MathScore),
	   AVG(ScienceScore),
       AVG(EnglishScore)
FROM Students;

SELECT StudentID,name,
(MathScore+ScienceScore+EnglishScore) AS total_marks
FROM Students
ORDER BY total_marks DESC
LIMIT 1;

SELECT COUNT(StudentID), Grade
FROM Students
GROUP BY (Grade);

SELECT gender,
	   AVG(MathScore),
	   AVG(ScienceScore),
       AVG(EnglishScore)
FROM Students
GROUP BY (gender);

SELECT StudentID,Name,MathScore
FROM Students 
WHERE MathScore > 80;

UPDATE Students
SET MathScore=75
WHERE StudentID = 1;