### TEORIA ###
*** Que es la automatizacion de pruebas? ***
Se refiere a una tecnologia que permite automatizar procesos manuales

*** Cuando automatizar? ***
Cuando el sistema haya alcanzado cierto grado de madurez, en el cual ya no sera sometido a cambios drasticos en cuanto a la funcionalidad
Cuando el conjunto de regressiones son inferiores a la relacion al tiempo/esfuerzo/Inversion que con lleva automatizar.

*** Ventajas: ***
Mejora el performance y tiempo en la ejecucion de pruebas
Reutilizar de los scripts de prueba
Mayor control del mantenimiento
Facilita las pruebas de regresion
Genera automaticamente informes

*** Unittest: *** Es una libreria estandar del lenguaje de programacion de python. Gracias a los modulos y herramientas que posee se puede ejecutar un test para comprobar las funciones de tu codigo, encontrar errores  facilitar el desarrollo del programa.

*** Test Runner: *** Este componente se encarga de iniciar y gestionar el proceso de ejecucion, tanto en casos de prueba como en los suites.
*** Selenium ***
Es un framework de pruebas automatizadas de codigo abierto, que permite escribir scripts en varios lenguajes: Java, Python, Ruby, C# etc. Las pruebas pueden ejecutarse usando la mayoria de navegadores(Firefox, Edge, Safari, Chrome etc.)
***Selenium web-driver***
Acepta comandos y los envia al navegador, esto se lleva acabo a traves de un controlador del navegador(especifico para cada navegador) que envia los comandos y los trae de regreso.
*** Cucumber ***
Es un framework que da soporte para aplicar la metodologia Agil de desarrollo BDD(Behavior Driven Development), permite escribir escenarios de prueba en un lenguaje sencillo y comprensible para todos. El objetivo es fomentar la colobaracion entre los equipos tecnicos y de negocio de una organizacion.

*** Buenas practicas de Programacion ***
Class name: se usa la convencion PascalCase, y terminar con la palabra test, por ejemplo: LoginTest
Method name: Debe iniciar con la palabra test_, y la convencion es snake_case, por ejemplo: test_login_exitoso
File name: Debe usar la convencion snake_case; y comenzar o terminar con la palabra test, por ejemplo: test_login.py o login_test.py

### HERRAMIENTAS E IMPLEMENTACION ###
*** Lenguaje de Programacion: *** Java, c#, Python etc.
Automatizar en Python:
Curva de aprendizaje y tranferencia de conocimiento es menor.
Python: Es un lenguaje de varios propositos orientados a Objetos

*** IDE: *** Pychart, Visual Studio Code, Eclipse
*** Web Driver Selenium: *** Chrome, Firefox, Safari, Edge, IExplorer etc.

*** Librerias: ***
Pip: python -m ensurepip --upgrad(Por lo regular se installa al agregar las extensiones "Python Microsoft")
Selenium: pip install selenium
Pytest: pip install pytest
Allure Framework
Jenkin
Openpyxl: pip install openpyxl(Para leer archivos xlxls)
cnx: pip install cnx(Para base de datos)
behave: pip install behave(Para hacer pruebas con base a comportamiento)
allure-behave:pip install allure-behave(Leer los reportes)
allure-pytest: pip install allure-pytest
allure-python-commons: pip installallure-python-commons
Pillow: pip install Pillow(insertar imagenes)
unittest-xml-reporting: pip install unittest-xml-reporting(Permite crear reportes)
pip freeze > requirement.txt(genera un archivo con las librerias instaladas y sus versiones)
python --version
pip list

### Virtual enviromennt ###
pip install virtualenv
python -m virtualenv enviroment
Crear un entorno virtual: python -m venv venv
Activa el entorno virtual: venv\Scripts\activate
Instala Selenium dentro del entorno virtual: pip install selenium
Comprobar que selenium esta bien instalado: python -c "import selenium; print(selenium.__version__)"

*** Activacion de un virutal env en Power Shell ***
En Window PowerShell, verificar que este instalado python y pip
Activar el enviroment: C:\Users\lilia\Desktop\python-selenium\enviroment\Scripts\activate.ps1
ir a: cd C:\Users\lilia\Desktop\python-selenium\tests
Ejecutar el caso de prueba: python -m pytest 01_test.py
Ejecutar caso de prueba y generar reporte: python -m pytest 01_test.py 00_helloworld.py --junitxml=results.xml
Nota: Si no funciona intentar con comas para separar lo tests cases, .\testcase or revisar que siempre lleve el .py

### TEMAS PENDIENTES ###
Katalon reader, selenium ide y cucumber

### Informacion general de los Tests Cases ###
02_test.py: Diferentes tipos: select etc
06_test.py: Se manejo el poder leer elementos de una misma clase, almancenarlos en una lista, acceder a elllos por medio del ciclo for, y se agrego un assert para validar si coinciden
07_test.py: Ejecutar scripts de Selenium con JavaScript:Scroll
arguments[0].scrollIntoView()
arguments[0].click() Ejemplo: self.driver.execute_script("arguments[0].click();",self.find_burger)
document.readyState
08_test.py: Se agrego la libreria de ActionChains, ejecutar acciones que normalmente ejecutamos con el mousse
09_test.py: Se agrego la libreria de Keys
10_test.py: Capturar de pantalla, sirve para evidenciar el testeo.
11_test.py: Document Objet Model
12_test.py: Poder leer el elemento desde otro file, donde se define todos los elementos


