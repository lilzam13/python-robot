# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 31 July, 2025
"""
import unittest
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium

class test_005(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert")
    
    def test_alerts(self):
        Selenium.page_has_loaded(self)
        Selenium.get_elements(self, "Alert").click()
        Selenium.esperar(3)
        Selenium.alert_windows(self, "accept")
        Selenium.esperar(3)
    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()