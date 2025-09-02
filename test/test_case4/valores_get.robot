*** Settings ***
Documentation    Valores con la funcion Get
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/text-box
${browser} =    chrome


*** Test Cases ***
Demo get text
    [Documentation]    Valores con get text
    [Tags]    text
    ${valor}=    Get Text    //*[@id="app"]/div/div/div/div[2]/h1
    Log To Console    ${valor}
    Should Be Equal    ${valor}    Text Box

Demo get title
    [Documentation]    Valores con get title
    [Tags]    title
    ${valor}=    Get Title
    Log To Console    ${valor}
    Should Be Equal    ${valor}    DEMOQA

Demo get atribute
    [Documentation]    Valores con get atribute
    [Tags]    atribute
    ${valor}=    Get Element Attribute    id=userName    placeholder
    Log To Console    ${valor}
    Should Be Equal    ${valor}    Full Name
    IF    '${valor}' == 'Full Name'
        F_texto    id=userName    Juan
    END
        Log To Console    No se encontro el campo

*** Keywords ***
Start
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be    DEMOQA

End
    Sleep    2
    Close Browser   