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

    def test_mercado(self):
        self.driver.get("https://listado.mercadolibre.com.mx/carros-sedan")
        time.sleep(5)
        self.listado = self.driver.find_elements(By.XPATH, "//*[contains(@class,'poly-component__title')]")
        self.listado2 = self.driver.find_elements(By.XPATH, "//*[contains(@class,'poly-component__price')]")
        print("Listado de elementos encontrados"+ str(self.listado))
        self.count = 0
        for self.lista in self.listado:
             print(self.lista.text)
            
        for self.lista2 in self.listado2:
            print(self.lista2.text)
            self.count = self.count + 1
            print(self.count)

    def tearDown(self):
        self.driver.close()
    
if __name__ == "__main__":
    unittest.main()