# GeoStVR v31 - Exportación Mejorada

## 🚀 Nuevas Funcionalidades de Exportación

### 📊 Exportación Completa de Mediciones

La versión 31 incluye un sistema de exportación mejorado que combina:

1. **Datos CSV completos** con todas las mediciones
2. **Imagen AR** con cilindro, BOHs y elipses superpuestas
3. **Formato ZIP** para envío por email e integración API

### 📋 Datos Incluidos en el CSV

#### Información General
- Fecha y hora de la medición
- Configuración del cilindro (diámetro y altura)
- Total de planos calculados
- Profundidad inicial establecida

#### Ángulos BOHs
- **BOH Amarilla**: Ángulo actual en grados
- **BOH Roja**: Ángulo actual en grados  
- **AC (entre BOHs)**: Ángulo entre ambas BOHs

#### Datos por Plano
Para cada plano calculado se incluye:
- **Número de plano** y timestamp
- **Profundidad** (manual o calculada automáticamente)
- **Tipo de profundidad** (Manual/Calculada)
- **Ángulos Alfa (α) y Beta (β)**
- **Vector normal** (X, Y, Z)
- **Coordenadas de los 3 puntos** seleccionados (X, Y, Z)

#### Resumen Estadístico
- Promedios de ángulos y profundidades
- Rangos de variación
- Análisis de consistencia

### 📸 Imagen AR Exportada

La imagen incluye:
- **Fondo**: Foto capturada de la cámara o video en vivo
- **Cilindro virtual** superpuesto
- **BOHs** en sus posiciones actuales
- **Elipses de intersección** de todos los planos
- **Overlay informativo** con:
  - Ángulos de BOHs
  - Número de planos
  - Profundidad inicial
  - Timestamp de la medición

### 📦 Formato de Exportación

#### Archivo ZIP
- **Nombre**: `GeoStVR_Export_YYYY-MM-DD_HH-MM-SS.zip`
- **Contenido**:
  - `GeoStVR_Mediciones_YYYY-MM-DD.csv` - Datos completos
  - `GeoStVR_ImagenAR_YYYY-MM-DD.jpg` - Imagen con superposiciones

#### Compatibilidad
- **Email**: Archivo ZIP listo para adjuntar
- **API**: Estructura de datos JSON-compatible
- **Excel**: CSV con formato estándar
- **Google Sheets**: Importación directa

### 🔧 Uso de la Exportación

#### Requisitos Previos
1. **Capturar foto AR** usando el botón "📸 Foto AR"
2. **Calcular al menos un plano** seleccionando 3 puntos
3. **Establecer profundidad inicial** para el primer plano

#### Proceso de Exportación
1. Hacer clic en "📤 Exportar Completo"
2. El sistema generará automáticamente:
   - CSV con todos los datos
   - Imagen AR con superposiciones
   - Archivo ZIP contenedor
3. Descargar el archivo ZIP
4. Enviar por email o integrar via API

### 📊 Estructura del CSV

```csv
GeoStVR v31 - Reporte de Mediciones Geológicas
Fecha: 2025-01-04
Hora: 14:30:15
Cilindro: Diámetro 6.5cm, Altura 30cm
Total Planos: 3/10
Profundidad Inicial: 12.5 cm

=== ÁNGULOS BOHs ===
BOH Amarilla: 45.2°
BOH Roja: 78.5°
AC (entre BOHs): 33.3°

=== DATOS DE PLANOS ===
Plano,Profundidad (cm),Tipo,Alfa (α),Beta (β),Normal_X,Normal_Y,Normal_Z,Punto1_X,Punto1_Y,Punto1_Z,Punto2_X,Punto2_Y,Punto2_Z,Punto3_X,Punto3_Y,Punto3_Z,Timestamp
1,12.50,Manual,45.2,30.1,0.707,0.000,0.707,3.250,0.000,10.000,0.000,3.250,15.000,-3.250,0.000,20.000,2025-01-04T14:30:15.000Z
2,13.20,Calculada,42.8,28.5,0.654,0.123,0.745,3.100,0.500,12.000,0.200,3.200,17.000,-3.000,0.100,22.000,2025-01-04T14:30:45.000Z
3,14.10,Calculada,38.5,25.8,0.612,0.256,0.748,2.950,1.200,14.000,0.500,3.150,19.000,-2.750,0.300,24.000,2025-01-04T14:31:15.000Z

=== RESUMEN ESTADÍSTICO ===
Alfa Promedio: 42.17°
Beta Promedio: 28.13°
Profundidad Promedio: 13.27 cm
Rango Alfa: 38.50° - 45.20°
Rango Beta: 25.80° - 30.10°
```

