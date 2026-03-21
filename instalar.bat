@echo off
cd /d "%~dp0"

:: Comprobar permisos de administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Solicitando permisos de administrador...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo Ejecutando setup...
setup.exe /configure configuration.xml

pause