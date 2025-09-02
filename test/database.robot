*** Settings ***
Documentation    Practica Base de datos con Mysql
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem
Resource   ../keywords/keyword_13.robot

Suite Setup       Connect To Database    pymysql    ${dbname}    ${user}    ${pass}    ${host}             
Suite Teardown    Disconnect From Database


*** Variables ***
${url} =    https://demoqa.com/buttons
${browser} =    chrome

${dbname}    system_robot
${user}      lilzam
${pass}      123        
${host}      127.0.0.1
${port}      3306    


*** Test Cases ***
DATA BASE: Crear tabla
    [Documentation]    Crear una nueva tabla en el sistema
    [Tags]    Crear_tabla
    ${query}=    Set Variable    CREATE TABLE IF NOT EXISTS pet (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(100) NOT NULL, type VARCHAR(100) NOT NULL, PRIMARY KEY (id));
    Execute Sql String    ${query}
    Log To Console    Tabla creada exitosamente
    
DATA BASE: Insertar by record registro
    [Documentation]    Insertar un nuevo registro
    [Tags]    insert_record
    ${insert} =    Execute Sql String    INSERT INTO `pet` (`id`, `name`, `type`) VALUES (NULL, 'Duran', 'Perro');
    Log To Console    Registro insertado exitosamente

DATA BASE: Insertar by SQL FILE registro
    [Documentation]    Insertar un nuevo registro
    [Tags]    insert_record_SQL
    ${insert_global} =    Execute Sql Script    C:/Users/lilia/Desktop/python-robot/src/data/Insertar.sql
    Log To Console    Insersion exitosa
DATA BASE: Consulta select exist
    [Documentation]    Consultar un registro
    [Tags]    exist
    ${consulta} =    Query    SELECT name FROM personas1 WHERE name='Damian'
    ${records_total} =    Get Length    ${consulta}
    Should Be True    ${records_total} >= 1
    Log To Console    Si se encontro el registro

DATA BASE: Consulta select no exist
    [Documentation]    Consultar un registro
    [Tags]    no_exist
    ${consulta} =    Query    SELECT name FROM personas1 WHERE name='Dameian'
    ${records_total} =    Get Length     ${consulta}
    Should Be True    ${records_total} == 0
    Log To Console    Correcto, no se encontro el registro

DATA BASE: Consulta si existe tabla
    [Documentation]    Revisar si existe una tabla
    [Tags]    table_exist
    Table Must Exist    personas1
DATA BASE: Contar numero de elementos
    [Documentation]    Numero de Elementos
    [Tags]    row_count
    ${consulta} =    Query    SELECT name FROM personas1 WHERE last_name1='Zamora'
    ${records_total} =    Get Length     ${consulta}
    Should Be True    ${records_total} == 4
    Log To Console   Se encontraron los registros esperados

DATA BASE: Updated data
    [Documentation]    Actualiar un dato
    [Tags]    update_field
    ${update} =    Execute Sql String    UPDATE personas1 SET name='Roberto' WHERE id=2
    Log To Console   Se actualio el registro: ${update}
    Should Be Equal As Strings    ${update}    None
DATA BASE: Truncate
    [Documentation]    Truncar tabla: Borra elementos e historial
    [Tags]    truncate
    ${delete} =    Execute Sql String    TRUNCATE TABLE personas1;
    Log To Console   Se trunco la tabla: ${delete}
    Should Be Equal As Strings    ${delete}    None

DATA BASE: Consultar todos los registros
    [Documentation]    Consultar registros
    [Tags]    all_records
    ${records_total} =    Query    SELECT * FROM personas1;
    Log To Console   many @{records_total}

*** Keywords ***
Start
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be    DEMOQA

End
    Sleep    2
    Close Browser   