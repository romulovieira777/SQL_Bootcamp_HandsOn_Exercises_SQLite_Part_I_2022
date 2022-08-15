"""
Exercise No. 04

The following code is given:

    import sqlite3

    conn = sqlite3.connect('northwind.db')
    cursor = conn.cursor()

    cursor.execute("SELECT * FROM category;")

    rows = cursor.fetchall()

Using a for loop, display each row returned by the above query to the console as shown below.

Expected result:
    (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales')
    (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings')
    (3, 'Confections', 'Desserts, candies, and sweet breads')
    (4, 'Dairy Products', 'Cheeses')
    (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal')
    (6, 'Meat/Poultry', 'Prepared meats')
    (7, 'Produce', 'Dried fruit and bean curd')
    (8, 'Seafood', 'Seaweed and fish')
"""
import sqlite3

conn = sqlite3.connect('northwind.db')  # Connect to the database
cursor = conn.cursor()  # Create a cursor object

cursor.execute("SELECT * FROM category;")  # Execute the query

rows = cursor.fetchall()  # Fetch all the rows

for row in rows:
    print(row)  # Print the rows

conn.close()  # Close the connection to the database
