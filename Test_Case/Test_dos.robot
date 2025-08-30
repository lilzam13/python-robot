*** Settings ***
Documentation    Practica dos
Library    SeleniumLibrary

*** Variables ***
${name} =    Liliana
${last_name} =    Zamora

${email} =    rodrigo@gmail.com
${address_1} =    Paseo del aire 242
${address_2} =    Contitucion 26

${url} =    https://demoqa.com/text-box
${browser} =    chrome

*** Test Cases ***

Test Case Utilizar variables previamente definida
    [Documentation]    Utilizando las variables ya de forma practica
    [Tags]     Test_dos
    Log    QA: ${name} ${last_name}
    
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Input Text    id=userName    ${name}
    Input Text    id=userEmail    ${email}
    Input Text    id=currentAddress   ${address_1}
    Input Text    id=permanentAddress    ${address_2}
    Execute Javascript    window.scrollTo(0,250)
    Sleep    2
    Click Button    id=submit
    Sleep    5
    Close Browser

*** Keywords ***