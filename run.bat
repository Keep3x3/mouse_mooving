@echo off
setlocal

set "INTERVAL=%~1"
if "%INTERVAL%"=="" set "INTERVAL=30"

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0mouse-mover.ps1" -Interval %INTERVAL%

endlocal
