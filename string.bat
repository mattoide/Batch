@ECHO OFF

set str=politic mama
echo %str%
set str=%str:~1,900%
echo.%str%


  
set /a n = 0
SET prof=ahah
:SymLoop
if defined arr[%n%] (
    call echo %%arr[%n%]%%
    set /a n=n+1
SET prof=!arr[%n%]:~1,900!


    GOTO :SymLoop
)

ECHO %prof%