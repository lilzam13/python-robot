*** Settings ***
Documentation    Funciones clicks
Library    SeleniumLibrary

*** Variables ***
${name} =    Pedro
${last_name} =    Lopez
${url} =    https://www.w3schools.com/bootstrap/exercise_bs3.asp?filename=exercise_bs3_alerts1
${browser} =    chrome

*** Test Cases ***
Test Case: Practica 1 Demo con las funciones clicks
    [Documentation]    Links href, button and elements
    [Tags]     links
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    Exercise v3.0
    
    Click Link    //*[@id="exercisemenu"]/div[4]/div[3]/div[2]/a[1]
    Input Text    //*[@id="assignmentcontainer"]/input    alert alert-success
    Click Button    //button[@id="answerbutton"]
    Click Element    //span[@id="correctnextbtn"]

    Sleep    2
    Close Browser
Test Case: Practica 1 Demo con las funciones clicks
    [Documentation]    Links at Coordinates
    [Tags]     coordinates
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    Exercise v3.0
    
    Click Element At Coordinates    //*[@id="userprogress"]/div/a[2]    100    0

    Sleep    2
    Close Browser

Test Case: Practica 1 Demo con las funciones clicks
    [Documentation]    Links images
    [Tags]     images
    Log    QA: ${name} ${last_name}
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window
    Set Selenium Speed    .1s
    Set Selenium Implicit Wait    50
    Title Should Be    Exercise v3.0
    
    Click Element    xpath=//*[@id="exercisemenu"]/div[4]/div[2]/div[1]
    Click Link    xpath=//*[@id="exercisemenu"]/div[4]/div[2]/div[2]/a[5]
    Switch Window    new
    Title Should Be    Bootstrap Images
    Execute Javascript    window.scrollTo(0,1500)
    Click Image    xpath=//img[@alt='Lights']

    Sleep    2
    Close Browser

*** Keywords ***