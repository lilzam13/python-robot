"""
Created by: Liliana
Created date: 28 July, 2025
"""

import time
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
        self.driver.get("https://www.mercadolibre.com.mx/#from=homecom")
    def test_mercado_iteracion(self):
        self.payments = self.driver.find_elements(By.XPATH, "//*[contains(@class,'loyalty-buylevel6__body-benefit-text')]")
        self.count = 0
        for self.pay in self.payments:
            self.resultado_esperado = ["Envíos gratis en millones de productos desde $ 149","3 meses extra sin intereses","Cashback en tus compras y pagos"]
            assert self.resultado_esperado[self.count] == self.pay.text, "No coinciden"
            self.count = self.count + 1
            

    def tearDown(self):
        self.driver.close()
    
if __name__ == "__main__":
    unittest.main()