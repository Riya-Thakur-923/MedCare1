import mysql.connector
pysql = mysql.connector.connect(host='localhost', username='root', password='Riyasql@9234', database='medguide')
mycursor= pysql.cursor()
mycursor.execute("select * from Medicine1")

result = mycursor.fetchall()

for i in result:
    print(i)
