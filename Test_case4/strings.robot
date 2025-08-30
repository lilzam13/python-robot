*** Settings ***
Documentation    Library String
Library    SeleniumLibrary
Library    String
Resource   ../keywords/keyword_13.robot


Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/text-box
${browser} =    chrome


*** Test Cases ***
String Convertir texto a Mayuscula
    [Documentation]    Texto en Mayuscula
    [Tags]    text_mayus
    ${nom}=    F_pedir_valor    Dame tu nombre
    ${nom_mayus}=    Convert To Upper Case     ${nom}

    Log To Console    ${nom}
    Log To Console    ${nom_mayus}

String Convertir texto a Minuscula
    [Documentation]    Texto en Minuscula
    [Tags]    text_minus
    ${nom}=    F_pedir_valor    Dame tu nombre
    ${nom_minus}=    Convert To Lower Case    ${nom}

    Log To Console    ${nom}
    Log To Console    ${nom_minus}
String substraer
    [Documentation]    Texto Substraer
    [Tags]    text_subs
    ${nom}=    F_pedir_valor    Dame tu nombre
    ${nom_minus}=    Get Substring   ${nom}    0    3

    Log To Console    ${nom}
    Log To Console    ${nom_minus}



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