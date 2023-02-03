import sqlite3
import csv
class ItemRepository:
    DBPATH = './todo.db'
    NOT_STARTED = "Not started"

    @staticmethod
    def connect_db():
        return sqlite3.connect(ItemRepository.DBPATH)
    
    @staticmethod
    def get_all_items():
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            rows = c.execute('select * from items')
            return rows
        except sqlite3.Error as e:
            raise Exception ('Error:',e)
    
    @staticmethod
    def add_item(item, reminder):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            insert_cursor = c.execute('insert into items(item, status, reminder) values(?,?,?)', (item, ItemRepository.NOT_STARTED, reminder))
            conn.commit()
            return {
                'id': insert_cursor.lastrowid,
                'item': item,
                'status': ItemRepository.NOT_STARTED,
                'reminder': reminder
            }
        except Exception as e:
            raise Exception('Error: ', e)
        finally:
            conn.close()
    
    @staticmethod
    def get_item(item_id):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            rows = c.execute('select * from items where id=?', (item_id,))
            return rows
        except sqlite3.Error as e:
            raise Exception ('Error:',e)
    
    @staticmethod
    def delete_item(item_id):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            row = ItemRepository.get_item(item_id)
            res = []
            for x in row:
                res.append({
                    'id': x[0]
                })
            if res == []:
                raise TypeError('Invalid ID')
            c.execute('DELETE from items WHERE id=?', (item_id,))     
            conn.commit()
            return {'status':'Item deleted successfully'}
        except Exception as e:
            conn.rollback()
            raise Exception ('Error: Error deleting row')
    
    @staticmethod
    def update_item(item_id,update_data):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            for key, value in update_data.items():
                c.execute(f'UPDATE items SET {key} = ?  WHERE id=?', (value,item_id))
            conn.commit()
            return {
                    "status": "Updated successfully"
            }
            conn.close()
        except Exception as e:
            raise Exception('Error: ', e)
    
    @staticmethod
    def add_new_user(name,age,gender,address):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            insert_cursor = c.execute('insert into user(name,age,gender,address) values(?,?,?,?)', (name,age,gender,address))
            conn.commit()
            return {
                'user_id': insert_cursor.lastrowid,
                'name': name,
                'age': age,
                'gender': gender,
                'address': address
            }
        except Exception as e:
            raise Exception('Error: ', e)
        finally:
            conn.close()
        
    @staticmethod
    def add_item_to_csv():
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            columns = ["id","item","status","reminder"]
            rows = c.execute('select * from items')
            with open('../items.csv', 'w') as csvfile:
                csvwriter = csv.writer(csvfile)
                csvwriter.writerow(columns)
                csvwriter.writerows(rows)
            return {"status":"Saved to CSV file"}
        except Exception as e:
            raise Exception('Error: ', e)
        finally:
            conn.close()
       
        