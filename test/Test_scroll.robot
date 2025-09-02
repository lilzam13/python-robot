*** Settings ***
Documentation    Scroll
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://www.mercadolibre.com.mx/#from=homecom
${browser} =    chrome


*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    F_texto    name=as_word    Ferrari
    Press Keys    name=as_word    ENTER 
    Scroll Element Into View    xpath=//*[@id="root-app"]/div/div[2]/aside/section[2]/div[11]/h3

*** Keywords ***
Start
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be    Mercado Libre México - Envíos Gratis en el día
    
End
    Sleep    2
    Close Browser   