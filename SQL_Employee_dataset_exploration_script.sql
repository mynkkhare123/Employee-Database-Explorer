
  
  SELECT * FROM Employee;
  SELECT * FROM Department;
  
  # Question 1. Find employees whose salary is higher than the average salary of their department.
  -- The output should display EmployeeID, Name, DepartmentID and salary.
  
  -- task 1: find the avg salary of their department.
  SELECT DepartmentID , AVG(Salary) avg_salary
  FROM  Employee
  GROUP BY DepartmentID;
  
-- 1, 83333.333333
-- 2, 96500.000000
-- 3, 115000.000000
  
  -- task 2: find employess whose salary is higher than the avg salary
  SELECT EmployeeID, Name, DepartmentID, salary
  FROM Employee
  WHERE Salary ( '83333','96500','115000'); -- WRONG QUERY
                    
                    
-- task 3 : Optimize approach 
 SELECT EmployeeID, Name, DepartmentID, salary
  FROM Employee
  WHERE Salary > (SELECT AVG(Salary) FROM Employee e1 WHERE Employee.DepartmentID = e1.DepartmentID);
  
-- Retrive the names of employee who have highest salary in their department.

SELECT EmployeeID, Name, DepartmentID, Salary
FROM Employee 
WHERE Salary = (SELECT MAX(Salary) FROM Employee e1 WHERE Employee.DepartmentID = e1.DepartmentID); 


-- Find the department that has the maximum number of employees
-- Output -> DepartmentID, Departmentname, EmployeeCount
SELECT e.DepartmentID, d.Departmentname, COUNT(*) EmployeeCount
From Employee e
JOIN Department d
ON e.DepartmentID = d.DepartmentID
GROUP BY e.DepartmentID, d.Departmentname
ORDER BY EmployeeCount ASC
LIMIT 1;  -- JOIN METHOD


-- list employees who have a salary greater than the average salary of the entire company
-- the output should display EmployeeID, Name, Salary.

SELECT EmployeeID, Name, Salary
FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);


-- Find the employees who earm more than Bob's salary
-- the output display EmployeeID, Name, salary
 SELECT EmployeeID, Name, salary
 FROM Employee
 WHERE Salary > (SELECT Salary FROM Employee WHERE  Name = 'Bob');