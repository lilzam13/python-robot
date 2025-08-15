@echo off
echo ===========================================
echo Generando y abriendo el reporte de Allure...
echo ===========================================

REM Generate report
set "ALLURE_RESULTS=C:\Users\lilia\Desktop\python-selenium\reports\allure_results"
if not exist %allure_results% (
    echo.
    echo ERROR: The allure_results does not exist.
    echo '%allure_results%'
    echo Make sure to run the tests before opening the report.
    echo.
    pause
    exit /b
)
echo Opening the file report '%allure_results%'...
allure serve %allure_results%