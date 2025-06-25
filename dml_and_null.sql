-- Sample table
CREATE TABLE Employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT,
    age INTEGER DEFAULT 25,
    department TEXT,
    salary REAL
);

-- Insert data with all values
INSERT INTO Employees (id, name, email, age, department, salary)
VALUES (1, 'Suraj Kumar', 'surajK@gmail.com', 30, 'HR', 50000);

-- Insert data using default and NULL values
INSERT INTO Employees (id, name, email, department, salary)
VALUES (2, 'Rini Jain', NULL, 'Engineering', 60000);

-- Insert with partial values (age defaults to 25)
INSERT INTO Employees (id, name)
VALUES (3, 'Kritika');

-- Insert NULL explicitly
INSERT INTO Employees (id, name, age)
VALUES (4, 'Bhavya Verma', NULL);

-- Switch to unsafe mode
SET SQL_SAFE_UPDATES = 0;

-- UPDATE specific row
UPDATE Employees
SET salary = 70000
WHERE name = 'Rini Jain';

-- UPDATE multiple rows
UPDATE Employees
SET department = 'General'
WHERE department IS NULL;

-- DELETE a specific record
DELETE FROM Employees
WHERE id = 4;
