### TEST BY THE COURSE ###
#Importando librerias de Selenium
from selenium import webdriver
from selenium.webdriver.common.by import By
import time
from selenium.webdriver.common.keys import Keys 
#Inicializando driver
driver = webdriver.Firefox()
#driver = webdriver.Chrome()


#Abre el sitio de la aplicacion web(abre el host de la app)
driver.get("http://www.python.org")
# Se verifica que el titulo de la applicacion web
assert "Python" in driver.title
time.sleep(2)
#busco el elemento por medio del id
#Almaceno en una variable el objeto con el que voy a interactuar
elem = driver.find_element(By.ID, "id-search-field")

#Escribo en el input
elem.send_keys("pycon")
elem.send_keys(Keys.RETURN) 
#cierro el driver
driver.close()

### TEST BY THE DOCUMENTATION ###
"""from selenium import webdriver #provide all webdriver implementations(firefox, chrome etc)
from selenium.webdriver.common.keys import Keys #provide keys like return, f1, alt etc
from selenium.webdriver.common.by import By #To locate elements

#driver = webdriver.Firefox() #will navigate to a page given by the URL.
driver = webdriver.Chrome()
driver.get("http://www.python.org")
assert "Python" in driver.title #it is an assertion to confirm that title has the word “Python” in it:
elem = driver.find_element(By.NAME, "q") # find elements using the find_element method
elem.clear() #clear any pre-populated text in the input field, simulate action for the user
elem.send_keys("pycon")#write something in the input, simulate action for the user
elem.send_keys(Keys.RETURN) 
assert "No results found." not in driver.page_source #To ensure that some results are found, make an assertion
driver.quit()#  the browser window is closed"""

