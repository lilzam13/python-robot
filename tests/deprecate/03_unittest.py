### UNIT TEST ###
"""
Es una libreria. Se trata para determinar si un modulo o un conjunto de modulos de codigo funciona correctamente
Las pruebas unitarias se implementan a la par con el desarrollo
Son los pruebas que validan que un metodo de un feature funciona
Assertion: Ayuda a detectar problemas donde la causa no es clara, es similar a una excepcion(si una condicion dada no es verdadera)
Unitest
"""

import unittest

class Test_001(unittest.TestCase):
    def setUp(self):
        pass
    def test_equal(self):
        self.variable_a = 50
        self.variable_b = 50
        self.assertEqual( self.variable_a, self.variable_b,"los valores son distintos")

    def test_notwequal(self):
        self.variable_a = 50
        self.variable_b = 51
        self.assertNotEqual( self.variable_a, self.variable_b,"los valores son iguales")

    def test_true(self):
        self.variable_a = True
        self.assertTrue( self.variable_a,"El booleno es false")

    def test_false(self):
        self.variable_b = False
        self.assertFalse( self.variable_b,"El booleno es true")

    def test_practico(self):
        self.variable_a = 30
        if self.variable_a >= 10:
            self.resultado = True
        else:
            self.resultado = False

        self.assertTrue(self.resultado,f"La varibable {self.variable_a} es menor a 10")

    def test_inassert(self):
        self.variable_a = "Bienvenido a la clase de Unittest"
        self.variable_b = "unittest"
        self.assertIn(self.variable_b.lower(), self.variable_a.lower(), f"Cadena: {self.variable_b} no esta en: {self.variable_a}")

    def test_isnotassert(self):
        self.variable_a = "Bienvenido a la clase de Unittest"
        self.variable_b = "Bienvenido A la clase de Unittest"

        self.assertIsNot(self.variable_b.lower(), self.variable_a.lower(), "Son identicos")
    
    def tearDown(self):
        pass
         
    

if __name__ == "__main__":#Aqui esta el contructor y con unitest correremos las pruebas
    unittest.main()
