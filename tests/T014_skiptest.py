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
import pytest

class test_014(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.paypal.com/us/webapps/mpp/account-selection")
        Selenium.get_json_file(self, "paypal")

    def test_skip_test(self):
        
        #Selenium.js_click(self, "btn_inicio_xpath")
        Selenium.esperar_elemento(self, "vld_captcha_xpath")
        captcha = Selenium.validar_elemento(self, "vld_captcha_xpath")
        print(captcha)
        if captcha == True:
            pytest.skip("No se ejecuto la prueba: Captcha esta visible")
        # else:
        #     Selenium.esperar_elemento(self, "txt_email_xpath")
        #     Selenium.send_key_text(self, "txt_email_xpath", "lilianazam13@gmail.com")
        #     Selenium.js_click(self, "btn_email_xpath")
        else: 
            Selenium.esperar(self, 10)

    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()