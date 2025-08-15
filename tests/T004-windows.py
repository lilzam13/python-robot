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
import time

class test_003(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.mercadolibre.com.mx/#from=homecom")
    
    def test_switch_windows(self):
        Selenium.new_window(self, "https://www.mercadolibre.com.mx/ofertas#nav-header" )
        Selenium.switch_to_windows_name(self, "Ofertas")
        time.sleep(10)
        Selenium.switch_to_windows_name(self, "Principal")
        time.sleep(10)

    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()