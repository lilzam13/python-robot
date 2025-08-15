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

class test_015(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.spotify.com/mx/signup?forward_url=https%3A%2F%2Fopen.spotify.com%2F")
        Selenium.get_json_file(self, "spotify")
    
    def test_asserts_text_alement(self):
        Selenium.send_key_text(self, "txt_email_xpath", "liliana20096516gmail.com")
        Selenium.send_especific_key(self,"txt_email_xpath", "tab")
        Selenium.esperar_elemento(self, "vld_email_exist_xpath")

        valor_obj = Selenium.validar_elemento(self, "vld_email_exist_xpath")
        valor_text = Selenium.get_text(self, "vld_email_exist_xpath")

        assert valor_obj == True, "No se visualizo el mensaje je"
        assert valor_text == "This email is invalid. Make sure it’s written like example@email.com", f"No se encontro el mensaje, el mensaje esperdado es: {valor_text}"
        Selenium.esperar(self, 10)

    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()