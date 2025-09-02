*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

Library    DataDriver    C:/Users/lilia/Desktop/python-robot/Test_Case/files/prueba.xlsx    sheet_name=Hoja1   

Test Setup    Inicio
Test Teardown    Final
Test Template    Conectar excel

*** Variables ***
${url} =    https://demoqa.com/text-box
${browser} =    chrome


*** Test Cases ***
Prueba uno Excel using   ${name}    ${last_name}    

*** Keywords ***
Inicio
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be    DEMOQA

Final
    Sleep    2
    Close Browser
Conectar excel
    [Arguments]    ${name}    ${email}    
    F_texto    id=userName    ${name}
    F_texto    id=userEmail    ${email}