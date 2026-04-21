Set search_path to  nairobi_academy;

--Qn 1)	Write a query to show each exam result alongside the mark rounded to 1 decimal place, 
--the mark rounded UP to the nearest 10 using CEIL, and the mark rounded DOWN using FLOOR.

SELECT exam_result_id,marks,
ROUND(marks::numeric, 1) AS rounded_1dp,
CEIL(marks / 10.0) * 10 AS rounded_up_10,
FLOOR(marks) AS rounded_down
FROM exam_results;

--Qn 2)	Write a query to calculate the following summary statistics for exam_results in one query: 
--total number of results (COUNT), average mark (AVG rounded to 2 decimal places), 
--highest mark (MAX), lowest mark (MIN), and total marks added together (SUM).

SELECT COUNT(*) AS total_results,
ROUND(AVG(marks), 2) AS average_mark,
MAX(marks) AS highest_mark,
MIN(marks) AS lowest_mark,
SUM(marks) AS total_marks
FROM exam_results;

--Qn 3)	The school wants to apply a 10% bonus to all marks. Write a query to show each result_id, 
--the original marks, and the new boosted_mark rounded to the nearest whole number.

SELECT 
exam_result_id,
marks AS original_marks,
ROUND(marks * 1.10) AS boosted_mark
FROM exam_results;
