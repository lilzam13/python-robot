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
import unittest
#Checar si existe el elemento, si es asi, devuelve True

class test_009(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.spotify.com/mx/signup?forward_url=https%3A%2F%2Fopen.spotify.com%2F")
        Selenium.get_json_file(self, "spotify")
    def test_pass_element(self):
        Selenium.save_variable_scenary(self, "lmk_already", "lmk_already_var")
        Selenium.new_window(self, "https://www.spotify.com/mx/signup?forward_url=https%3A%2F%2Fopen.spotify.com%2F")
        Selenium.switch_to_windows_name(self, "Spotify Signup")
        Selenium.compare_with_variable_scenary(self, "lmk_already", "lmk_already_var")
    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()