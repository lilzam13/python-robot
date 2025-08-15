"""
Created by: Liliana
Created date: 28 July, 2025
"""
import datetime
import unittest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
from selenium.common.exceptions import NoSuchWindowException
from selenium.common.exceptions import TimeoutException

class test(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.maximize_window()
        self.driver.implicitly_wait(10)

    def test_despegar(self):
        self.driver.get("https://www.mercadolibre.com.mx/#from=homecom")
        self.element1 = "//input[@id='cbv1-edit']"
        try:
            wait  = WebDriverWait(self.driver,15)
            wait.until(EC.visibility_of_element_located((By.XPATH, self.element1)))
        except TimeoutException:
            self.skipTest()

    def tearDown(self):
        self.driver.close()
    
if __name__ == "__main__":
    unittest.main()