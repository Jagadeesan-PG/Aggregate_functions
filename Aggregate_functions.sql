-- Create Employees Table
CREATE TABLE Employees (
    EmpID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    Department TEXT,
    Salary INTEGER,
    JoinDate DATE
);

-- Insert Sample Data
INSERT INTO Employees (EmpID, FirstName, LastName, Department, Salary, JoinDate) VALUES
(1, 'John', 'Doe', 'HR', 45000, '2022-05-10'),
(2, 'Jane', 'Smith', 'IT', 60000, '2021-08-15'),
(3, 'Robert', 'Brown', 'Finance', 55000, '2020-02-20'),
(4, 'Emily', 'Davis', 'IT', 65000, '2023-01-10'),
(5, 'Michael', 'Wilson', 'HR', 48000, '2019-11-25');



