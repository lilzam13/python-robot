*** Settings ***

Documentation    Practica cinco
Library    SeleniumLibrary

*** Variables ***
${name} =    Liliana
${last_name} =    Zamora

${email} =    rodrigo@gmail.com
${address_1} =    Paseo del aire 242
${address_2} =    Contitucion 26
${url} =    https://demoqa.com/text-box
${browser} =    chrome
${t} =    .8
*** Test Cases ***

Test case Variables de tiempo: set selenium speed
    [Documentation]    Validando la funcion de tiempo para todas las funciones
    [Tags]     Test_6.1
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Title should be    DEMOQA

    #definir tiempo para un bloque de lines de ejecucion
    Set Selenium Speed    .1s
    Input Text    id=userName     ${name}
    Input Text    id=userEmail    ${email}
    ${address_1_mt} =    set variable   id=currentAddress
    Element attribute value should be    ${address_1_mt}    placeholder    Current Address
    Input Text    id=currentAddress   ${address_1}

    Input Text    id=permanentAddress    ${address_2}
    Execute Javascript    window.scrollTo(0,300)

    ${sumit_btn}=    set variable   id=submit
    Element should be visible    ${sumit_btn}
    Element should be enabled    ${sumit_btn}    
    Click Button    id=submit
    Close Browser

Test case Variables de tiempo: set selenium time out
    [Documentation]    Funcion para la espera de los elementos.
    [Tags]     Test_6.2
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Title should be    DEMOQA
    
    #Por default espera 5 segundos antes de que use la funcion timeout
    ${time} =    Get Selenium Timeout
    Log To Console    ${time}

    #Tiene hasta 15 segundos para esperar un elemento, en caso que lo encuentre no espera los 15s
    Set Selenium Timeout    15
    Input Text    id=userName     ${name}
    Input Text    id=userEmail    ${email}
    ${address_1_mt} =    set variable   id=currentAddress
    Element attribute value should be    ${address_1_mt}    placeholder    Current Address
    Input Text    id=currentAddress   ${address_1}
    Input Text    id=permanentAddress    ${address_2}
    Execute Javascript    window.scrollTo(0,300)

    ${sumit_btn}=    set variable   id=submit
    Element should be visible    ${sumit_btn}
    Element should be enabled    ${sumit_btn}    
    Click Button    id=submit
    Close Browser

Test case Variables de tiempo: Implicit wait
    [Documentation]    Funcion para la espera de los elementos, con implicit wait.
    [Tags]     Test_6.3
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Title should be    DEMOQA

    #Por default espera 0 segundos
    ${time} =    Get Selenium Implicit Wait
    Log To Console    ${time}
    #Tiene hasta 50 segundos para esperar un elemento
    Set Selenium Implicit Wait    50
    Input Text    id=userName     ${name}
    Input Text    id=userEmail    ${email}
    ${address_1_mt} =    set variable   id=currentAddress
    Element attribute value should be    ${address_1_mt}    placeholder    Current Address
    Input Text    id=currentAddress   ${address_1}
    Input Text    id=permanentAddress    ${address_2}
    Execute Javascript    window.scrollTo(0,300)

    ${sumit_btn}=    set variable   id=submit
    Element should be visible    ${sumit_btn}
    Element should be enabled    ${sumit_btn}    
    Click Button    id=submit

    ${time} =    Get Selenium Implicit Wait
    Log To Console    ${time} 
    Close Browser


*** Keywords ***