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
#Checar si existe el elemento, si es asi, devuelve True

class test_008(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.elpalaciodehierro.com/login")
        Selenium.get_json_file(self, "inmotion")
    
    def test_check_element(self):
        Selenium.send_key_text(self, "txt_email_xpath", "lilianagmail.com")
        Selenium.send_especific_key(self, "txt_email_xpath", "Tab")
        Selenium.esperar_elemento(self, "vld_email_invalid_xpath")
        vld_email_require = Selenium.check_element(self, "vld_email_invalid_xpath")

        if vld_email_require:
            #unittest.TestCase.skipTest(self, "El email no es valido")
            email_element =  Selenium.get_elements(self, "txt_email_xpath" )
            email_element.clear()
            Selenium.send_key_text(self, "txt_email_xpath", "liliana@gmail.com")
            Selenium.esperar(self, 8)

    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()