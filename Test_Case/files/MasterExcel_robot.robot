*** Settings ***
Documentation    Creando Keywords desde Python
Library    SeleniumLibrary
Library    MasterExcel.py
Resource   ..\..\keywords\Functions.robot

*** Variables ***
${name} =    Pedro
${last_name} =    Lopez
${url} =    https://petstore.octoperf.com/actions/Account.action?newAccountForm=
${browser} =    chrome


*** Keywords ***
Numero de filas
    [Documentation]    Leyendo el numero de filas
    [Arguments]    ${hoja}
    ${res} =    number_rows    ${hoja} 
    RETURN    ${res} 

Obtener valor columna
    [Documentation]    Obteniendo el valor de la columna
    [Arguments]    ${hoja}    ${fila}    ${columna}
    ${res} =    data_columns    ${hoja}    ${fila}    ${columna}
    RETURN    ${res} 

