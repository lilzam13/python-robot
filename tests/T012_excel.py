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

class test_012(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self, URL="https://www.spotify.com/mx/signup?forward_url=https%3A%2F%2Fopen.spotify.com%2F")
        Selenium.get_json_file(self, "spotify")

    def test_excel(self):
        Selenium.save_variable_scenary(self, "lmk_already", "lmk_already_var")
        Selenium.new_window(self, "https://www.spotify.com/mx/signup?forward_url=https%3A%2F%2Fopen.spotify.com%2F")
        Selenium.switch_to_windows_name(self, "Spotify Signup")
        Selenium.esperar_elemento(self, "lmk_already")
        Selenium.compare_with_variable_scenary(self, "lmk_already", "lmk_already_var")

        Selenium.esperar(self, 5)
        nombre = Selenium.leer_celda(self, "A1")
        apellido = Selenium.leer_celda(self, "B1")
        nct = Selenium.leer_celda(self, "C1")
        Selenium.esperar(self, 5)
        Selenium.create_variable_scenary(self, "NOMBRE", nombre)
        Selenium.create_variable_scenary(self, "Apellido", Selenium.leer_celda(self, "B1"))


    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()