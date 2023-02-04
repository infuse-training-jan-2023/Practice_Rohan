import sqlite3
import csv

class ItemRepository:
    
    def __init__(self) -> None:
        self.DBPATH = './todo.db'
        self.connection = None

    def connect_db(self):
        if self.connection is None:
            self.connection =  sqlite3.connect(self.DBPATH,check_same_thread=False)
    
    def get_all_items(self):
        try:
            self.connect_db()
            c = self.connection.cursor()
            rows = c.execute('select * from items')
            return rows
        except sqlite3.Error as e:
            raise Exception ('Error:',e)
    
    def add_item(self,item, reminder):
        try:
            self.connect_db()
            c = self.connection.cursor()
            insert_cursor = c.execute('insert into items(item, status, reminder) values(?,?,?)', (item, 'Not Satrted', reminder))
            self.connection.commit()
            return {
                'id': insert_cursor.lastrowid,
                'item': item,
                'status': 'Not Started',
                'reminder': reminder
            }
        except Exception as e:
            raise Exception('Error: ', e)
 
    def get_item(self,item_id):
        try:
            self.connect_db()
            c = self.connection.cursor()
            rows = c.execute('select * from items where id=?', (item_id,))
            return rows
        except sqlite3.Error as e:
            raise Exception ('Error:',e)
    
    def delete_item(self,item_id):
        try:
            self.connect_db()
            c = self.connection.cursor()
            row = self.get_item(item_id)
            res = []
            for x in row:
                res.append({
                    'id': x[0]
                })
            if res == []:
                raise TypeError('Invalid ID')
            c.execute('DELETE from items WHERE id=?', (item_id,))     
            self.connection.commit()
            return {'status':'Item deleted successfully'}
        except Exception as e:
            self.connection.rollback()
            raise Exception ('Error: Error deleting row')
    
    def update_item(self,item_id,update_data):
        try:
            self.connect_db()
            c = self.connection.cursor()
            for key, value in update_data.items():
                c.execute(f'UPDATE items SET {key} = ?  WHERE id=?', (value,item_id))
            self.connection.commit()
            return {
                    "status": "Updated successfully"
            }
        except Exception as e:
            raise Exception('Error: ', e)

    def add_new_user(self,name,age,gender,address):
        try:
            self.connect_db()
            c = self.connection.cursor()
            insert_cursor = c.execute('insert into user(name,age,gender,address) values(?,?,?,?)', (name,age,gender,address))
            self.connection.commit()
            return {
                'user_id': insert_cursor.lastrowid,
                'name': name,
                'age': age,
                'gender': gender,
                'address': address
            }
        except Exception as e:
            raise Exception('Error: ', e)
        
    def add_item_to_csv(self):
        try:
            self.connect_db()
            c = self.connection.cursor()
            columns = ["id","item","status","reminder"]
            rows = c.execute('select * from items')
            with open('../items.csv', 'w') as csvfile:
                csvwriter = csv.writer(csvfile)
                csvwriter.writerow(columns)
                csvwriter.writerows(rows)
            return {"status":"Saved to CSV file"}
        except Exception as e:
            raise Exception('Error: ', e)
       
        