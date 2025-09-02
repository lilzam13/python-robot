*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Resource   ../keywords/keyword_13.robot

Suite Setup    Start
Suite Teardown    End



*** Variables ***
${url}=    https://demoqa.com/buttons
${browser}=    chrome

${url_api}=    https://reqres.in/

*** Test Cases ***
Api: Metodo get
    [Documentation]    Api test get
    [Tags]    Get
    Create Session    pagina_api    ${url_api}
    ${response}=      GET On Session    pagina_api    url=api/users?page=2
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    ${staus}=    Convert To String     ${response.status_code} 
    Should Be Equal   ${staus}    200

    ${body}=    Convert To String     ${response.content} 
    Should Be Equal   ${body}    tobias.funke@reqres.in 

Api: Metodo Post
    [Documentation]    Api test Post
    [Tags]    Post

    Create Session    pagina_api    ${url_api}
    
    ${body}=    Create Dictionary    name=Carlos    job=Sistemas    id=26
    ${headers}=    Create Dictionary    Content-Type=application/json

    ${response}=   POST On Session    pagina_api    api/users    json=${body}    headers=${headers}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    Should Be Equal As Integers    ${response.status_code}    200

    ${res_body}=    Evaluate    ${response.json()}    modules=requests
    Should Be Equal    ${res_body['job']}    Sistemas

Api: Metodo Get single
    [Documentation]    Api get single por id
    [Tags]    single_get
    Create Session    pagina_api    ${url_api}
    ${response}=      GET On Session    pagina_api    url=api/users/2
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    ${staus}=    Convert To String     ${response.status_code} 
    Should Be Equal   ${staus}    200

    ${body}=    Convert To String     ${response.content} 
    Should Contain Any   ${body}    janet.weaver@reqres.in

Api: Metodo Put
    [Documentation]    Api test Put
    [Tags]    put

    Create Session    api    https://reqres.in    verify=False
    
    ${body}=    Create Dictionary    name=Tony    job=qa    id=4
    ${headers}=    Create Dictionary    Content-Type=application/json

    ${response}=   PUT On Session    api    /api/users/4    json=${body}    headers=${headers}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    Should Be Equal As Integers    ${response.status_code}    200

    ${res_body}=    Evaluate    ${response.json()}    modules=requests
    Should Be Equal    ${res_body['job']}    qa

Api: Metodo Delete
    [Documentation]    Api test delete
    [Tags]    delete

    Create Session    api    https://reqres.in    verify=False
    
    ${body}=    Create Dictionary    name=Tony    job=qa    id=4
    ${headers}=    Create Dictionary    Content-Type=application/json

    ${response}=   Delete Request    api    /api/users/170

    Log To Console    ${response.status_code}
    Should Be Equal As Integers    ${response.status_code}    204



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