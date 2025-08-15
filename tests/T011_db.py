# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 31 July, 2025
"""
import unittest
import sys
import os
import time
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium
from selenium.webdriver.common.keys import Keys
#Checar si existe el elemento, si es asi, devuelve True

class test_011(Selenium, unittest.TestCase):
    def setUp(self):
        self.CURSOR = Selenium.pyodbc_query(self, "SELECT * FROM world.city WHERE Name = 'México';")
        Selenium.abrir_navegador(self, URL="https://www.google.com/")
        Selenium.get_json_file(self, "google")

    def test_db(self):
        print(self.CURSOR)
        date = Selenium.textDataEnviromentReplace(self, "last month")
        Selenium.get_elements(self, "key_box").send_keys(date)
        Selenium.esperar(self, 5)

    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()