
--QUERY 15--
SELECT * FROM Employee WHERE commission>salary;
--QUERY 16--
SELECT * FROM Employee WHERE salary+salary*0.25>3000;
--Query 17--
SELECT emp_name FROM Employee WHERE LEN(emp_name)>6;
--Query 18--
SELECT * FROM Employee WHERE MONTH(hire_date)=01;
--QUERY 19--
SELECT CONCAT(e.emp_name,' works for ',m.emp_name) as WORK,e.emp_id FROM Employee as e JOIN Employee as m ON e.manager_id = m.emp_id
--QUERY 20--
SELECT * FROM Employee WHERE job_name = 'CLERK';
--QUERY 21--
SELECT * FROM Employee Where 2023-YEAR(hire_date)>27;
--QUERY 22--
SELECT * FROM Employee WHERE salary>3500;
--QUERY 23--
SELECT emp_name,job_name,salary FROM Employee WHERE job_name='ANALYST';
--QUERY 24--
SELECT * FROM Employee WHERE YEAR(hire_date)=1991;
--QUERY 25--
SELECT emp_name,hire_date,salary FROM Employee WHERE hire_date<'01-04-1991';
--QUERY 26--
SELECT emp_name, job_name FROM Employee WHERE manager_id=NULL;
--QUERY 27--
SELECT * FROM Employee WHERE hire_date = '1991-05-01';
--QUERY 28--
SELECT emp_id,emp_name,DIFFERENCE(GETDATE(),Year(hire_date)) as experience FROM Employee WHERE manager_id=68319
--QUERY 29--
SELECT emp_id, emp_name,salary/30 as Salary,DIFFERENCE(GETDATE(),YEAR(hire_date)) as experience FROM Employee WHERE salary /30>100;
--QUERY 30--
SELECT emp_name FROM Employee WHERE hire_date<'1991-12-31' AND DIFFERENCE(1991,Year(hire_date))<8;
--QUERY 31--
SELECT * FROM Employee WHERE salary%2!=0;
--QUERY 32--
SELECT * FROM Employee WHERE LEN(CAST(salary AS char))=3+3--SECOND THREE IS FOR .00;
--QUERY 33--
SELECT * FROM Employee WHERE MONTH(hire_date)='04'
--QURY 34--
SELECT * FROM Employee WHERE DAY(hire_date)<19
--QUERY 35--
SELECT * FROM Employee WHERE job_name='SALESMAN' AND DATEDIFF(MONTH,hire_date,GETDATE())>10;
--QUERY 36--
SELECT * FROM Employee WHERE dep_id=1001 OR dep_id=3001 AND YEAR(hire_date)=1991;
--QUERY 37--
SELECT * FROM Employee WHERE dep_id=1001 OR dep_id=2001
--QUERY 38--
SELECT * FROM Employee WHERE dep_id=2001 AND job_name='CLERK'
--QUERY 39--PART 1
SELECT emp_id,emp_name,job_name,salary FROM Employee WHERE commission<salary AND (salary+commission)*12<34000
--QUERY 39--PART 2
SELECT  emp_id,emp_name,job_name,salary FROM Employee WHERE commission<salary AND (salary+commission)*12<34000 AND job_name='SALESMAN' AND dep_id=3001
--QUERY 40--
SELECT * FROM Employee WHERE job_name='MANAGER' OR job_name='CLERK'
--QUERY 41--
SELECT * FROM Employee WHERE MONTH(hire_date) != 2;
--QUERY 42--
SELECT * FROM Employee WHERE YEAR(hire_date) = 1991;
--QUERY 43--
SELECT * FROM Employee WHERE YEAR(hire_date)=1991 AND MONTH(hire_date)=06;
--QUERY 44--
SELECT * FROM Employee WHERE salary*12 BETWEEN 24000 AND 50000;
--QUERY 45--
SELECT * FROM Employee WHERE hire_date IN('1991-05-01','1991-02-20','1991-12-03');
--query 46--
SELECT * FROM Employee WHERE manager_id = 63679 OR manager_id = 68319 OR manager_id = 66564 OR manager_id =69000
--QUERY 47--
SELECT * FROM Employee WHERE MONTH(hire_date)=06 AND YEAR(hire_date) = 1991 OR YEAR(hire_date) = 2024
--QUERY 48--
SELECT *  FROM Employee WHERE YEAR(hire_date)>1990 AND YEAR(hire_date)<2000;
--QUERY 49--
SELECT * FROM Employee WHERE job_name = 'MANAGER' AND dep_id=1001 OR dep_id = 2001
--QUERY 50--
SELECT * FROM Employee WHERE MONTH(hire_date)=02 AND salary BETWEEN 1001 AND 2000
--QUERY 51--
SELECT * FROM Employee WHERE YEAR(hire_date)<1991 OR YEAR(hire_date)>1991
--QUERY 52--
SELECT emp_id,emp_name,job_name, manager_id,hire_date, salary, commission,Employee.dep_id,dep_name FROM
Employee,Department WHERE Employee.dep_id =Department.dep_id
--QUERY 53--
SELECT emp_id,job_name,salary,Employee.dep_id,grade FROM Employee,Department,salary_grade WHERE job_name !='ANALYST' AND salary*12>=60000
--QUERY 54--
SELECT e.emp_id, e.emp_id,e.job_name,m.manager_id,e.salary,e.dep_id FROM Employee as e JOIN Employee as m ON e.emp_id = m.manager_id
--QUERY 55--
SELECT emp_name, Employee.dep_id, salary, commission FROM Employee,Department WHERE salary >=2000 AND salary<5000 AND dep_location='PERTH'
--QUERY 56--
SELECT grade, emp_name FROM Employee JOIN salary_grade ON Employee.salary BETWEEN min_salary AND max_salary AND dep_id=3001 OR dep_id = 1001 AND grade != 4 
--QUERY 57--
SELECT e.emp_id, e.emp_id,e.job_name,m.manager_id,e.salary,e.dep_id 
FROM Employee as e JOIN Employee as m ON e.emp_id = m.manager_id AND m.emp_name = 'JONAS'
--QUERY 58--
SELECT emp_name,MAX(salary) as salry FROM Employee WHERE emp_name = 'FRANK' GROUP BY emp_name
--QUERY 59--
SELECT * FROM Employee WHERE job_name = 'MANAGER' OR job_name='ANALYST'AND salary BETWEEN 2000 AND 5000
--QUERY 60--
SELECT emp_id,emp_name,Department.dep_id,salary,dep_location FROM Employee,Department
WHERE Employee.dep_id = Department.dep_id AND dep_location='PERTH' OR dep_location = 'MELBOURNE' AND DATEDIFF(MONTH,hire_date,GETDATE())>10;
--QUERY 61--
SELECT emp_id,emp_name,Department.dep_id,salary,dep_location FROM Employee,Department
WHERE Employee.dep_id = Department.dep_id AND dep_location='SYDNEY' OR dep_location = 'MELBOURNE' AND
salary BETWEEN 2000 AND 5000 AND YEAR(hire_date)=1991
--QUERY 62--
SELECT EMPLOYEE.dep_id,EMPLOYEE.emp_id,emp_name,salary,dep_name,dep_location,grade FROM Employee,Department,salary_grade WHERE dep_name='MARKETING'
AND dep_location='PERTH' OR dep_location='MELBOURNE' AND Employee.salary BETWEEN min_salary AND max_salary AND grade = 3 OR grade = 4 OR grade = 5
AND DIFFERENCE(2024,YEAR(hire_date))<=25
--QUERY 63--
SELECT * FROM Employee as e JOIN  Employee as m ON e.emp_id = m.manager_id AND e.hire_date>m.hire_date;
--QUERY 64--
SELECT *  FROM Employee JOIN salary_grade ON Employee.salary BETWEEN min_salary AND max_salary AND grade = 4;
--QUERY 65--
SELECT emp_name FROM Employee JOIN Department ON Employee.dep_id = Department.dep_id AND YEAR(hire_date)>1991 AND emp_name !='MARKER' AND emp_name !='ADELYN'
AND (dep_name !='PRODUCTION' OR dep_name !='AUDIT')
--QUERY 66--
SELECT * FROM Employee ORDER BY salary ASC
--QUERY 67--
SELECT * FROM Employee
ORDER BY dep_id ASC, job_name DESC;
--QUERY 68--
SELECT DISTINCT job_name FROM Employee ORDER BY job_name DESC
--QUERY 69--
SELECT emp_id,emp_name,salary as monthly_salary,salary/30 as Daily_salary,salary*12 as Anual_salaray FROM Employee ORDER BY Anual_salaray ASC
--QUERY 70--
SELECT * FROM Employee WHERE job_name='CLERK' OR job_name='ANALYST' ORDER BY job_name DESC
--QUERY 71--
SELECT dep_location FROM Employee JOIN Department ON Employee.dep_id=Department.dep_id AND emp_name='CLARE'
--QUERY 72--
SELECT *  FROM Employee WHERE hire_date IN ('1991-05-01', '1991-12-03', '1990-01-19')
ORDER BY hire_date ASC;
--QUERY 73--
SELECT * FROM Employee WHERE salary<1000 ORDER BY salary ASC
--QUERY 74--
SELECT * FROM Employee ORDER BY salary ASC
--QUERY 75--
SELECT * FROM Employee ORDER BY job_name ASC, emp_id DESC
--QUERY 76--
SELECT DISTINCT job_name FROM Employee JOIN Department ON  Employee.dep_id = Department.dep_id AND 
(Department.dep_id=2001 OR Department.dep_id=3001)
--QUERY 77--
SELECT * FROM Employee WHERE job_name !='PRESIDENT' AND job_name !='MANAGER' ORDER BY salary ASC
--QUERY 78--
SELECT * FROM Employee WHERE salary*12<25000 ORDER BY salary ASC
--QUERY 79--
SELECT	emp_id,emp_name, salary*12 as Anual_salaray, salary/30 as Daily_salaray FROM Employee WHERE job_name='SALESMAN' ORDER BY salary ASC
--QUERY 80--
SELECT emp_id,emp_name,hire_date,GETDATE() AS currentDate,DIFFERENCE(hire_date,GETDATE()) as experience FROM Employee ORDER BY experience ASC
--QUERY 81--
SELECT * FROM Employee WHERE MONTH(hire_date)>6 AND YEAR(hire_date)=1991 ORDER BY job_name ASC
--QUERY 82--
SELECT * FROM Employee JOIN Department ON Employee.dep_id = Department.dep_id AND dep_name IN ('FINANCE','AUDIT') ORDER BY Department.dep_id ASC
--QUERY 83--
SELECT * FROM Employee,salary_grade WHERE Employee.salary BETWEEN min_salary AND max_salary
--QUERY 84--
SELECT emp_name,job_name,Employee.salary,grade,dep_id as department FROM Employee,salary_grade WHERE Employee.salary BETWEEN min_salary AND max_salary ORDER BY department
--QUERY 85--
SELECT emp_name,job_name,e.salary,grade,dep_name FROM Employee as e,salary_grade,Department 
WHERE e.salary BETWEEN min_salary AND max_salary AND e.dep_id =  Department.dep_id AND job_name !='CLERK' ORDER BY e.salary DESC
--QUERY 86--
SELECT emp_name,job_name,e.salary,grade,dep_name FROM Employee as e,salary_grade,Department 
WHERE e.salary BETWEEN min_salary AND max_salary AND e.dep_id =  Department.dep_id AND job_name !='CLERK' ORDER BY e.salary DESC
--QUERY 87--
SELECT * FROM Employee JOIN Department ON Employee.dep_id = Department.dep_id
--QUERY 88--
SELECT * FROM Employee as e JOIN  Employee as m ON e.emp_id = m.manager_id AND e.hire_date>m.hire_date;
--QUERY 89--
SELECT emp_id,emp_id,salary,dep_id FROM Employee WHERE dep_id =1001 ORDER BY salary ASC
--QUERY 90--
SELECT MAX(salary) as highest_salary FROM Employee 
--QUERY 91--
SELECT emp_name,AVG(salary) as Average_SALARY,AVG(salary+commission) as average_renumeration ,job_name  FROM Employee GROUP BY job_name,emp_name
--QUERY 92--
SELECT job_name,salary*12 as anual_salary FROM Employee WHERE YEAR(hire_date)=1991 GROUP BY job_name,salary
--QUERY 93--
SELECT emp_id,emp_name,Employee.dep_id,dep_location FROM Employee JOIN Department ON Employee.dep_id = Department.dep_id
--QUERY 94--
SELECT emp_id, emp_name, Employee.dep_id, dep_location, dep_name FROM Employee,Department WHERE Employee.dep_id = Department.dep_id AND Department.dep_id IN(1001, 2001)
--QUERY 95--
SELECT emp_id, emp_name,Employee.salary,grade FROM Employee,salary_grade WHERE Employee.salary BETWEEN min_salary AND max_salary
--QUERY 96--
SELECT w.manager_id,count(*) FROM Employee w,Employee m
WHERE w.manager_id = m.emp_id GROUP BY w.manager_id
ORDER BY w.manager_id ASC;
--QUERY 97--
SELECT dep_id,job_name, COUNT(*) FROM Employee GROUP BY dep_id,job_name
--QUERY 98--
SELECT dep_id,count(*)
FROM Employee GROUP BY dep_id HAVING count(*) >= 2;

--	query 99--
SELECT grade,COUNT(*),MAX(salary) FROM Employee, salary_grade WHERE Employee.salary BETWEEN min_salary AND max_salary GROUP BY grade
--QUERY 100--
SELECT d.dep_name,
       s.grade,
       count(*)
FROM Employee e,
     department d,
     salary_grade s
WHERE e.dep_id = d.dep_id
  AND e.job_name = 'SALESMAN'
  AND e.salary BETWEEN s.min_salary AND s.max_salary
GROUP BY d.dep_name,
         s.grade
HAVING count(*) >= 2;







