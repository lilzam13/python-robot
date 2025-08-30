*** Settings ***
Documentation    Upload file
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End


*** Variables ***
${url} =    https://demoqa.com/automation-practice-form#google_vignette
${browser} =    chrome


*** Test Cases ***
Test Case: drag and drop
    F_scroll    0    400
    Choose File    id=uploadPicture    C:/Users/lilia/Desktop/python-robot/Test_Case/files/photo.jpg
    F_screen_element    id=uploadPicture    file

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