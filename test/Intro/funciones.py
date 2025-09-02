def saludo():
    print("Hola Mundo")
saludo()

def sumar( a, b):
    sum = a + b
    return sum
print("La suma es: ", sumar(10, 15))

def resta( c, d):
    resta = c - d
    return resta
resta = resta(10, 2)
print("La resta es: ", resta)

def datos(name, lastname):
    print("Tu nombre es {} {}".format(name, lastname))
datos("Liliana", "Zamora")


def sum(*args):
    resultado=0
    for n in args:
        resultado = resultado + n
    return resultado
print(sum(5,9))