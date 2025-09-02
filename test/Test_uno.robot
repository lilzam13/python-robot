*** Settings ***
Documentation      Practica dos
Library            SeleniumLibrary
*** Variables ***

*** Test Cases ***

Mi primer Test
    [Documentation]    Proyecto de Payments con Paypal
    [Tags]     test_paypal
    Open Browser    https://demoqa.com/text-box    chrome
    Maximize Browser Window
    Input Text    id=userName    Liliana
    Input Text    id=userEmail    lilianazam13@gmail.com
    Input Text    id=currentAddress   Paseo del aire 242
    Input Text    id=permanentAddress    Contitucion 26
    Execute Javascript    window.scrollTo(0,200)
    Sleep    3
    Click Button    id=submit
    Sleep    5
    Close Browser

Mi segundo Test
    [Documentation]    Proyecto de Payments con ApplePay
    [Tags]     test_applepay
    Open Browser    https://demoqa.com/text-box    chrome
    Maximize Browser Window
    Input Text    id=userName    Rodrigo
    Input Text    id=userEmail    rodrigo@gmail.com
    Input Text    id=currentAddress   Paseo del aire 242
    Input Text    id=permanentAddress    Contitucion 26
    Sleep    3
    Click Button    id=submit
    Sleep    5
    Close Browser

*** Keywords ***