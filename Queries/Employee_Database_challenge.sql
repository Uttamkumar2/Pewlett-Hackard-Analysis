-- slect all employ with all title he/she got and bron between 1952 & 1955 and put it to Retirement_title

SELECT 	emp.emp_no, 
	emp.first_name, 
	emp.last_name, 
	ttle.title, 
	ttle.from_date, 
	ttle.to_date
INTO Retirement_title
from employees emp 
INNER JOIN titles ttle ON emp.emp_no = ttle.emp_no
WHERE emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp.emp_no asc;

-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (rtl.emp_no) rtl.emp_no,
rtl.first_name,
rtl.last_name,
rtl.title
INTO Retirement_title_unique
FROM Retirement_title rtl
WHERE from_date >= (select max(from_date) from titles tl 
			where tl.emp_no = rtl.emp_no)
ORDER BY emp_no, to_date DESC;

-- To retrieve the number of employees by their most recent job title who are about to retire.

SELECT COUNT(title), title 
INTO retiring_titles
FROM Retirement_title_unique
GROUP BY title
ORDER BY COUNT(title) DESC;

-- query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
SELECT DISTINCT ON (emp.emp_no) emp.emp_no, 
	emp.first_name, 
	emp.last_name, 
	emp.birth_date, 
	dep.from_date, 
	dep.to_date, 
	til.title
INTO mentorship_elegible 
FROM employees AS emp
INNER JOIN dept_employee AS dep
ON emp.emp_no = dep.emp_no
INNER JOIN titles AS til
ON emp.emp_no = til.emp_no
WHERE emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
AND dep.to_date = '9999-01-01'
ORDER BY emp.emp_no;
