*** Settings ***
Documentation    Drag and Drop
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/droppable
${browser} =    chrome


*** Test Cases ***
Test Case: drag and drop
    [Documentation]    Validar funcion drag and drop
    [Tags]
    Drag And Drop    id=draggable    id=droppable

Test Case: Drag and drop by offset
    [Documentation]    Validar otra funcion drag and drop
    [Tags]    dragcordenada
    Execute Javascript    window.scroll(0,200)
    Drag And Drop By Offset    id=draggable    50    50
    F_screenshot    $name_img
    

*** Keywords ***
Start
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    20
    Title Should Be    DEMOQA

End
    Sleep    2
    Close Browser   