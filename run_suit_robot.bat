@echo off

echo ============================
echo Running tests with Robot
echo ============================

rmdir /s /q reports\allure-results 2>nul
mkdir reports\allure-results

call venv\Scripts\activate
cd "C:\Users\lilia\Desktop\python-robot\test"

robot --listener allure_robotframework:../reports/allure-results --outputdir ../reports/allure-results ./practica_test2.robot

echo Generando reporte Allure...
allure serve ../reports/allure-results

pause