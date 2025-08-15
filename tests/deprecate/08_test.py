"""
Created by: Liliana
Created date: 29 July, 2025
"""

import time
import unittest
from selenium import webdriver
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

class Test_Categoria(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.maximize_window()
        self.driver.implicitly_wait(10)
        self.driver.get("https://www.mercadolibre.com.mx/#from=homecom")

    def test_categoria_tecnologia(self):
        self.localizador_cgria = self.driver.find_element(By.XPATH, "/html/body/header/div/div[5]/div/ul/li[1]/a")
        action = ActionChains(self.driver)
        action.move_to_element(self.localizador_cgria)
        action.perform()
        time.sleep(3)
        
        self.localizador_tech = self.driver.find_element(By.XPATH, "/html/body/header/div/div[5]/div/ul/li[1]/div/ul/li[3]/a")
        action.move_to_element(self.localizador_tech)
        action.perform()
        time.sleep(3)

        self.localizador_laptops = self.driver.find_element(By.XPATH, "/html/body/header/div/div[5]/div/ul/li[1]/div/div/div/div/div[2]/ul/li[1]/a")
        action.move_to_element(self.localizador_laptops)
        action.perform()
        self.localizador_laptops.click()
        time.sleep(3)


    def tearDown(self):
        self.driver.close()
    
if __name__ == "__main__":
    unittest.main()