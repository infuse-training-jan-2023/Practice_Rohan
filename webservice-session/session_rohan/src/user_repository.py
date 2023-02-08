import sqlite3

class UserRepository:

    DBPATH = './todo.db'
    connection = None

    @staticmethod
    def connect_db():
        return UserRepository.connection if UserRepository.connection is not None else sqlite3.connect(UserRepository.DBPATH)

    @staticmethod
    def add_new_user(name,age,gender,address):
        try:
            conn = UserRepository.connect_db()
            c = conn.cursor()
            insert_cursor = c.execute('insert into user(name,age,gender,address) values(?,?,?,?)', (name,age,gender,address))
            conn.commit()
            return {
                'id': insert_cursor.lastrowid,
                'name': name,
                'age': age,
                'gender': gender,
                'address': address
            }
        except Exception as e:
            raise Exception('Error: ', e)