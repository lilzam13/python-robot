*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Library    Dialogs
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/text-box
${browser} =    chrome


*** Test Cases ***
Test Case: Dialogos
    F_texto    id=userName    Liliana
    Execute Manual Step    Deseas continuar?
    F_texto    id=userEmail    Lili@gmail.com
    Pause Execution
    F_texto    currentAddress   My address
    F_texto     id=permanentAddress   my address two
    F_scroll    0    650
    Click Button    id=submit

Test Case: pedir datos
    [Tags]    request
    ${name}=    Get Value From User    Captura el nombre:
    F_texto    id=userName    ${name}
    Execute Manual Step    Deseas continuar?
    F_texto    id=userEmail    Lili@gmail.com
    Pause Execution
    F_texto    currentAddress   My address
    F_texto     id=permanentAddress   my address two
    F_scroll    0    650
    Click Button    id=submit

*** Keywords ***
Start
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    ${self_browser}=    Get Selection From User    Selecciona Navegador:    chrome    firefox
    Open Browser    ${url}    ${self_browser}  
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be    DEMOQA

End
    Sleep    2
    Close Browser   