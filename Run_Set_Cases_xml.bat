echo. ######################### TEST PATH #############################
echo. C:\Users\lilia\Desktop\python-selenium\tests
cd .\tests
python -m pytest test_fecha.py --junit-xml=../results/results.xml
pause