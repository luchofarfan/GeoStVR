


# GeoStVR v31 - Versión Mejorada con Exportación y Profundidades

## 🚀 Nuevas Funcionalidades v31

### 📊 Interfaz de Reportes Mejorada
- Ventana de reportes rediseñada con mejor UX
- Organización visual mejorada de datos
- Indicadores de estado en tiempo real
- Filtros y búsqueda de datos
- Diseño más profesional y moderno

### 📁 Exportación Completa de Datos
- **Exportación ZIP** con CSV + Imagen AR
- **Datos CSV completos** con todas las mediciones:
  - Ángulos BOHs (Amarilla, Roja, AC entre BOHs)
  - Número de plano y timestamp
  - Profundidad (manual o calculada)
  - Ángulos alfa y beta
  - Vectores normales (X, Y, Z)
  - Coordenadas de los 3 puntos seleccionados
  - Resumen estadístico automático
- **Imagen AR** con cilindro, BOHs y elipses superpuestas
- **Overlay informativo** con mediciones en la imagen
- **Formato compatible** para email e integración API
- **Archivo ZIP único** para envío fácil

### 📏 Sistema de Profundidades Inteligente
- **Primer trío:** Entrada manual de profundidad inicial
- **Tríos siguientes:** Cálculo automático basado en:
  - Distancia geométrica desde primera profundidad
  - Diámetro conocido del cilindro (6.5 cm)
  - Geometría de intersección plano-cilindro
  - Fórmula: `Profundidad_n = Profundidad_1 + (Distancia_geométrica × Factor_cilindro)`

### 🎯 Mejoras de Usabilidad
- Interfaz más limpia y profesional
- Mejor feedback visual con animaciones
- Validación de datos en tiempo real
- Mensajes de error más claros y útiles
- Modal para entrada de profundidad inicial

## 📋 Estructura de Datos CSV

```csv
Plano,Timestamp,Profundidad,Alfa,Beta,Normal_X,Normal_Y,Normal_Z,Punto1_X,Punto1_Y,Punto1_Z,Punto2_X,Punto2_Y,Punto2_Z,Punto3_X,Punto3_Y,Punto3_Z
1,2025-09-04T20:30:15,12.5,45.2,30.1,0.707,0.0,0.707,3.25,0,10,0,3.25,15,-3.25,0,20
2,2025-09-04T20:30:45,13.2,42.8,28.5,0.654,0.123,0.745,3.1,0.5,12,0.2,3.2,17,-3.0,0.1,22
```

## 🔧 Configuración Técnica

- **Diámetro del cilindro:** 6.5 cm (radio: 3.25 cm)
- **Altura del cilindro:** 30 cm
- **Formato de exportación:** CSV UTF-8
- **Precisión decimal:** 
  - Ángulos: 1 decimal
  - Coordenadas: 3 decimales
  - Profundidades: 1 decimal
- **Máximo de planos:** 10 simultáneos

## 📱 Compatibilidad

- **Android:** 7.0+ (API 24+)
- **Capacitor:** 5.x
- **Three.js:** r128
- **Navegadores:** Modernos con WebGL
- **Resolución:** Optimizado para móviles

## 🚀 Instalación y Uso

### Para Desarrollo:
```bash
cd GeoStVR_v31
npm install
npx cap sync
npx cap run android
```

### Para Producción:
1. Instalar APK generada
2. Conceder permisos de cámara
3. Seleccionar primer trío de puntos
4. Ingresar profundidad inicial
5. Continuar con tríos adicionales
6. Exportar datos cuando sea necesario

## 📊 Flujo de Trabajo

1. **Inicialización:** App se abre con cámara activa
2. **Captura AR:** Tomar foto de la escena con "📸 Foto AR"
3. **Primer trío:** Seleccionar 3 puntos → Ingresar profundidad manual
4. **Tríos siguientes:** Seleccionar puntos → Profundidad calculada automáticamente
5. **Visualización:** Ver planos, elipses y mediciones en tiempo real
6. **Exportación completa:** Descargar ZIP con CSV + Imagen AR
7. **Envío:** Archivo listo para email o integración API

## 🔍 Características Técnicas

### Cálculo de Profundidades
- **Fórmula principal:** `Profundidad_n = Profundidad_1 + (Distancia × Factor)`
- **Factor del cilindro:** `Diámetro / 10 = 6.5 / 10 = 0.65`
- **Distancia:** Distancia euclidiana entre centros de elipses
- **Validación:** Verificación de rangos y consistencia

### Exportación Completa
- **Formato:** ZIP con CSV + Imagen AR
- **CSV Encoding:** UTF-8
- **CSV Separador:** Coma (,)
- **Imagen:** JPEG, calidad 95%
- **Headers:** Incluidos en primera fila
- **Timestamps:** ISO 8601 format
- **Compatibilidad:** Excel, Google Sheets, LibreOffice, APIs
- **Tamaño:** Optimizado para email

## 🐛 Solución de Problemas

### Cámara no funciona:
- Verificar permisos en configuración del dispositivo
- Reiniciar la aplicación
- Verificar que la cámara no esté siendo usada por otra app

### Exportación falla:
- Verificar que hay al menos un plano calculado
- Verificar que se haya capturado una foto AR
- Verificar espacio de almacenamiento
- Verificar permisos de escritura
- Verificar conexión a internet (para JSZip)

### Profundidades incorrectas:
- Verificar que la profundidad inicial sea realista
- Verificar que los puntos estén en la superficie del cilindro
- Recalcular si es necesario

## 📈 Próximas Versiones

### v32 (Planificada):
- Importación de datos CSV
- Análisis estadístico de mediciones
- Gráficos de tendencias
- Modo offline mejorado

### v33 (Futura):
- Integración con sensores adicionales
- Realidad aumentada mejorada
- Sincronización en la nube
- Colaboración en tiempo real

## 👥 Soporte

Para reportar bugs o solicitar características:
- Crear issue en el repositorio
- Incluir logs de consola
- Especificar modelo de dispositivo y versión de Android
- Adjuntar archivos CSV de ejemplo si es posible

## 📄 Licencia

MIT License - Ver archivo LICENSE para detalles completos.