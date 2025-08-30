*** Settings ***
Documentation    Switche en Navegadores
Library    SeleniumLibrary

*** Variables ***
${name} =    Liliana
${last_name} =    Zamora
${url} =    https://demoqa.com/text-box
${browser} =    chrome

*** Test Cases ***

Demo Robot Framework
    [Documentation]    Variables strings
    [Tags]     test_uno
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Title should be    DEMOQA
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50

    Open Browser    http://opencart.abstracta.us/    ${browser} 
    Maximize Browser Window
    
    Switch Browser    1
    ${titulo1} =    Get Title
    Log To Console    ${titulo1}
    
    Switch Browser    2
    ${titulo2} =    Get Title
    Log To Console    ${titulo2}


    Sleep    2
    Close All Browsers

*** Keywords ***