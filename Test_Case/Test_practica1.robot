*** Settings ***
Documentation    Proyecto de pagos 2021
Library    SeleniumLibrary

*** Variables ***
${name} =    Pedro
${last_name} =    Lopez
${url} =    https://petstore.octoperf.com/actions/Account.action?newAccountForm=
${browser} =    chrome

*** Test Cases ***
Test Case: Practica 1 Utilizar funciones Robot FW
    [Documentation]    Usar las funciones e interactuar con los elementos
    [Tags]     Practica 1
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    JPetStore Demo

    #Validando un elemento en la pagina
    Wait Until Element Contains     //h3[normalize-space()='User Information']   User Information
    Wait Until Element Contains     //h3[normalize-space()='Account Information']   Account Information
    Wait Until Element Contains     //h3[normalize-space()='Profile Information']   Profile Information
    #Wait Until Location Does Not Contain    //h3[normalize-space()='Informacion del perfil']
    Wait Until Page Contains Element    //*[@id="CTA"]
    #Wait Until Page Does Not Contain Element    //*[@id="CTAta"]
    Wait Until Element Is Visible    name=username

    Input Text    name=username    qatest
    Input Text    name=password    testingtest
    Input Text    name=repeatedPassword    testingtest

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

    Element Should Be Enabled   //select[@name='account.languagePreference'] 
    Select From List By Value    //select[@name='account.languagePreference']    english
    Select From List By Value    //select[@name='account.favouriteCategoryId']    DOGS
    Execute Javascript    window.scrollTo(0,100)

    Select Checkbox    //input[@name='account.listOption']
    Select Checkbox    //input[@name='account.bannerOption']
    Click Button    //input[@name='newAccount']
    Sleep    2
    Close Browser


Test Case Practica con validaciones
    [Documentation]    Validaciones en los campos
    [Tags]     test_vali
    Log    QA: ${name} ${last_name}
    Open Browser    https://www.instagram.com/accounts/emailsignup/    chrome   
    Maximize Browser Window
    Title should be    Sign up • Instagram
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50

    Input Text    emailOrPhone    Liliana
    Set Focus To Element    password
    Wait Until Page Contains    Enter a valid email address.
    Clear Element Text    emailOrPhone
    Press Keys       emailOrPhone    CONTROL+a+BACKSPACE
    
    Input Text    password    t14
    Set Focus To Element    fullName
    Wait Until Page Contains    Create a password that is at least 6 characters in length.
    Click Element    password
    Press Keys    password    CONTROL+a+BACKSPACE
    
    Input Text    emailOrPhone    31
    Set Focus To Element    password
    Wait Until Page Contains    Looks like your phone number may be incorrect. Please try entering your full number, including the country code.
    
    Clear Element Text    password
    Input Text    password    1111
    Set Focus To Element    fullName
    Wait Until Page Contains    This password is too easy to guess. Please create a new one.

    Sleep    2
    Close Browser

*** Keywords ***