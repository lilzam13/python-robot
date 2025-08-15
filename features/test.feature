# -*- coding: utf-8 -*-
Feature: Funciones basicas de Selenium con BDD
    @login
    Scenario: Validar el Happy path del login
        Given Abrir la aplicacion
        And Cargar el DOM de la aplicacion: 'facebook_registro'
        And En el input 'Firstname' escribo 'Liliana'
        And En el input 'Lastname' escribo 'Zamora'
        And En el combobox 'Day' seleccionar '13'
        And En el dropdown 'Month' seleccionar 'Jan'
        And En el dropdown 'Year' seleccionar '1994'
        And Hacer click en la opcion: 'Sex_female'
        And En el input 'Email' escribo 'liliazam113@gmail.com'
        And En el input 'Password' escribo 'Testingtest'
        And Esperar '3' segundos
        And Hacer scroll hacia el elemento: 'Careers'
        And Hago click en el link: 'Careers'
        And Tomar captura para el reporte Allure: 'login_happy_path'
        Then Cerrar la aplicacion
   
   
