###REGEX###
"""

"""
import re
import datetime

text = "ID: 265356, Este es una de las mejores, clases de Udemy, expresion 5551111"
matching = re.findall("265356|UDEmy",text, re.IGNORECASE)
print(matching)
for result in matching:
    print(result)

searshing = re.search("265356",text)
print(searshing)

if searshing:
    print("Se contro el valor")
    text = re.sub("265356", "*****", text, re.IGNORECASE)#sustituir valor

else:
    print("No se encontro el valor")
print(text)

spliting = re.split(" ",text)
print(spliting)
print(spliting[2])
spliting = re.split(",",text)
print(spliting)
for resultado in spliting:
    if resultado == "ID: *****":
        print("Se encontro el codigo,", resultado)
        break
text1 = "Este texto contiene el valor del Scenario: HOY ahora"
variables = re.findall(str("HOY"), text1, re.IGNORECASE)
print("adentro",variables)
for varible in variables:
    if varible == "HOY":
        dateToday = str(datetime.date.today().strftime("%d-%m-%Y"))
        text1 = re.sub('(Scenario:)([^&.]+)', dateToday, text1, re.IGNORECASE)
        continue
print(text1)

