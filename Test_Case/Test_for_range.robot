*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/buttons
${browser} =    chrome


*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    FOR    ${counter}    IN RANGE    1    3
        Log    ${counter}
        Open Browser    ${url}    ${browser}
        
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