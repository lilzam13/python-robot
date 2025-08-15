# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 31 July, 2025
"""
import unittest
import time
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium
from src.pages.facebook_registro import Registro
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select

class test_001(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self)
    
    def test_fb_login(self):
        assert self.xpath_element(Registro.img_logo_xpath).is_displayed()

        title = self.xpath_element(Registro.lbl_title_xpath).text.strip()
        assert title == "Create a new account","No se encontro el titulo"

        slongan = self.xpath_element(Registro.lbl_slogan_xpath).text.strip()
        assert slongan == "It's quick and easy.","No se encontro el slogan"

        self.name_element(Registro.txt_name_name).send_keys("Liliana")
        self.name_element(Registro.txt_lastname_name).send_keys("Zamora")

        
        dpd_month = self._xpath_element(Registro.dpd_month_xpath)
        Select(dpd_month).select_by_value("1")
        dpd_day = self._xpath_element(Registro.dpd_day_xpath)
        Select(dpd_day).select_by_value("13")
        dpd_year = self._xpath_element(Registro.dpd_year_xpath)
        Select(dpd_year).select_by_value("1994")
        self._xpath_element(Registro.opt_sex_famale_xpath).click()

        self._name_element(Registro.txt_email_name).send_keys("lilianazam13@gmail.com")
        self._xpath_element(Registro.txt_password_xpath).send_keys("Testingtest")

        time.sleep(7)
    def tearDown(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()