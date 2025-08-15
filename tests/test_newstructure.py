# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 31 July, 2025
"""
import unittest
import sys
import os
import time
import allure
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium

@allure.feature("Test Udemy 3")
@allure.story("T003: Visitamos Facebook y realizamos el registro")
@allure.testcase("TC003", "https://clickup.com")
@allure.severity(allure.severity_level.NORMAL)
@allure.description("Se require visitar el sitio de Facebook: </br>" \
"Llenamos los campos requeridos</br></br>")


class StructurJson(Selenium, unittest.TestCase):
    def setUp(self):
        with allure.step("PASO 1: Ingresar a Facebook"):
            Selenium.abrir_navegador(self)
            Selenium.get_json_file(self, "facebook_registro")

    def test_news_tructure_json(self):
        with allure.step("PASO 2: Ingresar informacion a los campos requeridos"):
            #Cargar el json con los valores de los id de la applicacion
            Selenium.esperar_elemento(self, "Logo")
            assert Selenium.get_elements(self, "Logo").is_displayed()
            Selenium.esperar_elemento(self, "Title")
            title = Selenium.get_text(self, "Title")
            assert title == "Create a new account","No se encontro el titulo" 
            Selenium.esperar_elemento(self, "Slogan")
            slogan = Selenium.get_text(self, "Slogan")
            assert slogan == "It's quick and easy.", "No se encontro el slogan"

            Selenium.send_key_text(self, "Firstname", "Liliana")
            Selenium.send_key_text(self, "Lastname", "Zamora")

            #Acceder a las Keys
            Selenium.send_key_text(self, "Month", "Jan")
            Selenium.select_by_value(self, "Day", "13")
            Selenium.get_select_elements(self, "Year").select_by_value("1994")

            Selenium.get_elements(self, "Sex").click()

            Selenium.send_key_text(self, "Email", "lilianazam13@gmail.com")
            Selenium.send_key_text(self, "Password", "Testingtest")
            Selenium.captura_pantalla(self)
            Selenium.esperar(self, 3)

    def tearDown(self):
        with allure.step("PASO 3: Cerrar el navegador"):
            Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()