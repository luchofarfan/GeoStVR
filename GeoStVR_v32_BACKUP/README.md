# GeoStVR v32 - Sistema de Análisis Geológico con Realidad Aumentada

![GeoStVR Logo](https://img.shields.io/badge/GeoStVR-v32.0.0-blue)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20Web-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

## 📋 Descripción

GeoStVR es un sistema avanzado de análisis geológico que utiliza Realidad Aumentada (AR) para realizar mediciones precisas de profundidades en estructuras geológicas. La aplicación combina tecnologías web modernas con capacidades nativas de Android para proporcionar una herramienta profesional de análisis geológico.

## 🚀 Funcionalidades Principales

### 🔍 Análisis Geológico con AR
- **Medición de Profundidades**: Sistema de cálculo automático de profundidades basado en análisis geométrico
- **Múltiples Planos**: Capacidad de analizar hasta 10 planos geológicos simultáneamente
- **Elipses de Intersección**: Generación automática de elipses de intersección entre planos
- **BOHs (Borehole Objects)**: Objetos de perforación interactivos para medición precisa

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

## 🛠️ Stack Tecnológico

### Frontend
- **HTML5/CSS3/JavaScript**: Interfaz web responsiva
- **Three.js**: Renderizado 3D y visualización AR
- **WebRTC**: Acceso a cámara del dispositivo
- **Canvas API**: Procesamiento de imágenes y gráficos

### Backend/Mobile
- **Capacitor 5.0**: Framework híbrido para aplicaciones móviles
- **Android SDK**: Desarrollo nativo para Android
- **Node.js 17**: Runtime de desarrollo (requerido)

### Dependencias Principales
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

## 📦 Instalación y Configuración

### Prerrequisitos
- **Node.js 17.x** (versión requerida)
- **Android Studio** (para desarrollo Android)
- **Java JDK 11+**
- **Git**

### Instalación Local
```bash
# Clonar el repositorio
git clone https://github.com/luchofarfan/GeoStVR.git
cd GeoStVR

# Instalar dependencias
npm install

# Iniciar servidor de desarrollo
npm start
```

### Configuración de Android
```bash
# Agregar plataforma Android
npx cap add android

# Sincronizar archivos
npx cap sync

# Abrir en Android Studio
npx cap open android
```

## 🔨 Compilación y Construcción

### Desarrollo Web
```bash
# Servidor de desarrollo local
npm start
# Accede a http://localhost:3000
```

### Aplicación Android
```bash
# Sincronizar cambios
npx cap sync android

# Construir APK de debug
cd android
./gradlew assembleDebug

# Construir APK de release
./gradlew assembleRelease
```

### Scripts Disponibles
```bash
npm start          # Servidor de desarrollo
npm run build      # Construcción de producción
npm run export-csv # Exportar datos a CSV
```

## 📱 Configuración de Android

### Permisos Requeridos
- `CAMERA`: Acceso a cámara para AR
- `LOCATION`: Geolocalización precisa
- `WRITE_EXTERNAL_STORAGE`: Guardado de reportes

### Configuración de Gradle
```gradle
android {
    compileSdkVersion 34
    minSdkVersion 21
    targetSdkVersion 34
}
```

## 🎮 Uso de la Aplicación

### 1. Inicialización
- Abrir la aplicación
- Permitir acceso a cámara y ubicación
- Establecer profundidad inicial del primer plano

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
├── android/                 # Código nativo Android
├── www/                     # Aplicación web
│   └── index.html          # Aplicación principal
├── capacitor.config.ts     # Configuración de Capacitor
├── package.json            # Dependencias Node.js
└── README.md              # Documentación
```

## 🐛 Solución de Problemas

### Problemas Comunes
1. **Cámara no funciona**: Verificar permisos en Android
2. **GPS no disponible**: Activar ubicación de alta precisión
3. **Error de compilación**: Verificar versión de Node.js (17.x)

### Logs de Debug
```bash
# Habilitar logs detallados
localStorage.setItem('debug', 'true')
```

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

## 👥 Contribución

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📞 Contacto

- **Desarrollador**: GeoStVR Team
- **Email**: info@geostvr.com
- **Web**: https://geostvr.com

## 🔄 Historial de Versiones

- **v32.0.0** - Versión actual con correcciones críticas
- **v31.0.0** - Sistema de análisis geológico AR
- **v30.0.0** - Implementación de múltiples planos

---

**© 2025 GeoStVR Technologies. Todos los derechos reservados.**
