*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Library    String
Resource   ../keywords/keyword_13.robot

*** Variables ***
${url} =    https://testpages.herokuapp.com/styled/basic-html-form-test.html
${browser} =    chrome
${img} =    C:/Users/lilia/Desktop/python-robot/Test_Case/files/photo.jpg

*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    
    FOR    ${counter}    IN RANGE    0    2
        Inicio
        Bloque 1
        Bloque 2
        Bloque 3
        Fin
    END

*** Keywords ***
Inicio
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be     HTML Form Elements
Fin
    Sleep    2
    Close Browser

Bloque 1
    ${numbers} =    Generate Random String    5    1234567890123
    Wait Until Page Contains    Basic HTML Form Example
    F_texto    name=username    pedro${numbers}
    F_texto    name=password    testing123${numbers}
    F_texto    name=comments    este es mi comentario${numbers}
Bloque 2
    Choose File    xpath=//input[@name='filename']    ${img}
    Select Checkbox    xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[5]/td/input[2]
    Select Checkbox    xpath=//*[@id="HTMLFormElements"]/table/tbody/tr[5]/td/input[3]
    Select Radio Button    radioval    rd3

Bloque 3
    Select From List By Value    multipleselect[]    ms4
    Select From List By Value    dropdown    dd5
    Click Element    submitbutton
    F_screenshot    basic    


    