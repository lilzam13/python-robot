# -*- coding: utf-8 -*-
from behave import given, when, then # type: ignore
import unittest
import sys
import os
import time
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from src.functions.Functions import Functions as Selenium
from src.main import Inicializar
from selenium.webdriver.common.keys import Keys

@given("Abrir la aplicacion")
def step_abrir_navegador(context):
    Selenium.abrir_navegador(context)
    Selenium.page_has_loaded(context)

@then("Cerrar la aplicacion")
def cerrar_navegador(context):
    Selenium.tearDown(context)

@given("Abrir el navegador '{navegador}' con la url '{url}'")
def abrir_navegador(context, navegador, url):
    Selenium.abrir_navegador(context, navegador=navegador, URL=url)

@given("Cargar el DOM de la aplicacion: '{file}'")
def abrir_json(context, file):
    Selenium.get_json_file(context, file)
    
@given("En el input '{entity}' escribo '{text}'")
def step_input_type(context, entity, text):
    Selenium.esperar_elemento(context, entity)
    Selenium.send_key_text(context, entity, text)

@given("En el dropdown '{entity}' seleccionar '{text}'")
def step_select_text_type(context, entity, text):
    Selenium.esperar_elemento(context, entity)
    Selenium.select_by_text(context, entity, text )

@given("En el combobox '{entity}' seleccionar '{value}'")
def step_select_value_type(context, entity, value):
    Selenium.esperar_elemento(context, entity)
    Selenium.select_by_value(context, entity, value )

@given("Hacer click en la opcion: '{entity}'")
def step_click_type(context, entity):
    Selenium.js_click(context, entity)

@given("Hacer scroll hacia el elemento: '{Text}'")
def step_scroll_text_type(context, Text):
    Selenium.scroll_to(context, "Text", MyTextElement=Text)

@given("Hago click en el link: '{Text}'")
def step_link_text_type(context, Text):
    Selenium.get_elements(context, "Text", MyTextElement=Text).click()

@given("Esperar '{tiempo}' segundos")
def step_esperar(context, tiempo):
    tiempo = int(tiempo)
    Selenium.esperar(context, timeLoad=tiempo)

@given("Espero que el campo '{element_name}' sea visible")
def step_wait_for_element(context, element_name):
    Selenium.esperar_elemento(context, element_name)

@given("Espero que la pagina cargue")
def step_load_page(context):
    Selenium.page_has_loaded(context)


@given("Tomar captura para el reporte Allure: '{Description}'")
def step_capture_allure(context, Description):
    Selenium.captura(context, Description) 

@given("Tomar captura")
def step_capture(context):
    Selenium.captura_pantalla_behave(context) 