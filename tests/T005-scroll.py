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

class test_004(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.amazon.com.mx/")
        Selenium.get_json_file(self, "scroll_amazon")
        
    def test_scroll_click(self):
        Selenium.scroll_to(self, "Sobre_Science")
        Selenium.esperar(2)
        Selenium.js_click(self, "Sobre_Science")
        Selenium.page_has_loaded(self)
        Selenium.esperar(2)

    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()