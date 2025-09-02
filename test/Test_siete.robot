*** Settings ***
Documentation    Proyecto de pagos 2021
Library    SeleniumLibrary

*** Variables ***
${name} =    Pedro
${last_name} =    Lopez
${url} =    https://petstore.octoperf.com/actions/Account.action?newAccountForm=
${browser} =    chrome

*** Test Cases ***
Test Case: Practica 1 Boostrap modals
    [Documentation]    Boostap modals to automate
    [Tags]     modal
    Log    QA: ${name} ${last_name}
    Open Browser    https://demoqa.com/modal-dialogs    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .4s
    Set Selenium Implicit Wait    50
    Title Should Be    DEMOQA

    Click Button    //button[@id='showSmallModal']
    Wait Until Element Is Visible    //button[@id='closeSmallModal']
    Click Button    //button[@id='closeSmallModal']

    Click Button    //button[@id='showLargeModal']
    Wait Until Element Is Visible    //button[@id='closeLargeModal']
    Click Button    //button[@id='closeLargeModal']

    Close Browser


Test Case Practica con las alertas
    [Documentation]    Interaccion con las alertas
    [Tags]     alerta
    Log    QA: ${name} ${last_name}
    Open Browser    https://demoqa.com/alerts    chrome   
    Maximize Browser Window
    Title should be    DEMOQA
    Set Selenium Speed    .4s
    Set Selenium Implicit Wait    10
    
    Click Button    //button[@id='alertButton']
    Handle Alert    accept

    Click Button    //button[@id='confirmButton']
    Handle Alert    accept

    Click Button    //button[@id='confirmButton']
    Handle Alert    dismiss

    Click Button    //button[@id='alertButton']
    Alert Should Be Present    You clicked a button

    Sleep    2
    Close Browser

Test Case Practica con Frames
    [Documentation]    Interaccion con los frames
    [Tags]     frames
    Log    QA: ${name} ${last_name}
    Open Browser    https://demoqa.com/nestedframes    chrome   
    Maximize Browser Window
    Title should be    DEMOQA
    Set Selenium Speed    .4s
    Set Selenium Implicit Wait    20
    
    Select Frame    id=frame1
    Execute Javascript    window.scrollTo(0,200)
    Wait Until Element Is Visible   xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/div[2]/iframe
    Unselect Frame
    Sleep    2
    Close Browser

*** Keywords ***