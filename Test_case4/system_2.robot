*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/buttons
${browser} =    chrome


*** Test Cases ***
Crear un directorio
    [Documentation]    Crear una carpeta
    [Tags]    folder
    Create Directory    folder2
    
Crear un Archivo
    [Documentation]    Crear archivo
    [Tags]    file
    Create File    folder1/liliana.txt

Copiar un directorio
    [Documentation]    Copiar directorio
    [Tags]    copy_folder
    Copy Directory    folder1    folder2

Copiar un file
    [Documentation]    Copiar file
    [Tags]    copy_file
    Copy File    folder1/liliana.txt    folder2

Copiar archivos
    [Documentation]    Copiar archivos
    [Tags]    archivos
    Copy Files    *.robot    Respaldo

Mover directorio
    [Documentation]    Mover un directorio
    [Tags]    move
    Move Directory    file1    file2

Renombrar directorio
    [Documentation]    Renombrar directorio
    [Tags]    rename
    Move Directory    file2/file1    file2/Respaldo5

Mover archivo
    [Documentation]    Mover un archivo
    [Tags]    move_file
    Move File   file2/Respaldo5/testing.txt   file2

Directorio exist
    [Documentation]    Validar que directorio exista
    [Tags]    exist_direc
    
    ${flag}=    Run Keyword And Return Status    Directory Should Exist    /file2/Respaldo5
    Log To Console    ${flag}
    IF    '${flag}' == 'True'
        Log To Console    Directorio existe
        Copy Directory    /file2/Respaldo5    /file2
    ELSE
        Log To Console    No existe la carpeta
    END

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