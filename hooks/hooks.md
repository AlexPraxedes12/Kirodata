# Agent Hooks — hooks.md

> Definición conceptual para Kiro. Usa estos hooks como guía para configurar en la UI de Kiro.

## Hook 1 — Exportar Hoja de Acordes (PDF) tras sugerencia
**Trigger:** Cambio en `backend/app/api/chords.py` o respuesta exitosa de `POST /chords/suggest`.  
**Acción:** Ejecutar tarea del agente que:
1) Lee el último JSON de respuesta (progresiones/voicings).  
2) Llama a `backend/app/services/pdf.py:render_chord_sheet()` para generar `assets/exports/chords_sheet.pdf`.  
3) Inserta/actualiza sección en `README.md` con instrucciones de exportación.

**Evidencia esperada (commit):**
- Archivo `assets/exports/chords_sheet.pdf` actualizado.  
- README con sección “Exporting chord sheets”.

---

## Hook 2 — Notificación y lista “Recent takes” tras melodía
**Trigger:** Respuesta exitosa de `POST /melody/generate`.  
**Acción:** Agente edita Flutter para:
1) Añadir `ScaffoldMessenger.of(context).showSnackBar(...)`.  
2) Insertar el nuevo take en una lista “Recent takes” (persistida localmente).

**Evidencia esperada (commit):**
- Cambios en `frontend/lib/features/melody/...` con la snackbar y lista.

---

## Hook 3 — Guardia de contratos
**Trigger:** Pull Request que modifica `api-contracts.md` o `backend/app/schemas/*`.  
**Acción:** Agente ejecuta verificación: regenerar modelos de frontend y correr tests.  
**Evidencia:** PR actualizado con fixes o comentario del agente con fallos.

---

## Hook 4 — Demo Mode Assurance
**Trigger:** Antes de crear release para demo.  
**Acción:** Agente verifica que `DEMO_MODE=true` está activo, que existen archivos en `/assets/demo` y que endpoints los sirven.  
**Evidencia:** Checklist/commit con correcciones.

---

## Variables y rutas clave
- `DEMO_MODE=true|false` (backend).  
- `backend/app/assets/demo/*` (WAV/MIDI).  
- `assets/exports/` (PDFs generados).
