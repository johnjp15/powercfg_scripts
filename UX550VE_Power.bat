rem John Park

@echo off
cls
color 1f
echo CHANGE THE MAX PROCESSOR SPEED PERCENTAGE ON BATTERY POWER
echo.

:askplan
set /p plan=Mobile (1) or Underclock (2) power plan: 
if %plan% LSS 1 goto :badplan
if %plan% GTR 2 goto :badplan
echo.

:askpercent
set /p percentage=Max processor speed percentage? [5, 100]: 
if %percentage% LSS 5 goto :badpercent
if %percentage% GTR 100 goto :badpercent

:execute
if %plan% EQU 1 goto :executemobile
if %plan% EQU 2 goto :executeunderclock

:executemobile
call Mobile_maxProcessorSpeed %percentage%
goto :end

:executeunderclock
call Underclock_maxProcessorSpeed %percentage%
goto :end

:badplan
echo No such plan exists.
echo.
goto :askplan

:badpercent
echo Bad percentage value.  Please enter a value in the range of 5 to 100, inclusive.
echo.
goto :askpercent

:end
echo.
exit /b