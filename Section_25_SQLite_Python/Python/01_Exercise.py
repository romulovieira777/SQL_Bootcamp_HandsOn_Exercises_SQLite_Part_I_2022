"""
Exercise No. 01

Using the sqlite3 package connect to the northwind database.

Then create a Curso object and execute the following SQL query to the database:

    SELECT * FROM category;

Using the appropriate method, print the first row from the above query to the console. Finally, close the database
connection.

Expected result:
    (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales')
"""
import sqlite3

conn = sqlite3.connect('northwind.db')  # Connect to the database
cursor = conn.cursor()  # Create a cursor object

cursor.execute("SELECT * FROM category;")  # Execute the query

# row = cursor.fetchone()  # Fetch the first row

# print(row)  # Print the first row
print(cursor.fetchone())  # Print the first row

conn.close()  # Close the connection to the database
