# -*- coding: utf-8 -*-
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

class AppDynamicsJob(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()
        self.driver.implicitly_wait(14)
        self.driver.get("https://www.facebook.com/r.php?entry_point=login")

    def test_app_dynamics_job(self):
        driver = self.driver
        driver.find_element(By.NAME, "firstname").clear()
        driver.find_element(By.NAME, "firstname").send_keys("liliana")
        driver.find_element(By.NAME, "lastname").click()
        driver.find_element(By.NAME, "lastname").clear()
        driver.find_element(By.NAME, "lastname").send_keys("zamora")
        driver.find_element(By.ID, "month").click()
        Select(driver.find_element(By.ID, "month")).select_by_visible_text("Jan")
        driver.find_element(By.ID, "day").click()
        Select(driver.find_element(By.ID, "day")).select_by_visible_text("13")
        driver.find_element(By.ID, "year").click()
        driver.find_element(By.ID, "year").click()
        Select(driver.find_element(By.ID, "year")).select_by_visible_text("1994")
        driver.find_element(By.XPATH, "//span[@id='u_0_d_Sd']/span[2]/label").click()
        driver.find_element(By.ID, "u_0_h_M0").clear()
        driver.find_element(By.ID, "u_0_h_M0").send_keys("3121030690")
        driver.find_element(By.ID, "password_step_input").click()
        driver.find_element(By.ID, "password_step_input").clear()
        driver.find_element(By.ID, "password_step_input").send_keys("ttxtxtestung")
        time.sleep(5)
    def tearDown(self):
        self.driver.close()

if __name__ == "__main__":
    unittest.main()
