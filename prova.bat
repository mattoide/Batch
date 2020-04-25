@echo off





  FOR /F "delims=: tokens=2" %%i IN ('netsh wlan show profiles') DO (
    SET str=%%i
        echo %%i
setlocal enabledelayedexpansion 

    SET str=!str:~1,900!       
    echo !str!
    setlocal disabledelayedexpansion 


 )

:we
echo 



