### ROBOT FRAMEWORK ###
pip install selenium
pip install robotframework
pip install robotframework-seleniumlibrary
pip install --upgrade robotframework-seleniumlibrary
pip install webdriver-manager

Para excel
pip install robotframework-datadriver
pip install robotframework-datadriver[XLS]

.\venv\Scripts\python.exe -m pip install robotframework
robotframework                 7.3.2
robotframework-pythonlibcore   4.4.1
robotframework-seleniumlibrary 6.7.1

Plugin: Robot Framework Language Server
Tipo id= #userName o input#userName

Tipo css= .mr-sm-2 o  .form-control o input.form-control o textarea.form-control

Por tipo: [type='email'] o input[type='email']
Econtrar un elemento tipo input donde el id sea userName y el type se Text= input#userName[type='text']

Xpath: //button[@id='submit'] o //button[@type='button']
or = //input[@id='userName' or @type='text']
and =  //input[@id='userName' and @type='text']
por texto= //h1[text()='Text Box'] or //span[text()='Dynamic Properties']
Coincidencia= //span[contains(text(),'Box')] or //span[contains(text(),'Links')]

Cambiar la direccion de los reportes:
robot -d C:\Users\lilia\Desktop\python-robot\reports\reports_robot .\Test_uno.robot
Correr por test cases por names similares: robot -d ..\reports\reports_robot  .\Test_practi*.robot
Correr por tags: robot -d ..\reports\reports_robot -i Test_6.3  .\Test_seis.robot

ibm: Stx_1234567$

*** Para trabajar con Apis ***
pip install requests
pip install robotframework-requests
pip install robotframework-jsonlibrary
pip install jsonpath_rw
pip install jsonpath_rw_ext

get: obtener informacion
post: insert informacion
put y patch: para actualizar
delete: para eliminar

*** Para trabajar con Base de datos ***
pip install robotframework-databaselibrary
CREATE TABLE IF NOT EXISTS pet (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(100) NOT NULL, type VARCHAR(100) NOT NULL, PRIMARY KEY (id))
INSERT INTO `personas1` (`id`, `name`, `last_name1`, `last_name2`) VALUES (NULL, 'Rodrigo', 'Zamora', 'Cardenas');
SELECT name FROM personas1 WHERE name='Damian'
 UPDATE personas1 SET name='Rogelio' WHERE id=2

*** Para ejecutar casos de prueba en paralelo ***
Ejecutar casos de prueba en paralelo
pip install robotframework-pabot
pabot --processes 2 --outputdir Resultados prueba*.robot


### Allure con Robot
pip install allure-robotframework
pip install robotframework-requests
<<<<<<< Updated upstream
robot --listener allure_robotframework:../reports/allure-results ./practica_test2.robot
allure serve ../reports/allure-results

#### Working in progress ###

=======
 ###LILIANA ZAMORA###LILIANA ZAMORA###LILIANA ZAMORA###LILIANA ZAMORA###LILIANA ZAMORA###LILIANA ZAMORA###LILIANA ZAMORA###LILIANA ZAMORA###LILIANA ZAMORA####LILIANA 

robot --listener allure_robotframework:../reports/allure-results ./practica_test2.robot
allure serve ../reports/allure-results

>>>>>>> Stashed changes
*** Stashed: *** saves changes that you dont wanto to commit yet

### How to merge stashed changes in your local env. ###
*** Stashed your changes: ***stashed changes with git stash. this will save your uncommitted changes and revert the working directoy
*** List you stashed: *** Each stash is assigned an identifier like stash@{0}, stash@{1}, etc. git stash list
*** Apply to stashed:  ***To merge the stashed changes back into your working directory. Use the git stash apply command or to apply a specific stash git stash apply stash@{0}
*** Resolve Conflicts: ***Use git status to see which files have confliscts. after resolving stage the changes using git add
*** Drop the stash: ***  you can remove it from the stash list:  git stash drop or git stash drop stash@{0}
*** Pop the Stash: *** if you want to apply the stashed changes and remove it from the stash list in one step, you can use: git stash pop

### Aplicar un revert a un repositorio remoto: ###
Revertir un commit con Revert: No altera el historial y es seguro
Encontrar commit a revertir con git log
Revertir commit: git revert <hash obtenido del git log>
Realizar el push: Despues de hacer el commit del revert, empujar los cambios: git push origin <nombre-de-tu-rama>

### Revertir el ultimo commit, se puede usar Git reset, esta accion reescribe el historial. ###
Restablecer tu repositorio local: git reset --soft HEAD~1 o git reset --hard HEAD~1
Forzar el push al repositorio remoto: git push origin <nombre-de-tu-rama> --force

########## 
Tomar desiciones
Creer en ti y creer que si puedes y creertela
Mejorar la comunicacion
Confirmar y vericar las acciones
Hacer una pausa
Retomar el camino
##########
Token: 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