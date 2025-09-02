*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot
Library    files/MasterExcel.py
Resource    files/MasterExcel_Robot.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://the-internet.herokuapp.com/login
${browser} =    chrome


*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    ${num_filas} =    Numero de filas    Hoja2
    FOR    ${i}    IN RANGE    2    ${num_filas}+1
        ${users} =    Obtener valor columna    Hoja2    ${i}    1
        ${pass} =    Obtener valor columna    Hoja2    ${i}    2
        Login    ${users}    ${pass}
    END
    

*** Keywords ***
Start
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Implicit Wait    20
    Title Should Be    The Internet

End
    Sleep    2
    Close Browser   

Login
    [Arguments]    ${users}    ${pass}
    F_texto    id=username    ${users}
    F_texto    id=password   ${pass}
    Click Element    xpath=//form[@id='login']/button/i
    Sleep    3
