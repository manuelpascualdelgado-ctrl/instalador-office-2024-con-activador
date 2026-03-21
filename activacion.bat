@echo off
echo Abriendo PowerShell...

powershell -NoLogo -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex"

echo.
echo Proceso terminado.
pause