*** Settings ***
Documentation    Creando Nuestros Keywords con Python
Library    SeleniumLibrary
Library    ../keywords/Keywords_python.py
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/buttons
${browser} =    chrome


*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    Python crear folder
    Python crear subcarpeta    uno
    Python concatenar name    Liliana    Zamora    Cardenas
    

*** Keywords ***
Start
    [Documentation]    Creando Nuestros Keywords con Python
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
Python crear folder
    create_folder 

Python crear subcarpeta
    [Arguments]    ${subfolder_name}
    create_subfolder    ${subfolder_name}

Python concatenar name
    [Arguments]    ${name}    ${lastname1}    ${lastname2}
    concatenate_name    ${name}    ${lastname1}    ${lastname2}