# Employee Database Explorer

A project to explore an employee database using SQL queries to extract meaningful insights about salaries, departments, and employee distribution.

## Project Overview

This repository contains SQL queries designed to analyze an employee database with three main tables:
- `employees` (employee information)
- `departments` (department details)
- `salaries` (compensation data)

## Objectives

- Demonstrate SQL querying capabilities
- Extract valuable insights from relational data
- Practice common data analysis operations

## Key Features

✅ Top salary analysis  
✅ Departmental employee distribution  
✅ Salary statistics by department  
✅ Advanced filtering techniques  

## SQL Techniques Applied

- Basic SELECT statements
- Table JOIN operations
- Aggregation functions (COUNT, AVG, MAX)
- Filtering with WHERE, HAVING
- Sorting with ORDER BY
- Result limiting with LIMIT
- Advanced filtering using:
  - BETWEEN
  - IN
  - LIKE

## Sample Queries

1. **Top 5 Highest-Paid Employees**
   ```sql
   SELECT e.employee_name, s.salary
   FROM employees e
   JOIN salaries s ON e.employee_id = s.employee_id
   ORDER BY s.salary DESC
   LIMIT 5;


## Contribution
Feel free to fork this project and submit pull requests with additional queries or improvements to existing ones.
