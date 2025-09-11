*** Settings ***
Documentation    Validando un login
Library    SeleniumLibrary
Resource    ../keywords/Functions.robot

*** Variables ***
${name} =    Pedro
${last_name} =    Lopez
${url} =    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =    chrome

*** Test Cases ***
Test Case 1: Login Incorrecto
    [Documentation]    Validando user and password incorrecto
    [Tags]     wrong_credentials
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    
    ${user}=    Set Variable    lilzam
    ${pass}=    Set Variable    wrongpass   

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']

    Wait Until Element Is Visible    xpath=//div[@class='oxd-alert-content oxd-alert-content--error']
    Wait Until Page Contains    Invalid credentials
    Log To Console    Primer validacion encontrada

    Sleep    2
    Close Browser

Test Case 2: Login Validando user OK and password incorrect
    [Documentation]    Validando user OK and password incorrect
    [Tags]     wrong_credentials
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    
    ${user}=    Set Variable    Admin
    ${pass}=    Set Variable    wrongpass   

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']

    Wait Until Element Is Visible    xpath=//div[@class='oxd-alert-content oxd-alert-content--error']
    Wait Until Page Contains    Invalid credentials
    Log To Console    Secunda validacion encontrada

    Sleep    2
    Close Browser

Test Case 3: Login Validando user wrong and password correct
    [Documentation]    Validando user wrong and password correct
    [Tags]     wrong_credentials
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    
    ${user}=    Set Variable    Adminas
    ${pass}=    Set Variable    admin123   

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']

    Wait Until Element Is Visible    xpath=//div[@class='oxd-alert-content oxd-alert-content--error']
    Wait Until Page Contains    Invalid credentials
    Log To Console    Tercera validacion encontrada

    Sleep    2
    Close Browser
Test Case 4: Login Validando user can no be empty
    [Documentation]    Validando user can no be empty
    [Tags]     field_empty
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    
    ${user}=    Set Variable    
    ${pass}=    Set Variable    admin123   

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']

    Wait Until Element Is Visible    xpath=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']
    Wait Until Page Contains    Required
    Log To Console    Cuarta validacion encontrada

    Sleep    2
    Close Browser
Test Case 5: Login Validando password can no be empty
    [Documentation]    Validando password can no be empty
    [Tags]     field_empty
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    

    ${user}=    Set Variable    Admin
    ${pass}=    Set Variable       

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']

    Wait Until Element Is Visible    xpath=//span[@class='oxd-text oxd-text--span oxd-input-field-error-message oxd-input-group__message']
    Wait Until Page Contains    Required
    Log To Console    Quinta validacion encontrada

    Sleep    2
    Close Browser

Test Case 6: Login Validando password and user can no be empty
    [Documentation]    Validando password and user can no be empty
    [Tags]     field_empty
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    
    ${user}=    Set Variable    
    ${pass}=    Set Variable       

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']

    Wait Until Element Is Visible    xpath=//div[@class='orangehrm-login-slot-wrapper']//div[1]//div[1]//span[1]
    Wait Until Page Contains    Required
    Wait Until Element Is Visible    xpath=//div[@class='orangehrm-login-form']//div[2]//div[1]//span[1]
    Wait Until Page Contains    Required
    Log To Console    Sexta validacion encontrada

    Sleep    2
    Close Browser
Test Case 7: Login Validando special characters in user
    [Documentation]    Validando special characters in user
    [Tags]     special_characters
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    
    ${user}=    Set Variable    <h1>hola</h1>    
    ${pass}=    Set Variable    admin123       

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']

    Wait Until Element Is Visible    xpath=//div[@class='oxd-alert-content oxd-alert-content--error']
    Wait Until Page Contains    Invalid credentials
    Log To Console    Septima validacion encontrada

    Sleep    2
    Close Browser

Test Case 8: Login Validando special characters in password
    [Documentation]    Validando special characters in password
    [Tags]     special_characters
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    
    ${user}=    Set Variable    Admin        
    ${pass}=    Set Variable    <h1>hola</h1>    

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']

    Wait Until Element Is Visible    xpath=//div[@class='oxd-alert-content oxd-alert-content--error']
    Wait Until Page Contains    Invalid credentials
    Log To Console    Septima validacion encontrada

    Sleep    2
    Close Browser

Test Case 9: Login Right credentials
    [Documentation]    Right credentials
    [Tags]     log_happy
    Log    QA: ${name} ${last_name}
    Abrir Navegador Seguro    ${url1}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    OrangeHRM
    
    ${user}=    Set Variable    Admin    
    ${pass}=    Set Variable    admin123       

    Input Text    name=username    ${user}
    Input Text    name=password    ${pass}
    Click Button    xpath=//button[normalize-space()='Login']
    Sleep    5
    F_screenshot_allure    log_happy.png
    Wait Until Element Contains    xpath=//h6[normalize-space()='Dashboard']    Dashboard
    Log To Console    Login correcto

    Sleep    2
    Close Browser

*** Keywords ***