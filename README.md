# GeoStVR v20 - Geometría Virtual Avanzada

## 🎯 Descripción

GeoStVR v20 es una aplicación de realidad aumentada para dispositivos Android que permite visualizar y medir geometría virtual superpuesta a la imagen de la cámara del dispositivo.

## ✨ Características Principales

### 📐 Sistema de Coordenadas
- **Eje Z**: Eje largo del cilindro (z=0 en la base, z positivo hacia arriba)
- **Eje X**: Eje horizontal (rojo)
- **Eje Y**: Eje vertical (verde)
- **Eje Z**: Eje longitudinal (azul)

### 🔵 Cilindro Virtual
- **Radio**: 6.5 cm / 2 = 3.25 cm
- **Altura**: 30 cm
- **Posición**: Centrado en x=0, y=0
- **Apariencia**: Completamente transparente, solo líneas de contorno visibles

### 🟡🟠 BOHs (Borehole Orientation Holes)
- **BOH Amarillo**: z=0 a z=15 cm
- **BOH Rojo**: z=15 a z=30 cm
- **Posición**: x=0, y=radio (3.25 cm)

### 📷 Cámara del Dispositivo
- **Posición**: Centrada en (0, 0, 15)
- **Campo visual**: Pantalla completa
- **Orientación**: Cilindro vertical con z positivo hacia arriba

### 🎯 Selección de Puntos
- Selección de tríos de puntos funcional
- Marcadores visuales en puntos seleccionados
- Cálculo de planos a partir de 3 puntos

## 🚀 Instalación

### Prerrequisitos
- Node.js 17 o superior
- Android Studio
- Dispositivo Android con cámara

### Pasos de Instalación

1. **Clonar el proyecto**
```bash
git clone <repository-url>
cd GeoStVR_v20
```

2. **Instalar dependencias**
```bash
npm install
```

3. **Inicializar Capacitor**
```bash
npx cap init
```

4. **Agregar plataforma Android**
```bash
npx cap add android
```

5. **Sincronizar archivos**
```bash
npx cap sync
```

## 🛠️ Desarrollo

### Ejecutar en navegador (desarrollo)
```bash
npm start
```

### Abrir en Android Studio
```bash
npx cap open android
```

### Construir APK
```bash
npx cap build android
```

### Ejecutar en dispositivo
```bash
npx cap run android
```

## 📱 Uso de la Aplicación

1. **Iniciar cámara**: Presiona "📷 Iniciar Cámara"
2. **Seleccionar puntos**: Toca la pantalla en 3 puntos del cilindro
3. **Calcular plano**: Presiona "📐 Calcular Plano"
4. **Limpiar puntos**: Presiona "🗑️ Limpiar Puntos" para reiniciar

## 🔧 Configuración Técnica

### Especificaciones del Cilindro
- **Diámetro**: 6.5 cm
- **Radio**: 3.25 cm
- **Altura**: 30 cm
- **Transparencia**: 100% (solo contorno visible)

### Posicionamiento de BOHs
- **BOH Amarillo**: Base (z=0) a z=15 cm
- **BOH Rojo**: z=15 cm a tope (z=30 cm)
- **Posición X**: 0
- **Posición Y**: 3.25 cm (radio del cilindro)

### Cámara
- **Posición**: (0, 0, 15)
- **Orientación**: Mirando hacia el origen
- **Campo visual**: Abarca toda la pantalla

## 📋 Scripts Disponibles

- `npm start`: Servidor de desarrollo
- `npm run android`: Ejecutar en Android
- `npm run build-android`: Construir APK
- `npm run sync`: Sincronizar archivos
- `npm run open-android`: Abrir en Android Studio

## 🐛 Solución de Problemas

### Cámara no funciona
- Verificar permisos de cámara en el dispositivo
- Asegurar que el dispositivo tenga cámara trasera

### Aplicación no se instala
- Verificar que el dispositivo tenga instalación de apps de fuentes desconocidas habilitada
- Verificar que el APK sea compatible con la versión de Android

### Problemas de rendimiento
- Cerrar otras aplicaciones
- Reiniciar el dispositivo
- Verificar espacio disponible

## 📄 Licencia

MIT License

## 👥 Contribución

1. Fork el proyecto
2. Crear una rama para tu feature
3. Commit tus cambios
4. Push a la rama
5. Abrir un Pull Request

## 📞 Soporte

Para soporte técnico, contactar al equipo de desarrollo de GeoStVR.
