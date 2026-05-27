CREATE DATABASE placement_project;
USE placement_project;
SELECT * FROM placements LIMIT 10;

CREATE TABLE placements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    branch VARCHAR(100),
    salary_lpa DECIMAL(5,2),
    student_name VARCHAR(100),
    status VARCHAR(50)
);

SELECT branch,
       ROUND(AVG(salary_lpa),2) AS avg_salary
FROM placements
GROUP BY branch
ORDER BY avg_salary DESC;


SELECT status, COUNT(*) AS total_students 
FROM placements 
GROUP BY status;

Describe placements;

SELECT status,
       COUNT(*) AS total_students
FROM placements
GROUP BY status
LIMIT 0, 1000;


SELECT branch,
       ROUND(AVG(salary_lpa), 2) AS avg_salary
FROM placements
GROUP BY branch
ORDER BY branch DESC
LIMIT 0, 1000;


ALTER TABLE placements 
ADD COLUMN company_type VARCHAR(100);

SELECT status,
       ROUND(AVG(salary_lpa), 2) AS avg_salary
FROM placements
GROUP BY status
ORDER BY avg_salary DESC;

ALTER TABLE placements 
ADD COLUMN python_skill VARCHAR(50);

SELECT branch,
       ROUND(AVG(salary_lpa), 2) AS avg_salary
FROM placements
GROUP BY branch;

