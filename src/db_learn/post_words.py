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


cursor = conn.cursor()
#cursor.execute("SHOW DATABASES")

cursor.execute("USE eng_word")
KEY_W = 'b'
print(chr(ord(KEY_W) + 8))
'''
for i in range(16):
    cursor.execute("CREATE TABLE "+chr(ord(KEY_W) + i+1)+"_word(id INT AUTO_INCREMENT PRIMARY KEY, eng VARCHAR(100), kor VARCHAR(100))")
'''

conn.close()
