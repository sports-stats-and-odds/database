import mysql.connector
from mysql.connector import errorcode

#database must first be created by hand
class MySQLConnector():

    def __init__(self) -> None:
        try:
            self.cnx = mysql.connector.connect(
                user='root',
                password='root',
                host='localhost',
                database='sports_stats_and_odds_db'
            )
        except mysql.connector.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                print("Something is wrong with your user name or password")
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                print("Database does not exist")
            else:
                print(err)

    def __del__(self) -> None:
        if hasattr(self, "cnx"):
            self.cnx.close()
