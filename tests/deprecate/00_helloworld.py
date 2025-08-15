#Imprimir
nombre = "Liliana Zamora"
# print(f"Imprime, {nombre}")
# numero = 205
# print(f"Imprime, {str(numero)}")

#Trabajr con arreglos
"""
Listas: Permite almacenar cualquier tipo de valor como enteros, cadenas y hasta funciones, lista[1,205,"DevCode,[6,5]"]
Como añadir un valor a un arreglo
Como recorrer un arreglo
Como actualizar un valor
"""
array = ["Mexico", "Chile", "Uruguay"]
array1 = ["Venezula","Argentina","Chile", "Peru"]
#print(array[1])#imprimir por id

array.append("Costa Rica") #agregar un nuevo elemento a la lista
i = 0
for pais in array1:
    print(pais)
    if pais == "Argentina":
        print(f"{nombre} vive en {pais}")
        #break #rompe la iteracion
        continue #continua con la iteracion

    elif pais == "Chile":
        array1[i] = "Aguante la educacion gratuita en chile"
        print("hola",array1[i])
        continue

    elif pais == "Peru":
        print(f"{nombre} visito {pais}")
        break
    i++1
print(array1)

#trabajando con diccionarios

my_dic = {"nombre":"lilina","apellido":"Zamora","edad":30,"lenguajes":{"Python","Sql","CSS"}}
nombre = my_dic["nombre"] + " " + my_dic["apellido"]
print(f"Hola, {nombre}")
#access_token = dic["access_token"]
#Validar = isinstance(dicc, dict)