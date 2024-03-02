CREATE TABLE Employee
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(15),
    job_name VARCHAR(10),
    manager_id INT,
    hire_date DATE,
    salary DECIMAL(10,2),
    commission DECIMAL(7,2),
    dep_id INT,
    FOREIGN KEY (dep_id) REFERENCES Department(dep_id)
);