*** Settings ***
Documentation    Practica 1 Intermedio
Library    SeleniumLibrary
Resource   ../keywords/keyword_13.robot

*** Test Cases ***
Test Case: Practica 1 del Nivel intermedio
    Cargar el navegador
    Validar labels   
    Capturar informacion del usuario    Lilzam    testing123    testing123
    Capturar informacion general de la cuenta    Liliana    Zamora    liliana@gmail.com    5553330693
    Capturar direccion de la cuenta    Bugambilias 342    Caxitlan    Zapopan    Jalisco    45367    Mexico
    Selecionar preferencias    english    DOGS
    Afirmar configuracion adicional
    Finalizar ejecucion



    