*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Library    Dialogs
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/buttons
${browser} =    chrome


*** Test Cases ***
Test Case: libreria builtln
    [Tags]    concate
    ${name}    Set Variable    Juan
    ${last_name}    Set Variable    Perez
    ${full_name}    Catenate   ${name}    ${last_name}
    ${full_name1}    Catenate    SEPARATOR=--    ${name}    ${last_name} 
    ${ful_ful}    Catenate    SEPARATOR=--    ${full_name1}    Chavez 
    Log To Console    ${full_name}
    Log To Console    ${full_name1}
    Log To Console    ${ful_ful}   


Test Case: Repetir keyword
    [Tags]    repetir
    Repeat Keyword    10 times    Bienvenido
    Repeat Keyword    1 seconds    Bienvenido
    
Comprar elementos iguales
    [Documentation]    Validar igualdad
    [Tags]    igual
    ${a}=    Set Variable    4
    ${b}=    Set Variable    2
    #Should Be Equal    ${a}    ${b}
    IF    ${a} == ${b}
        Log To Console    Son iguales
    ELSE
        Log To Console    Son diferentes
    END
Comparar elementos iguales as integer
    [Documentation]    Validar igualdad integer
    [Tags]    integer
    ${a}=    Set Variable    4
    ${b}=    Set Variable    2
    Should Be Equal As Integers    ${a}    10
Comparar elementos iguales as String
    [Documentation]    Validar igualdad string
    [Tags]    string
    ${name}=    Set Variable    Pedro
    Should Be Equal As Strings    ${name}   Pedro

Comparar elementos contain
    [Documentation]    Validar contain
    [Tags]    contain
    ${name}=    Set Variable    Pedro
    Should Contain    ${name}    dro

Comparar elementos true
    [Documentation]    Validar true
    [Tags]    true
    ${a}=    Set Variable    20
    Should Be True    ${a} > 15

Comparar elementos empty
    [Documentation]    Validar empty
    [Tags]    empty
    ${a}=    Set Variable    
    Should Be Empty    ${a}

Comparar elementos not Equal
    [Documentation]    Validar not Equal
    [Tags]    not_equal
    ${a}=    Set Variable    20
    ${name}=    Set Variable    liliana

    Should Not Be Equal    ${a}    15
    Should Not Be Equal As Strings    ${name}    Iliana
    Should Not Be Empty    ${name}

 Comparar should be equal if
    [Documentation]    Validar con funcion if
    [Tags]    if

    ${a}=    Set Variable    21

    ${flag}=     Run Keyword And Return Status    Should Be Equal    ${a}    20
    Log To Console    ${flag}
    IF    ${flag} == True
        Log To Console    A es igual a 20
        Dato uno
    ELSE
        Log To Console    A es NO igual a 20
        Dato dos
    END

 Comparar should be equal else if
    [Documentation]    Validar con funcion else if
    [Tags]    else_if
    ${name}=    Get Value From User    Ingresa el nombre
    IF    '${name}' == 'Rodrigo'
        Log To Console    Benvenido ${name}
        Dato uno
    ELSE IF    '${name}' == 'Juan'
        Log To Console    Benvenido ${name}
        Dato dos
    ELSE IF    '${name}' == 'Pedro'
        Log To Console    Benvenido ${name}
        Dato tres
    ELSE
        Log To Console    El usuario no existe
    END

 Comparar run keywords if
    [Documentation]    Validar con keywords if
    [Tags]    key_if

    ${name}=    Set Variable    Miguel
    Run Keyword If    '${name}' == 'Miguel'    Bienvenido    ELSE    Dato uno

Comparar run keywords if
    [Documentation]    Validar con keywords if
    [Tags]    key_run

    ${name}=    Set Variable    Liliana
    Run Keyword If    '${name}' == 'Miguel'    Bienvenido    ELSE IF    '${name}' == 'Pedro'    Dato dos    ELSE    Dato tres

*** Keywords ***
Start
    [Documentation]
    [Tags]
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20 

End
    Sleep    0
    Close Browser 
Bienvenido
    Log To Console    Bienvenido a Robot Framework
Dato uno
    Log To Console    Este dato es el uno
Dato dos
    Log To Console    Este dato es el dos
Dato tres
    Log To Console    No te conzco