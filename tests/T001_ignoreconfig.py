# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 31 July, 2025
"""
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium
import time
import unittest
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.action_chains import ActionChains
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
from selenium.common.exceptions import NoSuchWindowException
from selenium.common.exceptions import TimeoutException
from src.pages.facebook_registro import Registro as FR
hora_global = time.strftime("%H%M%S")

class Test_Ignore_config(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self,"https://www.google.com/", "CHROME" )
        self.title = "google"
    def test_screen(self):
        self.driver.find_element(By.XPATH, "/html/body/div[2]/div[7]/div/div[2]/div[1]/a[1]").click()
        self.driver.get_screenshot_as_file(f"./src/data/capturas/{self.title}-{hora_global}.png")
        time.sleep(10)
    def tearDown(self):
        Selenium.tearDown(self)
    
if __name__ == "__main__":
    unittest.main()