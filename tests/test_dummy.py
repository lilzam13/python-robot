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

@allure.feature("Test Udemy 1")
@allure.story("T001: Prueba basica de la automatizacion")
@allure.testcase("TC001", "https://clickup.com")
@allure.severity(allure.severity_level.NORMAL)
@allure.description("Se require visitar el sitio de google: </br>" \
"Deseamos la fecha en el input principal</br></br>")


class DummyTest(Selenium, unittest.TestCase):
    def setUp(self):
        with allure.step("PASO 1: Ingresar a Google"):
            Selenium.abrir_navegador(self, URL="https://www.google.com/")
            Selenium.get_json_file(self, "google")

    def test_dummy(self):
        with allure.step("PASO 2: Capturar una fecha de busqueda"):
            assert True

    def tearDown(self):
        with allure.step("PASO 3: Cerrar el navegador"):
            Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()