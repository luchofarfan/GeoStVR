# GeoStVR v32 - Issues Pendientes para Corrección

## 🚨 Issues Críticos (Prioridad Alta)

### Issue #1: Primer Trío No Genera Elipse
**Descripción**: El primer trío de puntos no genera consistentemente la elipse de intersección con el cilindro.

**Síntomas**:
- Al seleccionar 3 puntos, no aparece la elipse visual
- Los ángulos Alfa y Beta no se calculan correctamente
- El plano no se visualiza en la escena 3D

**Causa Raíz**:
- Algoritmo de intersección plano-cilindro no es robusto
- Cálculo de puntos de la elipse falla en ciertos casos
- Validación de puntos en superficie del cilindro insuficiente

**Solución Propuesta**:
```javascript
// Implementar algoritmo más robusto para intersección
function createEllipseIntersectionRobust(normal, trioIndex) {
    // 1. Calcular ecuación del plano: Ax + By + Cz + D = 0
    // 2. Calcular intersección con cilindro: x² + y² = r²
    // 3. Generar puntos de elipse usando parámetros t
    // 4. Validar que todos los puntos estén en la superficie
}
```

**Criterios de Aceptación**:
- [ ] El primer trío genera elipse visible en 100% de los casos
- [ ] Los ángulos se calculan correctamente
- [ ] La elipse es suave y continua
- [ ] Funciona con cualquier orientación del plano

---

### Issue #2: Cálculo de Profundidades Incorrecto
**Descripción**: Las profundidades automáticas no se calculan correctamente, repitiendo la profundidad manual.

**Síntomas**:
- Todas las profundidades muestran el mismo valor
- No hay variación entre planos diferentes
- Los cálculos no reflejan la geometría real

**Causa Raíz**:
- Fórmula de conversión de unidades 3D a cm reales incorrecta
- No se considera la distancia real entre centros de elipses
- El factor de conversión no es apropiado

**Solución Propuesta**:
```javascript
// Implementar cálculo correcto de profundidades
function calculateDepthCorrect(trioIndex) {
    // 1. Calcular centro de elipse actual
    // 2. Calcular centro de elipse de referencia (primer trío)
    // 3. Calcular distancia real en cm usando diámetro conocido
    // 4. Aplicar fórmula: profundidad = inicial + distancia_real
}
```

**Criterios de Aceptación**:
- [ ] Las profundidades varían correctamente entre planos
- [ ] Los cálculos reflejan la geometría real del cilindro
- [ ] La precisión es de ±0.1 cm
- [ ] Funciona con cualquier número de planos

---

### Issue #3: Drag and Drop de BOHs Interfiere con Selección
**Descripción**: El drag and drop de las BOHs interfiere con la selección de puntos para mediciones.

**Síntomas**:
- Al intentar seleccionar puntos, se mueven las BOHs
- Dificulta la selección precisa de puntos
- La sensibilidad no es óptima

**Causa Raíz**:
- Algoritmo de detección de click no es suficientemente preciso
- No considera la zona de selección de puntos
- La distancia de activación no es óptima

**Solución Propuesta**:
```javascript
// Implementar detección más precisa
function onMouseDownImproved(event) {
    // 1. Verificar si está en zona de selección de puntos
    // 2. Solo activar drag si click está muy cerca del centro de BOH
    // 3. Considerar el tamaño de la BOH en la detección
    // 4. Implementar zona muerta alrededor de BOHs
}
```

**Criterios de Aceptación**:
- [ ] Selección de puntos sin interferencia de BOHs
- [ ] Drag and drop de BOHs funciona perfectamente
- [ ] Sensibilidad óptima para ambos casos
- [ ] Experiencia de usuario fluida

---

## ⚠️ Issues de Media Prioridad

### Issue #4: Generación de Elipses Inconsistente
**Descripción**: Las elipses no se generan consistentemente para todos los tríos.

**Síntomas**:
- Algunos tríos generan elipse, otros no
- Calidad visual variable
- Puntos de elipse dispersos

**Solución Propuesta**:
- Implementar algoritmo robusto para todos los tríos
- Mejorar validación de puntos
- Añadir sistema de fallback

### Issue #5: Validación de Datos Insuficiente
**Descripción**: La validación de datos de entrada no es suficientemente robusta.

**Síntomas**:
- Acepta datos inválidos
- No previene errores de usuario
- Mensajes de error poco claros

**Solución Propuesta**:
- Implementar validación exhaustiva
- Mejorar mensajes de error
- Añadir prevención proactiva

---

## 🔧 Issues Técnicos

### Issue #6: Logs de Debug Insuficientes
**Descripción**: Los logs de debug no proporcionan suficiente información para diagnosticar problemas.

**Solución Propuesta**:
- Añadir logs detallados para cada función crítica
- Implementar sistema de logging estructurado
- Añadir métricas de rendimiento

### Issue #7: Manejo de Errores Mejorable
**Descripción**: El manejo de errores no es suficientemente robusto.

**Solución Propuesta**:
- Implementar try-catch en todas las funciones críticas
- Añadir recuperación automática de errores
- Mejorar mensajes de error para el usuario

---

## 📋 Plan de Implementación v32

### Fase 1: Correcciones Críticas (Semana 1)
- [ ] Issue #1: Primer trío genera elipse
- [ ] Issue #2: Cálculo de profundidades correcto
- [ ] Issue #3: Drag and drop optimizado

### Fase 2: Mejoras de Calidad (Semana 2)
- [ ] Issue #4: Generación de elipses consistente
- [ ] Issue #5: Validación de datos robusta
- [ ] Issue #6: Logs de debug mejorados

### Fase 3: Testing y Validación (Semana 3)
- [ ] Testing exhaustivo de todas las correcciones
- [ ] Validación en múltiples dispositivos
- [ ] Optimización de rendimiento

### Fase 4: Release (Semana 4)
- [ ] Documentación actualizada
- [ ] APK final generada
- [ ] Release notes preparadas

---

## 🎯 Criterios de Éxito v32

### Funcionalidades Core:
- [ ] Primer trío genera elipse: 100% de casos
- [ ] Cálculo de profundidades: Precisión ±0.1 cm
- [ ] Drag and drop: Sin interferencia
- [ ] Generación de elipses: 100% consistente

### Calidad:
- [ ] Testing: 100% de casos cubiertos
- [ ] Rendimiento: < 2s para cálculos
- [ ] Usabilidad: Experiencia fluida
- [ ] Estabilidad: Sin crashes

### Protecciones:
- [ ] Todas las protecciones v31 mantenidas
- [ ] Nuevas protecciones implementadas
- [ ] Cumplimiento legal actualizado

---

**Fecha de creación**: 2025-01-04
**Versión objetivo**: 32.0.0
**Estado**: Pendiente de implementación
**Prioridad**: Alta

**© 2025 GeoStVR Technologies. Todos los derechos reservados.**
