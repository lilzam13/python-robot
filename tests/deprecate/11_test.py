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
        self.driver = webdriver.Chrome()
        self.driver.maximize_window()
        self.driver.implicitly_wait(10)
        self.driver.get("https://www.facebook.com/r.php?entry_point=login")
        self.title = "facebook-login"
    def test_screen(self):
        self.driver.find_element(By.NAME, "firstname").send_keys("Liliana")
        self.driver.find_element(By.NAME, "lastname").send_keys("Zamora")
        self.select = Select(self.driver.find_element(By.XPATH, "//*[@id='month']")).select_by_visible_text("Jan")
        self.select = Select(self.driver.find_element(By.ID, "day")).select_by_visible_text("13")
        self.select = Select(self.driver.find_element(By.NAME, "birthday_year")).select_by_visible_text("1994")
        self.driver.find_element(By.XPATH, "//label[normalize-space()='Male']").click()
        self.driver.find_element(By.NAME, "reg_email__").send_keys("Lilianazam13@gmail.com")
        self.driver.find_element(By.CSS_SELECTOR, "#password_step_input").send_keys("Testing")
        self.driver.get_screenshot_as_file(f"./src/data/capturas/{self.title}-{hora_global}.png")
        self.driver.find_element(By.PARTIAL_LINK_TEXT, "Policy").click()
        time.sleep(10)
    def tearDown(self):
        self.driver.close()
    
if __name__ == "__main__":
    unittest.main()