"""
Exercise No. 06

Using the sqlite3 package connect to the northwind.db database.

Then create a cursor object and execute the SQL query that returns the following columns:
    - FirstName
    - LastName
    - Title
    - City

From the Employee table.

Using a for loop, display each row returned by the created query to the console as shown below.

Expected result:
    ('Nancy', 'Davolio', 'Sales Representative', 'Seattle')
    ('Andrew', 'Fuller', 'Vice President, Sales', 'Tacoma')
    ('Janet', 'Leverling', 'Sales Representative', 'Kirkland')
    ('Margaret', 'Peacock', 'Sales Representative', 'Redmond')
    ('Steven', 'Buchanan', 'Sales Manager', 'London')
    ('Michael', 'Suyama', 'Sales Representative', 'London')
    ('Robert', 'King', 'Sales Representative', 'London')
    ('Laura', 'Callahan', 'Inside Sales Coordinator', 'Seattle')
    ('Anne', 'Dodsworth', 'Sales Representative', 'London')
"""
import sqlite3

conn = sqlite3.connect('northwind.db')  # Connect to the database
cur = conn.cursor()  # Create a cursor object

cur.execute("SELECT FirstName, LastName, Title, City FROM Employee;")  # Execute the query

rows = cur.fetchall()  # Fetch all the rows

for row in rows:
    print(row)  # Print the rows

conn.close()  # Close the connection to the database
