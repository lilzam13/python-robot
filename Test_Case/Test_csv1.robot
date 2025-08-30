*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot
Library    String

Library    DataDriver    file=C:/Users/lilia/Desktop/python-robot/Test_Case/files/pruebacsv.csv

Test Setup    Inicio
Test Teardown    Final
Test Template    Conectar excel    

*** Variables ***
${url} =    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =    chrome

*** Test Cases ***
Llenar fomulario    ${admin}    ${pass}    ${name}    ${middle_name}    ${last_name}    ${employee_id}


*** Keywords ***
Inicio
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be    OrangeHRM

Final
    Sleep    2
    Close Browser
Conectar excel
    [Arguments]    ${admin}    ${pass}    ${name}    ${middle_name}    ${last_name}    ${employee_id}
    F_texto    name=username    ${admin}
    F_texto    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']
    Click Element    xpath=//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a
    Click Element     xpath=//*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[3]/a   
    F_texto    name=firstName    ${name}
    F_texto    name=middleName    ${middle_name}
    F_texto    name=lastName    ${last_name}
    F_texto    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/input    ${employee_id}
    Click Button    xpath=//button[normalize-space()='Save']

    
    