# GeoStVR v32 - Sistema de Análisis Geológico con Realidad Aumentada

![GeoStVR Logo](https://img.shields.io/badge/GeoStVR-v32.0.0-blue)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20Web-green)
![License](https://img.shields.io/badge/License-MIT-yellow)
![Node.js](https://img.shields.io/badge/Node.js-17.x-green)
![Capacitor](https://img.shields.io/badge/Capacitor-5.0-blue)

## 📋 Descripción

GeoStVR es un sistema avanzado de análisis geológico que utiliza Realidad Aumentada (AR) para realizar mediciones precisas de profundidades en estructuras geológicas. La aplicación combina tecnologías web modernas con capacidades nativas de Android para proporcionar una herramienta profesional de análisis geológico.

## 🚀 Funcionalidades Principales

### 🔍 Análisis Geológico con AR
- **Medición de Profundidades**: Sistema de cálculo automático de profundidades basado en análisis geométrico
- **Múltiples Planos**: Capacidad de analizar hasta 10 planos geológicos simultáneamente
- **Elipses de Intersección**: Generación automática de elipses de intersección entre planos
- **BOHs (Borehole Objects)**: Objetos de perforación interactivos para medición precisa
- **BOHs (Bottom Of Hole)**: Línea de referencia representando la parte inferior del testigo, i.e. el vector gravedad en el punto de la medición

### 📱 Tecnologías Integradas
- **Cámara AR**: Captura de fotos con superposición de elementos 3D
- **Geolocalización**: Integración con GPS para posicionamiento preciso
- **Exportación de Datos**: Generación de reportes en formato CSV
- **Modo Offline**: Funcionalidad completa sin conexión a internet

### 🎯 Características Técnicas
- **Cálculo Automático**: Algoritmos propietarios para cálculo de profundidades
- **Interfaz Intuitiva**: Controles minimalistas optimizados para uso profesional
- **Protección de Datos**: Sistema de encriptación y marcas de agua
- **Validación de Licencias**: Sistema de protección de propiedad intelectual

## 🛠️ Stack Tecnológico y Dependencias

### Frontend
- **HTML5/CSS3/JavaScript**: Interfaz web responsiva
- **Three.js**: Renderizado 3D y visualización AR
- **WebRTC**: Acceso a cámara del dispositivo
- **Canvas API**: Procesamiento de imágenes y gráficos

### Backend/Mobile
- **Capacitor 5.0**: Framework híbrido para aplicaciones móviles
- **Android SDK 33**: Desarrollo nativo para Android
- **Node.js 17.x**: Runtime de desarrollo (requerido)
- **Java JDK 11+**: Para compilación Android

### Dependencias Node.js
```json
{
  "@capacitor/cli": "^5.0.0",
  "@capacitor/core": "^5.0.0",
  "@capacitor/android": "^5.0.0",
  "@capacitor/camera": "^5.0.0",
  "@capacitor/device": "^5.0.0",
  "@capacitor/geolocation": "^5.0.0",
  "@capacitor/status-bar": "^5.0.0"
}
```

### Dependencias Android (Gradle)
```gradle
// AndroidX Libraries
androidx.appcompat:appcompat:1.6.1
androidx.coordinatorlayout:coordinatorlayout:1.2.0
androidx.core:core-splashscreen:1.0.0

// Testing
junit:junit:4.13.2
androidx.test.ext:junit:1.1.5
androidx.test.espresso:espresso-core:3.5.1

// Google Services (opcional)
com.google.gms:google-services:4.3.15
```

### Configuración de Android
- **minSdkVersion**: 22 (Android 5.1)
- **compileSdkVersion**: 33 (Android 13)
- **targetSdkVersion**: 33 (Android 13)
- **Gradle**: 8.0.0
- **Build Tools**: 33.0.0

## 📦 Instalación y Configuración

### Prerrequisitos del Sistema

#### Requerimientos Mínimos
- **Node.js 17.x** (versión específica requerida)
- **npm 8.x** o superior
- **Java JDK 11+** (OpenJDK recomendado)
- **Android Studio** (última versión estable)
- **Android SDK 33** (API Level 33)


#### Verificación de Prerrequisitos
```bash
# Verificar Node.js
node --version  # Debe ser v17.x.x

# Verificar npm
npm --version   # Debe ser 8.x.x o superior

# Verificar Java
java -version   # Debe ser JDK 11 o superior

# Verificar Android SDK
echo $ANDROID_HOME  # Debe apuntar al SDK de Android
```

### Instalación del Proyecto

#### 1. Clonar el Repositorio
```bash
# Clonar el repositorio
git clone https://github.com/luchofarfan/GeoStVR.git
cd GeoStVR

# Verificar que estás en la rama correcta
git branch
```

#### 2. Instalar Dependencias
```bash
# Instalar dependencias de Node.js
npm install

# Verificar instalación
npm list --depth=0
```

#### 3. Configuración de Capacitor
```bash
# Verificar configuración de Capacitor
npx cap doctor

# Si hay problemas, reinstalar Capacitor
npm install @capacitor/cli@latest
```

### Configuración de Android

#### 1. Configurar Android Studio
```bash
# Abrir Android Studio y configurar SDK
# - Instalar Android SDK 33
# - Instalar Android SDK Build-Tools 33.0.0
# - Instalar Android SDK Platform-Tools
```

#### 2. Configurar Variables de Entorno
```bash
# Windows (PowerShell)
$env:ANDROID_HOME = "C:\Users\$env:USERNAME\AppData\Local\Android\Sdk"
$env:PATH += ";$env:ANDROID_HOME\platform-tools;$env:ANDROID_HOME\tools"

# Linux/macOS
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools
```

#### 3. Sincronizar con Android
```bash
# Sincronizar archivos web con Android
npx cap sync android

# Verificar configuración
npx cap doctor android
```

## 🔨 Compilación y Construcción

### Desarrollo Web

#### Servidor de Desarrollo
```bash
# Iniciar servidor de desarrollo
npm start

# El servidor estará disponible en:
# http://localhost:3000
```

#### Desarrollo con Hot Reload
```bash
# Para desarrollo con recarga automática
npx cap run android --livereload --external

# O para web con recarga automática
npx cap run android --livereload --external --target=web
```

### Construcción de Aplicación Android

#### 1. Preparación
```bash
# Sincronizar cambios antes de construir
npx cap sync android

# Verificar configuración
npx cap doctor android
```

#### 2. Construcción de Debug
```bash
# Opción 1: Usando Capacitor
npx cap run android

# Opción 2: Usando Gradle directamente
cd android
./gradlew assembleDebug

# El APK se genera en:
# android/app/build/outputs/apk/debug/app-debug.apk
```

#### 3. Construcción de Release
```bash
# Construir APK de release (sin firmar)
cd android
./gradlew assembleRelease

# El APK se genera en:
# android/app/build/outputs/apk/release/app-release-unsigned.apk
```

#### 4. Construcción con Firma
```bash
# Generar keystore (solo la primera vez)
keytool -genkey -v -keystore geostvr-release-key.keystore -alias geostvr -keyalg RSA -keysize 2048 -validity 10000

# Configurar signing en android/app/build.gradle
# (Ver sección de configuración avanzada)

# Construir APK firmado
cd android
./gradlew assembleRelease
```

### Scripts de Construcción Personalizados

#### Scripts NPM Disponibles
```bash
npm start          # Servidor de desarrollo web
npm run build      # Construcción de producción (placeholder)
npm run export-csv # Exportar datos a CSV
```

#### Scripts de Construcción Completos
```bash
# Construcción completa de desarrollo
npm run build:dev
# Equivale a: npx cap sync android && npx cap run android

# Construcción completa de release
npm run build:release
# Equivale a: npx cap sync android && cd android && ./gradlew assembleRelease

# Construcción y instalación en dispositivo
npm run build:install
# Equivale a: npx cap sync android && npx cap run android --target=device
```

## 📱 Configuración Avanzada de Android

### Permisos Requeridos
```xml
<!-- AndroidManifest.xml -->
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
```

### Configuración de Gradle Detallada

#### android/app/build.gradle
```gradle
android {
    namespace "com.geostvr.v32"
    compileSdkVersion 33
    defaultConfig {
        applicationId "com.geostvr.v32"
        minSdkVersion 22
        targetSdkVersion 33
        versionCode 1
        versionName "32.0.0"
    }
    
    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
        }
    }
    
    // Configuración de signing (opcional)
    signingConfigs {
        release {
            if (project.hasProperty('MYAPP_RELEASE_STORE_FILE')) {
                storeFile file(MYAPP_RELEASE_STORE_FILE)
                storePassword MYAPP_RELEASE_STORE_PASSWORD
                keyAlias MYAPP_RELEASE_KEY_ALIAS
                keyPassword MYAPP_RELEASE_KEY_PASSWORD
            }
        }
    }
}
```

#### android/gradle.properties
```properties
# Configuración de Gradle
org.gradle.jvmargs=-Xmx2048m
android.useAndroidX=true
android.enableJetifier=true

# Configuración de signing (opcional)
MYAPP_RELEASE_STORE_FILE=geostvr-release-key.keystore
MYAPP_RELEASE_KEY_ALIAS=geostvr
MYAPP_RELEASE_STORE_PASSWORD=your_store_password
MYAPP_RELEASE_KEY_PASSWORD=your_key_password
```

### Configuración de Capacitor

#### capacitor.config.ts
```typescript
import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.geostvr.v32',
  appName: 'GeoStVR v32',
  webDir: 'www',
  server: {
    androidScheme: 'https'
  },
  plugins: {
    Camera: {
      permissions: ['camera']
    },
    Geolocation: {
      permissions: ['location']
    },
    StatusBar: {
      style: 'dark',
      backgroundColor: '#1a1a2e'
    }
  }
};

export default config;
```

## 🎮 Uso de la Aplicación

### 1. Inicialización
- Abrir la aplicación
- Permitir acceso a cámara y ubicación
- Establecer profundidad inicial del primer plano y permitir ajuste manual de BOHs para calce con realidad


### 2. Análisis Geológico
- Capturar foto con cámara AR
- Seleccionar puntos de medición
- Generar planos y elipses de intersección
- Calcular profundidades automáticamente

### 3. Exportación de Datos
- Generar reportes en formato CSV
- Guardar en carpeta de descargas
- Incluir coordenadas GPS y timestamps

## 🔧 Configuración Avanzada

### Variables de Entorno
```bash
# Configuración de desarrollo
NODE_ENV=development
PORT=3000

# Configuración de producción
NODE_ENV=production
```

### Personalización
- **Diámetro del Cilindro**: Configurable en `CYLINDER_DIAMETER`
- **Factor de Profundidad**: Ajustable en `DEPTH_FACTOR`
- **Máximo de Planos**: Configurable en `MAX_PLANES`

## 📊 Estructura del Proyecto

```
GeoStVR/
├── android/                          # Código nativo Android
│   ├── app/                          # Módulo principal de la app
│   │   ├── build.gradle              # Configuración del módulo
│   │   ├── src/main/                 # Código fuente Android
│   │   │   ├── AndroidManifest.xml   # Manifest de la aplicación
│   │   │   ├── java/                 # Código Java/Kotlin
│   │   │   └── res/                  # Recursos Android
│   │   └── proguard-rules.pro        # Reglas de ProGuard
│   ├── build.gradle                  # Configuración principal de Gradle
│   ├── variables.gradle              # Variables de versión
│   ├── gradle.properties             # Propiedades de Gradle
│   └── settings.gradle               # Configuración de módulos
├── www/                              # Aplicación web
│   └── index.html                    # Aplicación principal (HTML/JS/CSS)
├── APK/                              # Archivos APK generados
├── Docs/                             # Documentación del proyecto
├── capacitor.config.ts               # Configuración de Capacitor
├── package.json                      # Dependencias Node.js
└── README.md                         # Documentación principal
```

## 🐛 Solución de Problemas

### Problemas de Instalación

#### Error: Node.js versión incorrecta
```bash
# Problema: Node.js no es versión 17.x
# Solución: Instalar Node.js 17.x
nvm install 17
nvm use 17

# O descargar desde: https://nodejs.org/dist/v17.9.1/
```

#### Error: Android SDK no encontrado
```bash
# Problema: ANDROID_HOME no configurado
# Solución: Configurar variable de entorno
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Verificar instalación
npx cap doctor android
```

#### Error: Java JDK no encontrado
```bash
# Problema: Java no instalado o versión incorrecta
# Solución: Instalar OpenJDK 11+
sudo apt install openjdk-11-jdk  # Ubuntu/Debian
brew install openjdk@11          # macOS

# Verificar instalación
java -version
```

### Problemas de Compilación

#### Error: Gradle build failed
```bash
# Problema: Dependencias de Gradle desactualizadas
# Solución: Limpiar y reconstruir
cd android
./gradlew clean
./gradlew build

# Si persiste, actualizar Gradle Wrapper
./gradlew wrapper --gradle-version 8.0.0
```

#### Error: Capacitor sync failed
```bash
# Problema: Archivos web no sincronizados
# Solución: Sincronizar manualmente
npx cap sync android --force

# Verificar configuración
npx cap doctor
```

#### Error: APK no se genera
```bash
# Problema: Configuración de build incorrecta
# Solución: Verificar configuración
cd android
./gradlew assembleDebug --info

# Verificar que el APK se genera en:
# android/app/build/outputs/apk/debug/app-debug.apk
```

### Problemas de Ejecución

#### Error: Cámara no funciona
```bash
# Problema: Permisos de cámara no otorgados
# Solución: Verificar permisos en Android
# - Ir a Configuración > Aplicaciones > GeoStVR > Permisos
# - Activar permiso de Cámara
```

#### Error: GPS no disponible
```bash
# Problema: Ubicación no disponible
# Solución: Activar ubicación de alta precisión
# - Ir a Configuración > Ubicación
# - Activar "Ubicación de alta precisión"
# - Verificar que la app tenga permisos de ubicación
```

#### Error: Aplicación se cierra inesperadamente
```bash
# Problema: Crash de la aplicación
# Solución: Verificar logs de Android
adb logcat | grep -i geostvr

# O usar Android Studio para debug
npx cap open android
```

### Problemas de Desarrollo

#### Error: Hot reload no funciona
```bash
# Problema: Live reload no activo
# Solución: Usar comando correcto
npx cap run android --livereload --external

# Verificar que el servidor esté corriendo
npm start
```

#### Error: Cambios no se reflejan
```bash
# Problema: Cache de navegador o Capacitor
# Solución: Limpiar cache
npx cap sync android
# O limpiar cache del navegador (Ctrl+Shift+R)
```

### Logs de Debug

#### Habilitar logs detallados
```bash
# En la consola del navegador
localStorage.setItem('debug', 'true')

# Para Android, usar adb logcat
adb logcat | grep -E "(GeoStVR|Capacitor|Chrome)"
```

#### Verificar configuración completa
```bash
# Verificar todo el entorno
npx cap doctor

# Verificar específicamente Android
npx cap doctor android

# Verificar Node.js y npm
node --version && npm --version
```

### Comandos de Diagnóstico

#### Verificar instalación completa
```bash
# Script de verificación completa
echo "=== Verificando Node.js ==="
node --version
echo "=== Verificando npm ==="
npm --version
echo "=== Verificando Java ==="
java -version
echo "=== Verificando Android SDK ==="
echo $ANDROID_HOME
echo "=== Verificando Capacitor ==="
npx cap doctor
```

#### Limpiar proyecto completamente
```bash
# Limpiar todo y reinstalar
rm -rf node_modules
rm -rf android/app/build
npm install
npx cap sync android
cd android && ./gradlew clean && cd ..
```

## 🚀 Scripts de Automatización

### Scripts de Construcción Rápida

#### Construcción Completa de Desarrollo
```bash
#!/bin/bash
# build-dev.sh - Construcción completa para desarrollo
echo "🔨 Iniciando construcción de desarrollo..."
npm install
npx cap sync android
npx cap run android
echo "✅ Construcción de desarrollo completada"
```

#### Construcción de Release
```bash
#!/bin/bash
# build-release.sh - Construcción de release
echo "🔨 Iniciando construcción de release..."
npm install
npx cap sync android
cd android
./gradlew clean
./gradlew assembleRelease
echo "✅ APK de release generado en android/app/build/outputs/apk/release/"
```

#### Construcción y Instalación
```bash
#!/bin/bash
# build-install.sh - Construir e instalar en dispositivo
echo "🔨 Construyendo e instalando en dispositivo..."
npx cap sync android
npx cap run android --target=device
echo "✅ Aplicación instalada en dispositivo"
```

### Scripts de Mantenimiento

#### Limpieza Completa
```bash
#!/bin/bash
# clean-all.sh - Limpieza completa del proyecto
echo "🧹 Limpiando proyecto..."
rm -rf node_modules
rm -rf android/app/build
rm -rf android/build
rm -rf android/.gradle
npm install
npx cap sync android
echo "✅ Proyecto limpiado y reinstalado"
```

#### Verificación de Entorno
```bash
#!/bin/bash
# check-env.sh - Verificar entorno de desarrollo
echo "🔍 Verificando entorno de desarrollo..."
echo "Node.js: $(node --version)"
echo "npm: $(npm --version)"
echo "Java: $(java -version 2>&1 | head -1)"
echo "Android SDK: $ANDROID_HOME"
npx cap doctor
echo "✅ Verificación completada"
```

### Scripts de Desarrollo

#### Desarrollo con Hot Reload
```bash
#!/bin/bash
# dev-live.sh - Desarrollo con recarga automática
echo "🔥 Iniciando desarrollo con hot reload..."
npm start &
npx cap run android --livereload --external
```

#### Debug de Android
```bash
#!/bin/bash
# debug-android.sh - Debug en Android Studio
echo "🐛 Abriendo proyecto en Android Studio para debug..."
npx cap sync android
npx cap open android
```

## 📋 Checklist de Construcción

### Antes de Construir
- [ ] Node.js 17.x instalado
- [ ] Java JDK 11+ instalado
- [ ] Android SDK 33 instalado
- [ ] ANDROID_HOME configurado
- [ ] Dependencias instaladas (`npm install`)

### Construcción de Debug
- [ ] Sincronizar archivos (`npx cap sync android`)
- [ ] Verificar configuración (`npx cap doctor android`)
- [ ] Construir APK (`cd android && ./gradlew assembleDebug`)
- [ ] Verificar APK generado

### Construcción de Release
- [ ] Configurar keystore (opcional)
- [ ] Actualizar versiones en `build.gradle`
- [ ] Construir APK (`cd android && ./gradlew assembleRelease`)
- [ ] Firmar APK (si es necesario)
- [ ] Probar APK en dispositivo

## 📊 Métricas del Proyecto

### Tamaño de Archivos
- **Aplicación Web**: ~37KB (index.html)
- **APK Debug**: ~15-20MB
- **APK Release**: ~10-15MB (optimizado)

### Dependencias
- **Node.js**: 7 paquetes principales
- **Android**: 6 librerías AndroidX
- **Capacitor**: 6 plugins nativos

### Compatibilidad
- **Android**: 5.1+ (API 22+)
- **Navegadores**: Chrome 80+, Firefox 75+, Safari 13+
- **Dispositivos**: Smartphones y tablets Android

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

## 👥 Contribución

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📞 Contacto

- **Desarrollador**: GeoStXR Team
- **Email**: info@geostxr.com
- **Web**: https://geostxr.com

## 🔄 Historial de Versiones

- **v32.0.0** - Versión actual con correcciones críticas y documentación completa
- **v31.0.0** - Sistema de análisis geológico AR
- **v30.0.0** - Implementación de múltiples planos

---

**© 2025 GeoStXR Technologies. Todos los derechos reservados.**
