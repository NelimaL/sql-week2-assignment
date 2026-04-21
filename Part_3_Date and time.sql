Set search_path to  nairobi_academy;

--Qn 1)	Write a query to extract the birth year, birth month, 
--and birth day from each student's date_of_birth as three separate columns. Show first_name alongside them.

SELECT first_name,
EXTRACT(YEAR FROM date_of_birth) AS birth_year,
EXTRACT(MONTH FROM date_of_birth) AS birth_month,
EXTRACT(DAY FROM date_of_birth) AS birth_day
FROM students;

--Qn 2)	Write a query to show each student's full name, their date_of_birth, and their age in complete years. 
--Order from oldest to youngest.

SELECT CONCAT(first_name, ' ', last_name) AS full_name,
date_of_birth,
DATE_PART('year', AGE(date_of_birth)) AS age
FROM students
ORDER BY date_of_birth ASC;

--Qn 3)	Write a query to display each exam date in this exact format: 'Friday, 15th March 2024'.. 
--Call the column formatted_date.

SELECT 
TO_CHAR(
    exam_date, 
    'FMDay, DDth Month YYYY'
) AS formatted_date
FROM exam_results;

