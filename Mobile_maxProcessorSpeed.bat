@echo off
powercfg /setdcvalueindex 2e625513-524b-4acf-bf2f-ee992c8aba37 SUB_PROCESSOR PROCTHROTTLEMAX %1
powercfg /setactive 2e625513-524b-4acf-bf2f-ee992c8aba37
echo.
echo Current power plan set to Mobile. Max processor speed: %1%%