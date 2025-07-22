import unittest

class Test_0001(unittest.TestCase):
    def setUp(self):#donde se define los datos de prueba
        self.variable_a = 7
        self.variable_b = 10

    def te2st_suma(self):# siempre inicia con la palabra test
        self.resultado = self.variable_a + self.variable_b

    def tearDown(self):#aqui es donde se finaliza la prueba
        self.assertTrue(self.resultado == 14, f"El valor no es 14, el valor es {self.resultado}")

class Test_0002(unittest.TestCase):
    def setUp(self):#donde se define los datos de prueba
        self.variable_a = "lilianaa "
        self.variable_b = "ZamoRa"
        
    def test_cadena(self):# siempre inicia con la palabra test
        self.resultado = self.variable_a + self.variable_b
        

    def tearDown(self):#aqui es donde se finaliza la prueba
        self.assertTrue(self.resultado.lower() == "LIliana Zamora".lower(), f"El resultado es diferente al esperado, el cadena es {self.resultado.capitalize()}")
    

if __name__ == "__main__":
    unittest.main()