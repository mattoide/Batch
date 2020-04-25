@echo off


FOR /F %%f IN ('hostname') DO (
SET filename=%%f
)

IF EXIST %filename%.txt (

    ECHO ^<===== Updated at %DATE% - %TIME% =====^> >> %filename%.txt 
    ECHO. >> %filename%.txt

    GOTO getinfo

) ELSE ( 

    ECHO ^<===== Created at  %DATE% - %TIME% =====^>  > %filename%.txt
    ECHO. >> %filename%.txt

    GOTO getinfo
)


:getinfo
  FOR /F "delims=: tokens=2" %%i IN ('netsh wlan show profiles') DO (
      
    SET str=%%i
    
    setlocal enabledelayedexpansion 
    
    SET str=!str:~1,900!
    netsh wlan show profiles name="!str!" key=clear >> %filename%.txt
    
    setlocal disabledelayedexpansion 

 )
 :end