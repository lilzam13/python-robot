*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

*** Variables ***
${url} =    https://www.google.com/
${browser} =    chrome

*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    10
    Title Should Be    Google

    ${ft}=    F_texto    xpath=//*[@id="APjFqb"]    Clima de Gdl
    Log To Console    ${ft}
    F_screen_element    xpath=//*[@id="APjFqb"]    google1.png
    F_enter    xpath=//*[@id="APjFqb"] 
    Log To Console    Se realizo el ENTER.
    F_screenshot    google2.png

    Sleep    2
    Close Browser  