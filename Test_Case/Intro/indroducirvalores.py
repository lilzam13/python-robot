
nom = input("Name: ").capitalize()
lastname = input("Last name: ").capitalize()
a = int(input("experiencia 1: "))
b = int(input("experiencia 2: "))
exp = a + b
print("Tu nombre es ", nom + " " + lastname, "y tus años de experiencia son: ", exp)
print("Tu nombre es {} {} y tus años de experiencia son: {}".format(nom, lastname, exp))