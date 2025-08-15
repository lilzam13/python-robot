# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 31 July, 2025
"""
import unittest
import allure
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium

@allure.feature("Test Udemy 10")
@allure.story("T010: Visitamos Google y colocamos una fecha")
@allure.testcase("TC010", "https://clickup.com")
@allure.severity(allure.severity_level.NORMAL)
@allure.description("Se require visitar el sitio de google: </br>" \
"Deseamos la fecha en el input principal</br></br>")


class GoogleFecha(Selenium, unittest.TestCase):
    def setUp(self):
        with allure.step("PASO 1: Ingresar a Google"):
            Selenium.abrir_navegador(self, URL="https://www.google.com/")
            Selenium.get_json_file(self, "google")

    def test_fechas(self):
        with allure.step("PASO 2: Capturar una fecha de busqueda"):
            date = Selenium.textDataEnviromentReplace(self, "last month")
            Selenium.get_elements(self, "key_box").send_keys(date)
            Selenium.captura(self, "google test")
            Selenium.esperar(self, 2)
    def tearDown(self):
        with allure.step("PASO 3: Cerrar el navegador"):
            Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()