### ESQUEMA BASICO DE UN TEST CASE ###
# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 31 July, 2025
"""
import unittest
import sys
import os
import time
import allure
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium

class LoginTest(Selenium, unittest.TestCase):
    def set_up(self):
        Selenium.abrir_navegador(self)
    
    def test_fb_login(self):
        pass

    def tear_down(self):
        Selenium.tearDown(self)

if __name__ == "__main__":
    unittest.main()

### ESQUEMA BASICO DE UN TC CON ALLURE###
# -*- coding: utf-8 -*-
"""
Created by: Liliana
Created date: 31 July, 2025
"""
import unittest
import allure
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium

@allure.feature("Test Udemy 1")
@allure.story("T001: Prueba basica de la automatizacion")
@allure.testcase("TC001", "https://clickup.com")
@allure.severity(allure.severity_level.NORMAL)
@allure.description("Se require visitar el sitio de google: </br>" \
"Deseamos la fecha en el input principal</br></br>")

class DummyTest(Selenium, unittest.TestCase):
    def set_up(self):
        with allure.step("PASO 1: Ingresar a Google"):
            pass
    def test_dummy(self):
        with allure.step("PASO 2: Capturar una fecha de busqueda"):
            pass
    def tear_down(self):
        with allure.step("PASO 3: Cerrar el navegador"):
            pass

if __name__ == "__main__":
    unittest.main()

### ESTRUCTURA DE CARPETAS ###

Proyecto-automation/
├── logs/                 # Archivos de log generados
├── reports/              # Reportes de ejecución
│   └── allure_reports
│   └── allure_results
├── features/              # behave
│   └── steps
│         └──test_steps.py
│   └── test.feature
├── src/                  # Código fuente
│   ├── config/           # Archivos de configuración (.yaml, .env, etc.)
│   ├── data/             # Datos de entrada o simulación
│   ├── drivers/          # Controladores de navegador, inicialización
│   ├── functions/        # Funciones reutilizables
│          └── Functions.py
│          └── __init__.py
│   ├── pages/            # Page Objects si usas Selenium u otro framework
│   ├── utils/            # Helpers generales
│   └── main.py           # Script principal o inicializador
│   └── __init__.py
├── tests/                # Pruebas automatizadas
│   ├── test_login.py
│   └── test_extraction.py
├── results/
│   └── results.html
│   └── results.xml
├── environment.py
├── requirements.txt      # Dependencias del proyecto
├── README.md             # Descripción del proyecto
└── .gitignore 

### LANZAR UN CONJUNTO DE PRUEBA EN REPORTES HTML Y XML ###
-m(se indica que tiene que tiene que incorporar todos los submodulos, y los busca automaticamente dentro del path)
cd .\tests
python -m pytest T001.py T001.py T001.py --html=../results/results.html --self-contained-html
python -m T002.py T003.py T0010.py --junit-xml=../results/results.xml


#### ERROR RESOLUTIONS###
***Problemas para correr los reportes de xml y/o html:***
Al correr xml, tal vez es necesario instalar la libreria dentro del enviroment virual:
 cd .\enviroment\
 pip install pyodbc
Al correr html, tal vez es necesario instalar el paquete de pytest-html:
  pip install pytest-html

Actualizar: PS C:\Users\lilia\Desktop\python-selenium> pip freeze .\requirement.txt
***Problemas con el interprete de vs code(No detecta librerias):***
1.- Abre la paleta de comandos con Ctrl + Shift + P
2.- Escribe “Python: Select Interpreter”
3.- elige el intérprete donde instalaste Selenium.
4.- Reiniciar Visual Studio

***Problemas con las variables de entorno***
Definir ALLURE_HOME y su ruta: C:\Users\lilia\Programs\Allure;C:\Users\lilia\Programs\Allure\bin,
Definir JAVA_HOME y su ruta: C:\Program Files\Java\jre1.8.0_461
C:\Users\lilia\Programs\Allure\bin\allure.bat;C:\Users\lilia\Programs\Allure\lib
En la variable de entorno path, agregar las variavles creadas: %ALLURE_HOME%,"PYTHON","JAVA_HOME"

### EXUCUTE TESTS CASES IN CMD ###
***Pasos para correr los tc:***
cd tests
pytest test_dummy.py --alluredir ../reports/allure_results
cd ..
allure generate reports/allure_results --output reports/allure_reports --clean
allure open reports/allure_reports --port 5000 

### Additional information
C:\Users\lilia\AppData\Local\Google\Chrome\User Data\Profile 2
C:\Users\lilia\AppData\Local\Mozilla\Firefox\Profiles
cmd firefox.exe -profilemanager
Actualizar librerias: PS C:\Users\lilia\Desktop\python-selenium> pip freeze .\requirement.txt
Para conectar con base de datos, tienes que confirar en windows el odbc(desgargar el driver primero)
Una funcion si recibe un parametro y regresa un valor mientras que un metodo solo procesa
Ejecutar un test desde la terminal de windows: (enviroment) PS C:\Users\lilia\Desktop\python-selenium\tests> python .\test_dummy.py


Installar todas las librerias en Jenkins, desde la configuracion

### Configurar VS Code para BDD ###
Agregar en visual studio code: Cucumber (Gherkin) Full Support
Modificar settings.json para habiliar behave
Behave para mostrar errores: behave --no-capture
pip install behave allure-behave

behave -n 'This is a scenario name
behave -i file_name.feature

Scenario: Abrir el navegador con una url previamente definida
        Given abrir el navegador 'FIREFOX' con la url 'https://chatgpt.com/'
        Then Cerrar la aplicacion

