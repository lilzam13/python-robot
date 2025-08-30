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
Test case Title page
    [Documentation]    Validando el titulo de la pagina
    [Tags]     Test_Tres
    Log    QA: ${name} ${last_name}
    
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    
    #validar el titulo de la pagina
    Title should be    DEMOQA
    Input Text    id=userName    ${name}
    Input Text    id=userEmail    ${email}
    Input Text    id=currentAddress   ${address_1}
    Input Text    id=permanentAddress    ${address_2}
    Execute Javascript    window.scrollTo(0,200)
    Sleep    2
    Click Button    id=submit
    Close Browser

*** Keywords ***