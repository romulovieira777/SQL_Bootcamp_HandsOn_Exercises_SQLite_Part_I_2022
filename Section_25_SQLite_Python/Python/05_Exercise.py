"""
Exercise No. 06

The following code is given:

    import sqlite3

    conn = sqlite3.connect('northwind.db')
    cur = conn.cursor()

    cursor.execute("SELECT * FROM category;")

    rows = cursor.fetchall()

    for row in rows:
        print(row)

    conn.close()

Modify the given query to display only the category name (second column) to the console (use a for loop).

Expected result:
    Beverages
    Condiments
    Confections
    Dairy Products
    Grains/Cereals
    Meat/Poultry
    Produce
    Seafood
"""
# Method 01
import sqlite3

conn = sqlite3.connect('northwind.db')  # Connect to the database
cur = conn.cursor()  # Create a cursor object

cur.execute("SELECT * FROM category;")  # Execute the query

rows = cur.fetchall()  # Fetch all the rows

for row in rows:
    print(row[1])  # Print the rows

conn.close()  # Close the connection to the database

"""
# Method 02
import sqlite3

conn = sqlite3.connect('northwind.db')  # Connect to the database
cur = conn.cursor()  # Create a cursor object

cur.execute("SELECT * FROM category;")  # Execute the query

rows = cur.fetchall()  # Fetch all the rows

for category_id, category_name, description in rows:
    print(category_name)  # Print the rows

conn.close()  # Close the connection to the database
"""
