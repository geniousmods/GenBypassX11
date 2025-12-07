@echo off
title GenBypassX11 – By GeniousMods
setlocal EnableExtensions
mode con cols=64 lines=20
color 0B

:MENU
cls
echo ================================================
echo    GENBYPASSX11 - BYPASS REQUISITOS WINDOWS 11
echo          By GeniousMods ^| Canal: @GeniousMods
echo ================================================
echo.
echo [1] Aplicar bypass (TPM / SecureBoot / RAM / CPU / Disco)
echo [2] Aplicar bypass + Ejecutar Setup.exe
echo [3] Salir
echo.
set /p opt=Elige opcion y pulsa ENTER: 
if "%opt%"=="1" goto :DO_BYPASS
if "%opt%"=="2" goto :DO_BYPASS_AND_SETUP
if "%opt%"=="3" exit /b
goto :MENU

:DO_BYPASS
cls
echo.
echo Injectando valores en el registro...
echo.
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassTPMCheck              /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassSecureBootCheck       /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassRAMCheck              /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassCPUCheck              /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassDiskCheck             /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\MoSetup"   /v AllowUpgradesWithUnsupportedTPMOrCPU /t REG_DWORD /d 1 /f >nul 2>&1
echo.
echo ================================================
echo [+] Bypass aplicado correctamente!
echo ================================================
echo.
echo Ya puedes continuar con la instalacion de Windows 11
echo sin preocuparte por los requisitos del sistema.
echo.
echo ================================================
echo    Gracias por usar GenBypassX11!
echo    Suscribete para mas herramientas:
echo    https://www.youtube.com/@Geniousmods
echo ================================================
echo.
pause
goto :MENU

:DO_BYPASS_AND_SETUP
cls
echo.
echo Injectando valores en el registro...
echo.
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassTPMCheck              /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassSecureBootCheck       /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassRAMCheck              /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassCPUCheck              /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\LabConfig" /v BypassDiskCheck             /t REG_DWORD /d 1 /f >nul 2>&1
REG ADD "HKLM\SYSTEM\Setup\MoSetup"   /v AllowUpgradesWithUnsupportedTPMOrCPU /t REG_DWORD /d 1 /f >nul 2>&1
echo.
echo ================================================
echo [+] Bypass aplicado correctamente!
echo ================================================
echo.
echo Buscando setup.exe...
echo.

REM Buscar setup.exe en la misma carpeta del script
if exist "%~dp0setup.exe" (
    echo [+] Setup.exe encontrado en: %~dp0
    echo.
    echo Ejecutando instalador de Windows 11...
    echo.
    "%~dp0setup.exe"
    echo.
) else (
    echo [-] ERROR: No se encontro setup.exe
    echo.
    echo Asegurate de que setup.exe este en la misma carpeta
    echo que este script (GenBypassX11.cmd)
    echo.
    echo Ubicacion actual: %~dp0
    echo.
)

echo ================================================
echo    Gracias por usar GenBypassX11!
echo    Suscribete para mas herramientas:
echo    https://www.youtube.com/@Geniousmods
echo ================================================
echo.
echo Deseas iniciar la instalacion de Windows 11 ahora?
echo.
set /p instalar="[S/N]: "
if /i "%instalar%"=="S" goto :RUN_SETUP
if /i "%instalar%"=="N" exit /b
goto :DO_BYPASS_AND_SETUP

:RUN_SETUP
cls
echo.
echo Buscando setup.exe...
echo.
if exist "%~dp0setup.exe" (
    echo [+] Setup.exe encontrado!
    echo.
    echo Iniciando instalador de Windows 11...
    echo.
    start "" "%~dp0setup.exe"
    echo.
    echo [+] Instalador ejecutado correctamente!
    echo.
    echo Sigue las instrucciones en pantalla.
    echo.
) else (
    echo [-] ERROR: No se encontro setup.exe
    echo.
    echo Asegurate de tener setup.exe en la misma carpeta:
    echo %~dp0
    echo.
)
pause
exit /b