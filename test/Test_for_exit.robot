*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Library    String
Resource   ../keywords/keyword_13.robot


*** Variables ***
${url} =    https://demoqa.com/buttons
${browser} =    chrome
@{ROBOTS} =     Bender    Terminator    Robocot    RobotFramework
@{num} =    1    2    3    4    5    6    7    8    9
*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be    DEMOQA

    FOR    ${rbt}    IN    @{ROBOTS}
        Exit For Loop If    $rbt=='Robocot'
        Log To Console    ${rbt}
        ${numbers} =    Generate Random String    5    1234567890123
        Log To Console    ${numbers}
    END

    Sleep    2
    Close Browser 
    

*** Keywords ***

    