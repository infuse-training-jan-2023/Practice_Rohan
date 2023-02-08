import sqlite3

conn = sqlite3.connect('todo.db')

with open('DB/schema.sql') as f:
    conn.executescript(f.read())

cursor = conn.cursor()

cursor.execute("INSERT INTO items (item, status, reminder) VALUES (?, ?, ?)",
    ('go to goa','started',True)
) 

cursor.execute("INSERT INTO items (item, status, reminder) VALUES (?, ?, ?)",
    ('flask','started',True)
) 

conn.commit()
conn.close()