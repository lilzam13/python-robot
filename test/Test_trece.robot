*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary

*** Variables ***
${name} =    Pedro
${last_name} =    Lopez
${url} =    https://petstore.octoperf.com/actions/Account.action?newAccountForm=
${browser} =    chrome

*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    Cargar el navegador
    Validar labels   
    Validar username
    Capturar informacion del usuario    Lilzam    testing123    testing123
    Capturar informacion general de la cuenta    Liliana    Zamora    liliana@gmail.com    5553330693
    Capturar direccion de la cuenta    Bugambilias 342    Caxitlan    Zapopan    Jalisco    45367    Mexico
    Selecionar preferencias    english    DOGS
    Afirmar configuracion adicional
    Finalizar ejecucion

*** Keywords ***

Cargar el navegador
    [Documentation]    Usar las funciones e interactuar con los elementos
    [Tags]     Practica 1
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    JPetStore Demo

Validar labels
    Wait Until Element Contains     //h3[normalize-space()='User Information']   User Information
    Wait Until Element Contains     //h3[normalize-space()='Account Information']   Account Information
    Wait Until Element Contains     //h3[normalize-space()='Profile Information']   Profile Information
    Wait Until Page Contains Element    //*[@id="CTA"]

 Validar username
    Wait Until Element Is Visible    name=username
    Wait Until Element Is Enabled    name=username

Capturar informacion del usuario
    [Arguments]    ${user_name}    ${user_pass}    ${user_repete_pass}
    Input Text    name=username    ${user_name}
    Input Text    name=password    ${user_pass}
    Input Text    name=repeatedPassword    ${user_repete_pass}

Capturar informacion general de la cuenta
    [Arguments]    ${ac_name}    ${ac_lastname}    ${ac_email}    ${ac_phone}    
    Element Should Be Visible   //input[@name='account.firstName']
    Input Text    //input[@name='account.firstName']    ${ac_name}
    Input Text    //input[@name='account.lastName']    ${ac_lastname}
    Input Text    name=account.email    qatest@gmail.com    ${ac_email}
    Input Text    name=account.phone    3312000693    ${ac_phone}
Capturar direccion de la cuenta
    [Arguments]    ${ac_street1}    ${ac_street2}    ${ac_city}    ${ac_state}    ${ac_zip}    ${ac_country}
    Input Text    name=account.address1    ${ac_street1}
    Input Text    name=account.address2    ${ac_street2}
    Input Text    name=account.city    ${ac_city}
    Input Text    name=account.state    ${ac_state}
    Input Text    name=account.zip    ${ac_zip}
    Input Text    name=account.country    ${ac_country}

Selecionar preferencias
    [Arguments]    ${ac_language}    ${ac_category}
    Element Should Be Enabled   //select[@name='account.languagePreference'] 
    Select From List By Value    //select[@name='account.languagePreference']    ${ac_language}
    Select From List By Value    //select[@name='account.favouriteCategoryId']    ${ac_category}
    Execute Javascript    window.scrollTo(0,100)

Afirmar configuracion adicional
    Select Checkbox    //input[@name='account.listOption']
    Select Checkbox    //input[@name='account.bannerOption']
    Click Button    //input[@name='newAccount']

Finalizar ejecucion
    Sleep    2
    Close Browser

    