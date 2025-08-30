*** Settings ***
Documentation    Proyecto de pagos 2021
Library    SeleniumLibrary

*** Variables ***
${name} =    Liliana
${last_name} =    Zamora
${scd_lastname} =    Cardenas


*** Test Cases ***

Demo Uno
    [Documentation]    Variables strings
    [Tags]     test_uno
    Log    QA: ${name} ${last_name} ${scd_lastname}

Demo Dos
    [Documentation]    Variables Locales
    [Tags]     test_uno
    ${direccion} =    set variable    Calle paseo del Aire 241
    Log To Console    ${direccion}

Demo Tres
    [Documentation]    Variables operaciones
    [Tags]     test_uno
    ${a} =    Set Variable    10
    ${b} =    Set Variable    21
    ${c} =    Evaluate    ${a}+${b}        
    Log To Console    ${c}

*** Keywords ***