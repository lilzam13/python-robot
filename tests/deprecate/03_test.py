"""
Autor: Liliana Zamora
Creater date: 28 July, 2025
"""
import time
import unittest
from selenium import webdriver
from selenium.webdriver.common.by import By
from  selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

class test(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.maximize_window()
        self.driver.implicitly_wait(10)
        self.name = "Marina"
        self.lastname = "Zamora"
        self.day = "13"
        self.year = "1995"
        
    def test_linkHelp(self):
        self.driver.get("https://www.google.com/intl/es/account/about/")
        self.driver.find_element(By.XPATH, "/html/body/header/div[1]/div[5]/ul/li[1]/a").click()
        self.driver.find_element(By.NAME, "firstName").clear()
        self.driver.find_element(By.NAME, "firstName").send_keys(self.name)
        self.driver.find_element(By.ID, "lastName").clear()
        self.driver.find_element(By.ID, "lastName").send_keys(self.lastname)
        #self.driver.find_element(By.XPATH, "//*[@id='collectNameNext']/div/button/span").click()
        self.driver.find_element(By.LINK_TEXT, "Help").click()
        
    def tearDown(self):
        self.assertNotEqual(By.PARTIAL_LINK_TEXT =="Help" ,"El link no se encontro")
        self.driver.quit()#cierra todo el driver
        #self.driver.close()# cierra una ventana
    
if __name__ == "__main__":
    unittest.main()