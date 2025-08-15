# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 30 July, 2025
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
from src.pages.facebook_registro import Registro as FR
hora_global = time.strftime("%H%M%S")

class Test_Amazon_screen(Selenium, unittest.TestCase):
    def setUp(self):
        Selenium.abrir_navegador(self)
        self.title = "facebook-login"
    def test_screen(self):
        self.driver.find_element(By.XPATH, FR.img_logo_xpath)
        self.driver.find_element(By.XPATH, FR.lbl_title_xpath)
        self.driver.find_element(By.NAME, FR.txt_name_name).send_keys("Liliana")
        self.driver.find_element(By.NAME, FR.txt_lastname_name).send_keys("Zamora")
        self.select = Select(self.driver.find_element(By.XPATH, FR.dpd_month_xpath)).select_by_visible_text("Jan")
        self.select = Select(self.driver.find_element(By.XPATH, FR.dpd_day_xpath)).select_by_visible_text("13")
        self.select = Select(self.driver.find_element(By.XPATH, FR.dpd_year_xpath)).select_by_visible_text("1994")
        self.driver.find_element(By.XPATH, FR.opt_sex_famale_xpath).click()
        self.driver.find_element(By.NAME, FR.txt_email_name).send_keys("Lilianazam13@gmail.com")
        self.driver.find_element(By.XPATH, FR.txt_password_xpath)
        self.driver.get_screenshot_as_file(f"./src/data/capturas/{self.title}-{hora_global}.png")
        self.driver.find_element(By.PARTIAL_LINK_TEXT, "Policy").click()
        time.sleep(10)
    def tearDown(self):
        Selenium.tearDown(self)
    
if __name__ == "__main__":
    unittest.main()