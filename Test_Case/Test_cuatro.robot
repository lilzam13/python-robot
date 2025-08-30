*** Settings ***
Documentation    Practica cuatro
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

Test case Validaciones en los elementos
    [Documentation]    Validando que el campo este visible
    [Tags]     Test_Tres
    Log    QA: ${name} ${last_name}
    
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Title should be    DEMOQA
    Input Text    id=userName     ${name}
    Input Text    id=userEmail    ${email}
    Input Text    id=currentAddress   ${address_1}
    Input Text    id=permanentAddress    ${address_2}
    Execute Javascript    window.scrollTo(0,300)

    #Validar que el elemento este visible y habilitado
    ${sumit_btn}=    set variable   id=submit
    Element should be visible    ${sumit_btn}
    Element should be enabled    ${sumit_btn}    
    Click Button    id=submit
    Close Browser

Test case validacion por negacion
    [Documentation]    Validando el campo por el atributo que no existe
    [Tags]     Test_Dos
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Title should be    DEMOQA
    Input Text    id=userName     ${name}
    Input Text    id=userEmail    ${email}
    ${address_1_mt} =    set variable   id=currentAddress
    Element attribute value should be    ${address_1_mt}    placeholder    Current Address
    Input Text    id=currentAddress   ${address_1}
    Sleep    ${t}
    Input Text    id=permanentAddress    ${address_2}
    Execute Javascript    window.scrollTo(0,400)
    Sleep    ${t}
    ${sumit_btn}=    set variable   id=submit
    
    #Validando por el atributo que no existe
    Element Should Not Be Visible    ${sumit_btn}
    Element should be enabled    ${sumit_btn}    
    Click Button    id=submit
    Close Browser

Test case Validando elementos por atributo
    [Documentation]    Validando el campo por el atributo
    [Tags]     Test_Uno
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    
    Title should be    DEMOQA
    Input Text    id=userName     ${name}
    Input Text    id=userEmail    ${email}

    #validando por el atributo
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

*** Keywords ***