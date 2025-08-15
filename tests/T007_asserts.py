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

class test_007(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.google.com/intl/es-419/account/about/")
        Selenium.get_json_file(self, "google_account")
    
    def test_asserts(self):
        Selenium.js_click(self, "crear_cuenta")
        Selenium.esperar_elemento(self, "btn_stepone")
        Selenium.js_click(self, "btn_stepone")
        Selenium.esperar_elemento(self, "vld_first_required")
        Selenium.assert_text(self, "vld_first_required", "Enter first name")
        time.sleep(5)
    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()