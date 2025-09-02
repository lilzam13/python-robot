a = 100
b = 100
c = 100
if a > b:
    print("El mayor es A: ", a)
else:
    print("El mayor es B: ", b)

name = "liliana".capitalize()
if name == "Liliana":
    print("Tu nombre es: ", name)
else:
    print("No se encontro")


if a <= b:
    print("{} es menor o igual que {}".format(a,b))
else:
    (print("{} no es menor o igual que {}".format(a,b)))

if a != b:
    print("{} es diferente {}".format(a,b))
else:
    (print("{} son iguales {}".format(a,b)))


#Encontrar el mayor

if (a > b  and  a > c):
    print("El mayor es A", a)
elif (b > a  and  b > c):
    print("El mayor es b", b)
elif (c > a  and  c > b):
    print("El mayor es c", c)
else:
    print("Son iguales")

if (a < b or a > c ):
    print("{} es menor que {} o {} es mayor que {}".format(a, b, a, c))