### 🔗 Integración API

#### Estructura JSON
```json
{
  "metadata": {
    "version": "GeoStVR v31",
    "timestamp": "2025-01-04T14:30:15.000Z",
    "cylinder": {
      "diameter": 6.5,
      "height": 30
    },
    "totalPlanes": 3,
    "maxPlanes": 10,
    "initialDepth": 12.5
  },
  "bohAngles": {
    "yellow": 45.2,
    "red": 78.5,
    "ac": 33.3
  },
  "planes": [
    {
      "id": 1,
      "depth": 12.5,
      "depthType": "Manual",
      "alpha": 45.2,
      "beta": 30.1,
      "normal": {"x": 0.707, "y": 0.000, "z": 0.707},
      "points": [
        {"x": 3.250, "y": 0.000, "z": 10.000},
        {"x": 0.000, "y": 3.250, "z": 15.000},
        {"x": -3.250, "y": 0.000, "z": 20.000}
      ],
      "timestamp": "2025-01-04T14:30:15.000Z"
    }
  ],
  "statistics": {
    "avgAlpha": 42.17,
    "avgBeta": 28.13,
    "avgDepth": 13.27,
    "alphaRange": {"min": 38.50, "max": 45.20},
    "betaRange": {"min": 25.80, "max": 30.10}
  }
}
```

### 🎯 Ventajas de la Nueva Exportación

1. **Completa**: Incluye todos los datos de medición
2. **Visual**: Imagen AR con superposiciones
3. **Profesional**: Formato estándar para reportes
4. **Compatible**: Funciona con Excel, Google Sheets, APIs
5. **Trazable**: Timestamps y metadatos completos
6. **Estadística**: Análisis automático de datos
7. **Portable**: Archivo ZIP único para envío

### 🔧 Configuración Técnica

#### Librerías Utilizadas
- **Three.js r128**: Renderizado 3D
- **JSZip 3.10.1**: Creación de archivos ZIP
- **Canvas API**: Procesamiento de imágenes
- **File API**: Descarga de archivos

#### Formatos Soportados
- **CSV**: UTF-8, separador coma
- **Imagen**: JPEG, calidad 95%
- **ZIP**: Compresión estándar
- **JSON**: Para integración API

### 📱 Compatibilidad

- **Android**: 7.0+ (API 24+)
- **Navegadores**: Chrome, Firefox, Safari, Edge
- **Dispositivos**: Móviles y tablets
- **Resolución**: Optimizado para pantallas táctiles

### 🚀 Próximas Mejoras

#### v32 (Planificada)
- Exportación en formato PDF
- Gráficos de tendencias
- Análisis estadístico avanzado
- Sincronización en la nube

#### v33 (Futura)
- Integración con bases de datos
- Reportes automáticos por email
- API REST completa
- Dashboard web en tiempo real

---

## 📞 Soporte

Para reportar problemas o solicitar mejoras:
- Crear issue en el repositorio
- Incluir logs de consola
- Especificar modelo de dispositivo
- Adjuntar archivos de ejemplo

## 📄 Licencia

MIT License - Ver archivo LICENSE para detalles completos.

