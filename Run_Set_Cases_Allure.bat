@echo off
echo ============================
echo Running tests with Pytest + Allure
echo ============================

REM Activar entorno virtual
call venv\Scripts\activate
cd tests
REM Ejecutar las pruebas y generar resultados para Allure
pytest test_dummy.py --alluredir ..\reports\allure_results
pytest test_fecha.py --alluredir ..\reports\allure_results
pytest test_newstructure.py --alluredir ..\reports\allure_results
pause