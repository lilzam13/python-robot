@echo off
title Ejecutando pruebas con Behave

echo ====================================
echo  Running tests with XML + Behave
echo ====================================

call venv\Scripts\activate.bat
behave --format allure_behave.formatter:AllureFormatter --tags=login --outfile "%~dp0\reports\allure_results" --format pretty

echo ====================================
echo  Ejecucion de pruebas finalizada
echo ====================================

pause