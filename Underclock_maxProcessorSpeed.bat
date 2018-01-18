@echo off
powercfg /setdcvalueindex 052b245f-42cd-4753-af2b-7850a43caaef SUB_PROCESSOR PROCTHROTTLEMAX %1
powercfg /setactive 052b245f-42cd-4753-af2b-7850a43caaef
echo.
echo Current power plan set to Underclock. Max processor speed: %1%%