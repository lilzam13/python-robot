*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
*** Variables ***
${screen_path} =    C:/Users/lilia/Desktop/python-robot/reports/img_robot/

*** Keywords ***
F_texto
    [Arguments]    ${sel}    ${dato}
    Wait Until Element Is Visible    ${sel}    
    Wait Until Element Is Enabled    ${sel}
    Element Should Be Visible    ${sel}
    Clear Element Text    ${sel}
    #Execute Javascript    window.scrollTo(0,20)
    input text    ${sel}    ${dato}
    #Capture Element Screenshot    ${sel}    ${screen_path}${dato}.png
    RETURN    La captura fue correcta
    
F_enter
    [Arguments]    ${sel}
    Wait Until Element Is Visible    ${sel}    
    Wait Until Element Is Enabled    ${sel}
    Element Should Be Visible    ${sel}
    Press Keys    xpath=//*[@id="APjFqb"]    ENTER 

F_screenshot
    [Arguments]    ${name_img}
    Capture Page Screenshot    ${screen_path}${name_img}

F_screen_element
    [Arguments]    ${sel}    ${name_img}
    Wait Until Element Is Visible    ${sel}    
    Wait Until Element Is Enabled    ${sel}
    Element Should Be Visible    ${sel}
    Capture Element Screenshot    ${sel}    ${screen_path}${name_img}

F_scroll
    [Documentation]    Sirve para realizar un scroll en la pagina
    [Arguments]    ${x}    ${y}
    Execute Javascript    window.scrollTo(${x},${y})

F_click_xy
    [Documentation]    Hacer click de acuerdo a cordenadas
    [Arguments]    ${sel}    ${x}    ${y}
    Click Element At Coordinates    ${sel}    ${x}    ${y}

F_pedir_valor
    [Documentation]    Hacer click de acuerdo a cordenadas
    [Arguments]    ${texto}
    ${valor}=    Get Value From User    ${texto}    
    RETURN    ${valor}

   
    