*** Settings ***
Documentation    SetUp and TearDown
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

Suite Setup    Inicio
Suite Teardown    Final

*** Variables ***
${url} =    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser} =    chrome

*** Test Cases ***
Test Case: wrong email
    Validar: Login was unsuccessful
Test Case: email field is required
    Validar: email field is empty 

*** Keywords ***
Inicio
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    nopCommerce demo store. Login

Validar: Login was unsuccessful
    F_texto    name=Email    liliana@gmail.com
    F_texto    name=Password    testing234
    Click Button    xpath=//button[normalize-space()='Log in']
    Wait Until Page Contains    Login was unsuccessful. Please correct the errors and try again.

Validar: email field is empty
    ${email} =    Set Variable              
    ${password} =    Set Variable    testing234    
    F_texto    name=Email    ${email}
    F_texto    name=Password    ${password}    
    Click Button    xpath=//button[normalize-space()='Log in']
    Wait Until Element Is Visible    xpath=//span[@id='Email-error']
    Wait Until Page Contains    Please enter your email

Final
    Sleep    2
    Close Browser    