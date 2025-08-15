import os
import datetime
class Inicializar():

    # Ruta absoluta al directorio base del proyecto
    BASEDIR = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))

    # Ruta a la carpeta de drivers
    DRIVERS_DIR = os.path.join(BASEDIR, "src", "drivers")

    # Ruta al chromedriver.exe
    CHROMEDRIVER_PATH = os.path.join(DRIVERS_DIR, "chromedriver.exe")

    # Ruta al chromedriver.exe
    FIREDRIVER_PATH = os.path.join(DRIVERS_DIR, "geckodriver.exe")

    # Ruta al chromedriver.exe
    EDGEDRIVER_PATH = os.path.join(DRIVERS_DIR, "msedgedriver.exe")

    # Ruta a la carpeta de pages
    PAGES_DIR = os.path.join(BASEDIR, "src", "pages")
    
    #Directorio de evidencia
    path_evidencias = os.path.join(BASEDIR, "src", "data","capturas")

    #Hoja de datos excel
    Excel = os.path.join(BASEDIR, "src", "data","Data_Test.xlsx")

    DateFormat = '%m/%d/%Y'
    HourFormat = '%I:%M:%S'

    #Browser de pruebas
    NAVEGADOR = 'CHROME'

    Enviroment =  'Test'

    if Enviroment == "Dev":
        URL = 'https://www.google.com/'

    if Enviroment == "Test":
        URL = 'https://www.facebook.com/r.php?entry_point=login'
        User = "root"
        Pass = "stx123"
        DB_HOST = "127.0.0.1"
        DB_PORT = "3306"
        DB_DATABASE = "world"
        DB_USER = "root"
        DB_PASS = "stx123"