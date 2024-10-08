# Full Name: Navneet Kaur, ID: 8946587, Class: Database Automation
import pymysql

# Establish a connection to the MySQL database
connection = pymysql.connect(
    host='nav-database.mysql.database.azure.com',   # Azure Database
    user='root_nav',        # Database username
    password='Secret55', # Database password
    database='firstdb'   # Name of the database to connect to
)

# Path to the SQL file that contains the schema changes
sql_script_path = 'add_departments.sql'

# Reading the SQL script from the specified file
with open(sql_script_path, 'r') as file:
    sql_script = file.read()

# Creating a cursor object to execute the SQL commands
cursor = connection.cursor()

# Split the SQL script by semicolons and execute each statement
for statement in sql_script.split(';'):
    if statement.strip():  # Ignore empty statements
        cursor.execute(statement)  # Execute the valid SQL statement

# Commiting all changes to the database
connection.commit()

# Close the cursor and the connection to the database
cursor.close()
connection.close()

# Print confirmation message after successful execution
print("The changes in the database through" + sql_script_path + "Executes successfuly")
