-- Full Name: Navneet Kaur, ID: 8946587, Class: Database Automation
CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);

-- Insert sample data into departments
INSERT INTO departments (department_name, location)
VALUES ('HR', 'Toronto'), ('IT', 'Vancouver');

-- Create the employees table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Modify the 'location' column in the 'departments' table (e.g., increasing VARCHAR size)
ALTER TABLE departments MODIFY location VARCHAR(100);

-- Delete a row from 'departments' table
DELETE FROM departments WHERE department_id = 1;
