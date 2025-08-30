*** Settings ***
Documentation    Prueba1
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

*** Variables ***
${url} =    https://demoqa.com/text-box
${browser} =    chrome


*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    Inicio
    Fin
    

*** Keywords ***
Inicio
    [Documentation]
    [Tags]
    FOR    ${I}    IN RANGE    1    3
        Log    QA: ${name} ${last_name}
        Open Browser    ${url}    ${browser}   
        Maximize Browser Window
        Set Selenium Speed    .1s
        Set Selenium Implicit Wait    20
        Title Should Be    DEMOQA
        F_texto    id=userName    Liliana
    END
    

Fin
    Sleep    2
    Close All Browsers
