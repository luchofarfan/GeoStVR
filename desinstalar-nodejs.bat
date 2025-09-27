@echo off
echo ========================================
echo    DESINSTALADOR COMPLETO DE NODE.JS
echo ========================================
echo.

echo [1/5] Deteniendo procesos de Node.js...
taskkill /f /im node.exe >nul 2>&1
taskkill /f /im npm.cmd >nul 2>&1
taskkill /f /im npx.cmd >nul 2>&1

echo [2/5] Desinstalando Node.js desde registro...
wmic product where "name like '%%Node.js%%'" call uninstall /nointeractive >nul 2>&1

echo [3/5] Eliminando carpetas de Node.js...
if exist "C:\Program Files\nodejs" (
    rmdir /s /q "C:\Program Files\nodejs" >nul 2>&1
    echo    - C:\Program Files\nodejs eliminada
)
if exist "C:\Program Files (x86)\nodejs" (
    rmdir /s /q "C:\Program Files (x86)\nodejs" >nul 2>&1
    echo    - C:\Program Files (x86)\nodejs eliminada
)

echo [4/5] Limpiando variables de entorno...
setx PATH "%PATH:nodejs;=%" >nul 2>&1
setx PATH "%PATH:npm;=%" >nul 2>&1

echo [5/5] Limpiando cache de npm...
if exist "%APPDATA%\npm" (
    rmdir /s /q "%APPDATA%\npm" >nul 2>&1
    echo    - Cache de npm eliminado
)
if exist "%APPDATA%\npm-cache" (
    rmdir /s /q "%APPDATA%\npm-cache" >nul 2>&1
    echo    - Cache de npm eliminado
)

echo.
echo ========================================
echo    DESINSTALACIÓN COMPLETADA
echo ========================================
echo.
echo IMPORTANTE:
echo 1. Reinicia tu PC ahora
echo 2. Descarga Node.js LTS desde: https://nodejs.org/
echo 3. Instala la versión LTS (fondo verde)
echo 4. Reinicia nuevamente
echo.
echo Después podrás usar GeoStVR sin problemas
echo.
pause






