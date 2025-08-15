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
hora_global = time.strftime("%H%M%S")
class Test_Amazon_screen(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.maximize_window()
        self.driver.implicitly_wait(10)
        self.driver.get("https://www.amazon.com.mx/")

    def test_screen(self):
        time.sleep(3)
        self.localizador_scroll = self.driver.find_element(By.XPATH, "//*[@id='navFooter']/div[1]/div/div[1]/ul/li[5]/a")
        self.driver.execute_script("arguments[0].scrollIntoView()", self.localizador_scroll)
        
        time.sleep(3)
        self.localizador_scroll = self.driver.find_element(By.XPATH, "//*[@id='navFooter']/div[1]/div/div[1]/ul/li[5]/a")
        self.driver.execute_script("arguments[0].click();", self.localizador_scroll)
        time.sleep(5)
        title ="Amazon Science"
        assert "Amazon Science homepage" == self.driver.title, "No son iguales"
        self.driver.get_screenshot_as_file(f"./src/data/capturas/{title}-{hora_global}.png")

        
    def tearDown(self):
        self.driver.close()
    
if __name__ == "__main__":
    unittest.main()