-- Name: Navneet Kaur, Student ID: 8946587, Class: Database Automation

-- Creating a new table 'projects' with the required field 
CREATE TABLE IF NOT EXISTS projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE,
    end_date DATE
);

-- Adding a new column 'budget' to above 'projects' table
ALTER TABLE projects
ADD COLUMN budget_2 DECIMAL(10, 2);
