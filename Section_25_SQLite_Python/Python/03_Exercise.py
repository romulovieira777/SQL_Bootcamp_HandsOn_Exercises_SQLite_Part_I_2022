"""
Exercise No. 03

Using the sqlite3 package connect to the northwind database.

Then create a Curso object and execute the following SQL query to the database:

    SELECT * FROM category;

Using the Cursor.fetchall() method, assign all rows returned by the above query to a variable:
    - rows

Display the contents of the variable rows to the console and close the database connection.

Expected result:
    [
        (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
        (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
        (3, 'Confections', 'Desserts, candies, and sweet breads'),
        (4, 'Dairy Products', 'Cheeses'),
        (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
        (6, 'Meat/Poultry', 'Prepared meats'),
        (7, 'Produce', 'Dried fruit and bean curd'),
        (8, 'Seafood', 'Seaweed and fish')
    ]
"""
import sqlite3

conn = sqlite3.connect('northwind.db')  # Connect to the database
cursor = conn.cursor()  # Create a cursor object

cursor.execute("SELECT * FROM category;")  # Execute the query

rows = cursor.fetchall()  # Fetch all the rows

print(rows)  # Print the rows

conn.close()  # Close the connection to the database
