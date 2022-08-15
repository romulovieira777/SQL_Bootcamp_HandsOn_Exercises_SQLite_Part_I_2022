"""
Exercise No. 07

Using the sqlite3 package connect to the northwind.db database.

Then create a Cursor object and execute the SQL query that returns the following columns:
    - FirstName
    - LastName
    - Title
    - City

From the Employee table.

Using the Cursor.fetchmany() method, retrieve the first three rows returned by the created query. In response, use a for
loop to display each of these rows to the console as shown below.

Expected result:
    ('Nancy', 'Davolio', 'Sales Representative', 'Seattle')
    ('Andrew', 'Fuller', 'Vice President, Sales', 'Tacoma')
    ('Janet', 'Leverling', 'Sales Representative', 'Kirkland')
"""
import sqlite3

conn = sqlite3.connect('northwind.db')  # Connect to the database
cur = conn.cursor()  # Create a cursor object

cur.execute("SELECT FirstName, LastName, Title, City FROM Employee;")  # Execute the query

rows = cur.fetchmany(3)  # Fetch the first three rows

for row in rows:
    print(row)  # Print the rows

conn.close()  # Close the connection to the database
