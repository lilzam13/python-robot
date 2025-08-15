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
        self.driver.get("https://www.amazon.com.mx/")

    def test_burger(self):
        self.driver.find_element(By.NAME, "field-keywords").send_keys("Mancuernas de 8 kilosss")
        self.driver.find_element(By.NAME, "field-keywords").send_keys(Keys.ENTER)
        self.driver.find_element(By.NAME, "field-keywords").send_keys(Keys.BACK_SPACE, Keys.BACK_SPACE)
        self.driver.find_element(By.NAME, "field-keywords").send_keys(Keys.ARROW_DOWN)
        self.driver.find_element(By.NAME, "field-keywords").send_keys(Keys.ARROW_DOWN)
        self.driver.find_element(By.NAME, "field-keywords").send_keys(Keys.ENTER)
        time.sleep(8)
        
    def tearDown(self):
        self.driver.close()
    
if __name__ == "__main__":
    unittest.main()