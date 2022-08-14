"""
Exercise No. 02

Using the sqlite3 package connect to the northwind database.

Then create a Curso object and execute the following SQL query to the database:

    SELECT * FROM category;

Using the Cursor.fetchall() method, assign the first two rows of the above query to the variables:
    - first_row
    - second_row

Display the contents of the variables first_row and second_row to the console as shown below and close the database
connection.

Expected result:
    (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales')
    (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings')
"""
import sqlite3

conn = sqlite3.connect('northwind.db')  # Connect to the database
cursor = conn.cursor()  # Create a cursor object

cursor.execute("SELECT * FROM category;")  # Execute the query

first_row = cursor.fetchone()  # Fetch the first row
second_row = cursor.fetchone()  # Fetch the second row

print(first_row)  # Print the first row
print(second_row)  # Print the second row

conn.close()  # Close the connection to the database
