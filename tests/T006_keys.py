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

class test_006(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.google.com/")
        Selenium.get_json_file(self, "google")
    
    def test_keys(self):
        Selenium.page_has_loaded(self)

        Selenium.get_elements(self,"key_box").click()
        Selenium.send_key_text(self, "key_box","curso de testing")
        Selenium.send_especific_key(self, "key_box", "Enter")
        
        Selenium.esperar(self)

    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()