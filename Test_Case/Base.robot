*** Settings ***
Documentation    Proyecto de pagos 2021
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

    Sleep    2
    Close Browser

*** Keywords ***