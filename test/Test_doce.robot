*** Settings ***
Documentation    KEYWORDS
Library    SeleniumLibrary

*** Variables ***
${name} =    Pedro
${last_name} =    Lopez
${url} =    https://petstore.octoperf.com/actions/Account.action?newAccountForm=
${browser} =    chrome

*** Test Cases ***
Test Case: Practica con Keywords
    Cargando Global

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
    Input Text    name=username    qatest
    Input Text    name=password    testingtest
    Input Text    name=repeatedPassword    testingtest

Capturar informacion del cliente
    Element Should Be Visible   //input[@name='account.firstName']
    Input Text    //input[@name='account.firstName']    ${name}
    Input Text    //input[@name='account.lastName']    ${last_name}
    Input Text    name=account.email    qatest@gmail.com
    Input Text    name=account.phone    3312000693
    Input Text    name=account.address1    Calle Francisco I Madero 870
    Input Text    name=account.address2    Nicolas Bravo
    Input Text    name=account.city    San Miguel de Allende
    Input Text    name=account.state    Guanajuato
    Input Text    name=account.zip    36000
    Input Text    name=account.country    Mexico

Selecionar preferencias
    Element Should Be Enabled   //select[@name='account.languagePreference'] 
    Select From List By Value    //select[@name='account.languagePreference']    english
    Select From List By Value    //select[@name='account.favouriteCategoryId']    DOGS
    Execute Javascript    window.scrollTo(0,100)

Afirmar configuracion adicional
    Select Checkbox    //input[@name='account.listOption']
    Select Checkbox    //input[@name='account.bannerOption']
    Click Button    //input[@name='newAccount']

Finalizar ejecucion
    Sleep    2
    Close Browser

Cargando Global
    Cargar el navegador
    Validar labels   
    Validar username
    Capturar informacion del usuario
    Capturar informacion del cliente
    Selecionar preferencias
    Afirmar configuracion adicional
    Finalizar ejecucion