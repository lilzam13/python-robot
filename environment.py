# Archivo: Proyecto-automation/environment.py

import sys
import os

# Obtiene la ruta de la raíz del proyecto, donde se encuentra este archivo
project_root = os.path.dirname(os.path.abspath(__file__))

# Añade la raíz del proyecto a la ruta de búsqueda de Python
if project_root not in sys.path:
    sys.path.insert(0, project_root)