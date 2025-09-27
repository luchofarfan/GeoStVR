@echo off
echo ========================================
echo    GeoStVR v20 - Build Android APK
echo ========================================
echo.

echo [1/5] Instalando dependencias...
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Fallo al instalar dependencias
    pause
    exit /b 1
)

echo.
echo [2/5] Inicializando Capacitor...
call npx cap init GeoStVR-v20 com.geostvr.v20
if %errorlevel% neq 0 (
    echo ERROR: Fallo al inicializar Capacitor
    pause
    exit /b 1
)

echo.
echo [3/5] Agregando plataforma Android...
call npx cap add android
if %errorlevel% neq 0 (
    echo ERROR: Fallo al agregar plataforma Android
    pause
    exit /b 1
)

echo.
echo [4/5] Sincronizando archivos...
call npx cap sync
if %errorlevel% neq 0 (
    echo ERROR: Fallo al sincronizar archivos
    pause
    exit /b 1
)

echo.
echo [5/5] Construyendo APK...
call npx cap build android
if %errorlevel% neq 0 (
    echo ERROR: Fallo al construir APK
    pause
    exit /b 1
)

echo.
echo ========================================
echo    ¡APK construido exitosamente!
echo ========================================
echo.
echo El APK se encuentra en:
echo android/app/build/outputs/apk/debug/
echo.
echo Para instalar en dispositivo:
echo 1. Conectar dispositivo Android via USB
echo 2. Habilitar depuración USB
echo 3. Ejecutar: npx cap run android
echo.
pause




