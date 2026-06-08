SQL Data Analysis Internship – Task 1

Submitted By

Girija Sharma*

Objective

The objective of this task is to perform database operations using SQL and analyze stored student data using various SQL queries such as aggregate functions, grouping, sorting, filtering, and data modification operations.

Project Contents

* Database Creation
* Table Creation
* Data Insertion
* Data Analysis using SQL Queries
* Query Result Explanations

SQL Queries Performed

1. Display All Student Records

SELECT * FROM Students;

Retrieves and displays all records from the Students table.

2. Calculate Average Scores

SELECT AVG(MathScore),
       AVG(ScienceScore),
       AVG(EnglishScore)
FROM Students;

Calculates the average marks obtained by students in Mathematics, Science, and English.

3. Find the Top Performing Student

SELECT StudentID, Name,
       (MathScore + ScienceScore + EnglishScore) AS total_marks
FROM Students
ORDER BY total_marks DESC
LIMIT 1;

Identifies the student with the highest total marks across all subjects.

4. Count Students by Grade

SELECT COUNT(StudentID), Grade
FROM Students
GROUP BY Grade;

Counts the number of students in each grade category.

5. Average Scores by Gender

SELECT Gender,
       AVG(MathScore),
       AVG(ScienceScore),
       AVG(EnglishScore)
FROM Students
GROUP BY Gender;

Calculates subject-wise average scores separately for male and female students.

6. Students Scoring Above 80 in Mathematics

SELECT StudentID, Name, MathScore
FROM Students
WHERE MathScore > 80;

Displays students who scored more than 80 marks in Mathematics.

7. Update Student Record

UPDATE Students
SET MathScore = 75
WHERE StudentID = 1;

Updates the Mathematics score of Student ID 1 from 78 to 75.

Conclusion

This task demonstrates the use of SQL for database creation, data insertion, data retrieval, aggregation, grouping, filtering, sorting, and updating records. The queries provide meaningful insights into student performance and showcase fundamental SQL concepts used in data analysis.
