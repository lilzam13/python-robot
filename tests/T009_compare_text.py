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

class test_009(Selenium, unittest.TestCase):
    def setUp(self):
        #Selenium.abrir_navegador(self, URL="https://www.elpalaciodehierro.com/login")
        #Selenium.get_json_file(self, "inmotion")

        Selenium.abrir_navegador(self, URL="https://www.google.com/")
        Selenium.get_json_file(self, "google")
    def test_pass_element(self):
        #Selenium.save_variable_scenario(self, "lkn_passwordresset_xpath", "lkn_passwordresset_xpath")
        #Selenium.save_variable_scenario(self, "chbx_activesession_xpath", "chbx_activesession_xpath")

       # Selenium.new_window(self, "https://www.google.com/")
        
        #Selenium.switch_to_windows_name(self, "Google")
        Selenium.esperar_elemento(self, "key_box")
        Selenium.send_key_text(self, "key_box", "Lilianaa")
        Selenium.js_click(self, "btn_search")
        Selenium.esperar(self, 10)

    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()