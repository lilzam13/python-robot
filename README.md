QUE ES LA AUTOMATIZACION DE PRUEBAS?
Se refiere a una tecnologia que permite automatizar procesos manuales

CUANDO AUTOMATIZAR?
Cuando el sistema haya alcanzado cierto grado de madurez, en el cual ya no sera sometido a cambios drasticos en cuanto a la funcionalidad

Cuando el conjunto de regressiones son inferiores a la relacion al tiempo/esfuerzo/Inversion que con lleva automatizar.

VENTAJAS:
Mejora el performacion y tiempo en la ejecucion de pruebas
Reutilizar de los scripts de prueba
Mayor control del mantenimiento
Facilita las pruebas de regresion
Genera automaticamente informes

HERRAMIENTAS E IMPLEMENTACION_

Lenguaje de Programacion
Puede ser Java, c#, Python etc.
Automatizar en Python:
Curva de aprendizaje y tranferencia de conocimiento es menor.
Python: Es un lenguaje de varios propositos orientados a Objetos

IDE
Pychart, Visual Studio Code, Eclipse

Web Driver Selenium
Chrome, Firefox, Safari, Edge, IExplorer etc.

Librerias:
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

VIRTUAL ENVIROMENT
pip install virtualenv
python -m virtualenv enviroment