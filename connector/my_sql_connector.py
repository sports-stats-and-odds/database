import mysql.connector
from mysql.connector import errorcode
import os
import logger

#database must first be created by hand
class MySQLConnector():

    def __init__(self) -> None:
        try:
            self._cnx = mysql.connector.connect(#TODO try to creater if not exists ?
                user='root',
                password='root',
                host='localhost',
                database='sports_stats_and_odds_db'
            )
            self._cursor = self._cnx.cursor()
            self._logger = logger.get_logger(os.path.dirname(os.path.abspath(__file__)) + "/logs/")

        except mysql.connector.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                self._logger.error("Something is wrong with your user name or password")
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                self._logger.error("Database does not exist")
            else:
                self._logger.error(err)

    def __del__(self) -> None:
        if hasattr(self, "cnx"):
            self._cnx.close()

    def _get_scripts_of_directory(self, directory: str) -> list[str]:
        fileNames = list(filter(lambda file_name: file_name.endswith('.sql'), os.listdir(directory))) #filter only file ending with sql in the specified directory
        scripts = []
        for fileName in fileNames:
            try:
                file = open(directory + '/' + fileName, 'r')
                scripts.append(file.read())
                file.close()
            except OSError as error:
                self._logger.error(f'An error occured when reading the file {directory + "/" + fileName} : {error.strerror}')
        return scripts


    def create_tables_if_not_exists(self) -> None:
        self._logger.info("Creating tables if they don't exists...")
        scripts = self._get_scripts_of_directory(os.path.dirname(os.path.abspath(__file__)) + '/data/sql_scripts/create_table')
        for script in scripts:
            try:
                self._cursor.execute(script)
            except mysql.connector.Error as err:
                self._logger.error(err.msg)

    def insert(table: int, data: dict[str, str]) -> None:
        pass
