*** Settings ***

Documentation    Practica Siete
Library    SeleniumLibrary

*** Variables ***
${name} =    Liliana
${last_name} =    Zamora

${email} =    rodrigo@gmail.com
${address_1} =    Paseo del aire 242
${address_2} =    Contitucion 26
${url} =    https://www.facebook.com/r.php?entry_point=login&locale=es_LA
${browser} =    chrome
${t} =    .5
*** Test Cases ***

Test case Radio buttons
    [Documentation]    Poder seleccionar con radio button
    [Tags]     Test_Siete
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Title should be    Registrarte en Facebook
    Sleep    ${t}
    Execute Javascript    window.scrollTo(0,200)
    ${site_ckt}=    set variable   id=sex
    Element Should Be Visible    ${site_ckt}
    Select Radio Button    sex    1
    Select Radio Button    sex    2
    Select Radio Button    sex    -1
    Sleep    ${t}
    Close Browser

Test case checkbox
    [Documentation]    Poder seleccionar un checkbox
    [Tags]     Test_7.0
    Log    QA: ${name} ${last_name}

    Open Browser    https://app.privacy.com/login    chrome
    Maximize Browser Window
    Title should be    Registrarte en Facebook
    Sleep    ${t}
    Click Button    xpath=/html/body/div[1]/main/div/div[1]/div/div/label/div/input
    Sleep    ${t}
    Close Browser

Test case Dropdowns
    [Documentation]    Poder seleccionar una opcion de un dropdown
    [Tags]     Test_7.1
    Log    QA: ${name} ${last_name}

    Open Browser     https://www.facebook.com/r.php?entry_point=login&locale=es_LA    chrome
    Maximize Browser Window
    Title should be    Registrarte en Facebook
    Sleep    ${t}
    Element Should Be Visible    id=day 
    Select From List By Label    id=day    13
    Element Should Be Enabled    id=month
    Select From List By Value    id=month    1
    Select From List By Index    id=year    31
    Sleep    ${t}
    Close Browser


*** Keywords ***