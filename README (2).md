 Aggregate Functions and Grouping

 Objective
Use **aggregate functions** and **grouping** in SQL to summarize employee data.

---

 Database Schema

We use a table **Employees** with the following structure:

```sql
CREATE TABLE Employees (
    EmpID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    Department TEXT,
    Salary INTEGER,
    JoinDate DATE
);
```

### Sample Data
```sql
INSERT INTO Employees (EmpID, FirstName, LastName, Department, Salary, JoinDate) VALUES
(1, 'John', 'Doe', 'HR', 45000, '2022-05-10'),
(2, 'Jane', 'Smith', 'IT', 60000, '2021-08-15'),
(3, 'Robert', 'Brown', 'Finance', 55000, '2020-02-20'),
(4, 'Emily', 'Davis', 'IT', 65000, '2023-01-10'),
(5, 'Michael', 'Wilson', 'HR', 48000, '2019-11-25');
```

---
 Queries and Examples
1. Show all employees
```sql
SELECT * FROM Employees;
```

 2. Total number of employees
```sql
SELECT COUNT(*) AS TotalEmployees
FROM Employees;
```

3. Average salary of employees
```sql
SELECT AVG(Salary) AS AverageSalary
FROM Employees;
```

4. Highest and lowest salary
```sql
SELECT MAX(Salary) AS HighestSalary,
       MIN(Salary) AS LowestSalary
FROM Employees;
```

5. Total salary paid by each department
```sql
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department;
```
6. Average salary per department
```sql
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;
```

7. Count of employees per department
```sql
SELECT Department, COUNT(*) AS NumEmployees
FROM Employees
GROUP BY Department;
```

 8. Departments having more than 1 employee
```sql
SELECT Department, COUNT(*) AS NumEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 1;
```

---

 Expected Output

- **Total Employees:** 5  
- **Average Salary:** 54,600  
- **Highest Salary:** 65,000 (Emily - IT)  
- **Lowest Salary:** 45,000 (John - HR)  
- **Department-wise Salary Totals:** HR → 93,000, IT → 125,000, Finance → 55,000  
- **Departments with more than 1 employee:** HR, IT  

---
 How to Run

1. Open [DB Fiddle](https://www.db-fiddle.com/).  
2. Paste the schema + data into the **Build Schema** section.  
3. Run the queries one by one in the **SQL Fiddle** query section.  
4. View results for each query.  

---

