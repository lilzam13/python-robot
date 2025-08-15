"""
Created on 23-07-2025
Autor: Liliana Zamora Cardenas
"""
import unittest
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


class Test_001(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()#hacer la variable global
        self.driver.implicitly_wait(5)#Esperar un elemento
        self.driver.maximize_window()
        self.nombre = "Angel"
        self.second_name = "Alonso"
        self.apellido = "Rodriguez"
        self.address = "Paseo del Aire"
        self.unit = "242"
        self.city = "Zapopan"
        self.zip_code = "45138"
        self.dob = "111223333"

    def test_name(self):
        self.driver.get("https://www.firstbankcard.com/lynx/#/pre-qual/intake?agent=H48&sub=000")
        self.driver.find_element(By.XPATH, "//INPUT[@id='firstName']").clear()
        self.driver.find_element(By.XPATH, "//INPUT[@id='firstName']").send_keys(self.nombre)
        self.driver.find_element(By.ID, "middleInitial").clear()
        self.driver.find_element(By.ID, "middleInitial").send_keys(self.second_name)
        self.driver.find_element(By.ID, "lastName").clear()
        self.driver.find_element(By.ID, "lastName").send_keys(self.apellido)
        self.driver.find_element(By.ID, "residential-address").clear()
        self.driver.find_element(By.ID, "residential-address").send_keys(self.address)
        self.driver.find_element(By.ID, "unit").clear()
        self.driver.find_element(By.ID, "unit").send_keys(self.unit)
        self.driver.find_element(By.ID, "city").clear()
        self.driver.find_element(By.ID, "city").send_keys(self.city)
        self.select = Select(self.driver.find_element(By.ID, "state")).select_by_visible_text("TX")
        self.driver.find_element(By.ID, "zipCode").clear()
        self.driver.find_element(By.ID, "zipCode").send_keys(self.zip_code)
        self.driver.find_element(By.ID, "dob").clear()
        self.driver.find_element(By.ID, "dobe").send_keys(self.dob)


        time.sleep(5)
    def tearDown(self):
        self.driver.quit()
    
if __name__ == "__main__":
    unittest.main()
