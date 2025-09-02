*** Settings ***
Documentation    Prueba practica Upload file
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/automation-practice-form#google_vignette
${browser} =    chrome


*** Test Cases ***
Test Case: Llenar formulario
    Bloque Uno
    Bloque Dos
    Bloque Tres
    Bloque Cuatro
    Bloque Cinco
    

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

Bloque Uno
    F_texto    id=firstName    Juan
    F_texto    id=lastName    Perez
    F_texto    id=userEmail    juan@gmail.com
    F_scroll    0    200
Bloque Dos
    Click Element    xpath=//*[@id="genterWrapper"]/div[2]/div[1]/label
    F_texto    id=userNumber    5555444432
    Click Element    id=dateOfBirthInput
    Click Element    xpath=//*[@id="dateOfBirth"]/div[2]/div[2]/div/div/div[2]/div[2]/div[3]/div[1]
    F_scroll    0    200
Bloque Tres
    Press Keys   xpath=//*[@id="subjectsContainer"]/div/div[1]    Engli
    Click Element At Coordinates    xpath=//*[@id="subjectsContainer"]/div/div[1]    0    50
    F_scroll    0    400
Bloque Cuatro
    Click Element    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[7]/div[2]/div[1]/label
    Click Element    xpath=/html/body/div[2]/div/div/div/div[2]/div[2]/form/div[7]/div[2]/div[3]/label
    
    Choose File    id=uploadPicture    C:/Users/lilia/Desktop/python-robot/Test_Case/files/photo.jpg
    F_screen_element    id=uploadPicture    file
    F_texto    id=currentAddress    Paseo de la reforma 2000, Cdmx.
    F_scroll    0    600

Bloque Cinco
    Press Keys    xpath=//*[@id="state"]/div/div[1]/div[1]    raj
    f_click_xy    xpath=//*[@id="state"]/div/div[1]/div[1]    0    50
    Press Keys    xpath=//*[@id="city"]/div/div[1]/div[1]    jais
    f_click_xy   xpath=//*[@id="city"]/div/div[1]/div[1]   0    50  
    Click Button    id=submit
    F_screenshot    finaltesting
    

    

    
