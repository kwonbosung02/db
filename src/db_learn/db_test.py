import mysql.connector
from mysql.connector import errorcode

HOST = 'localhost'
USER = 'root'
PASSWORD = '020526'
DB = 'opentutorials'
CHARSET = 'utf8'

try:
    conn = mysql.connector.connect(host=HOST,
                                   user=USER,
                                   password=PASSWORD,
                                   db=DB,
                                   charset=CHARSET)
    print('--------connected--------')
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("ACCESS_DENIED")
    elif err.no == errorcode.ER_BAD_DB_ERROR:
        print("DB_NOT_EXIST")
    else:
        print(err)


conn.close()
