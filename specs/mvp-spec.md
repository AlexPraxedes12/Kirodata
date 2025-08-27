# MuseNotes — MVP Spec (para Kiro)
**Fecha:** 2025-08-27
**Propósito:** Definir, en formato accionable para Kiro, el MVP de una app móvil (Flutter) con backend (FastAPI) para ayudar a músicos a capturar ideas y recibir asistencia de IA en **letras**, **acordes** y **melodías**.

---

## 0) Resumen del Producto
MuseNotes permite:
- Capturar ideas (texto/voz).
- Pedir **crítica/sugerencia de letra** (Claude/GPT).
- Obtener **progresiones de acordes** + **voicings** y exportar **MIDI/PDF**.
- Generar **bocetos de melodía** (MusicGen) con WAV/MIDI.

**Caso de demo (obligatorio para hackathon):**
Mostrar cómo Kiro (spec-to-code + hooks) genera estructura, pantallas y endpoints; luego correr el flujo Letra → Acordes → Melodía.

---

## 1) Historias de Usuario (MVP)
- *Como* compositor, *quiero* pegar una estrofa y recibir mejoras manteniendo mi estilo, *para* iterar rápido.
- *Como* guitarrista, *quiero* 2–3 progresiones tocables y un PDF de acordes, *para* practicar al instante.
- *Como* productor, *quiero* un boceto de melodía (WAV/MIDI) basado en mi progresión, *para* evaluar ideas.

**Criterios de aceptación (por historia):**
- Letra: ver análisis (métrica/rima), propuesta por secciones, y **diff** respecto al original.
- Acordes: ver 2–3 progresiones, escuchar demo (MIDI render mínimo), exportar **PDF** y **MIDI**.
- Melodía: generar 1–2 tomas, mostrar clave/BPM; permitir transponer ±2 semitonos; exportar WAV/MIDI.

---

## 2) Alcance del MVP
### In
- 3 wizards: LyricsWizard, ChordsWizard, MelodyWizard.
- Exportaciones: PDF (hoja de acordes), MIDI (backing y lead), WAV (melodía).
- “Demo mode”: sin GPU, servir assets precalculados.
- Versionado mínimo: guardar “tomas” y “versiones” por idea.
- Telemetría básica (logs).

### Out (V2+)
- Tarareo→pitch tracking→MIDI guía.
- Editor multipista avanzado.
- Login/plan de pago.
- Colaboración multiusuario.

---

## 3) Flujos de UX (alto nivel)
1. **Letra**: Input → Análisis → Sugerencias por secciones → Diff → Guardar v2.
2. **Acordes**: Input (key, bpm, estilo) → Progresiones + voicings → Escuchar demo → Export PDF/MIDI.
3. **Melodía**: Input (chords, bpm, duración) → Generar 1–2 tomas (WAV/MIDI) → Transponer → Guardar/Exportar.

---

## 4) Pantallas (Flutter)
- `HomeTabs`: Tabs: *Ideas*, *IA Lab*, *Ajustes*; FAB “Nueva idea”.
- `LyricsWizard`: (1) Pegar texto (2) Resultado con análisis+secciones (3) Diff+Aceptar.
- `ChordsWizard`: (1) Config (key/bpm/estilo/long) (2) Resultado con progresiones/voicings (3) Export.
- `MelodyWizard`: (1) Config (chords/bpm/duración/variations) (2) Resultado (WAV/MIDI) (3) Export.
- `IdeaDetail`: mostrar últimas versiones/tomas asociadas a una idea.

**Accesibilidad:** tamaños de fuente ajustables y modo alto contraste.

---

## 5) Modelos de Datos (resumen)
- `Project`: id, title, genre, bpm?, key?, created_at
- `Idea`: id, project_id?, text?, audio_url?, tags[], mood?, key?, bpm?, created_at
- `LyricsVersion`: id, idea_id, body_md, metrics, parent_version_id?, created_at
- `ChordsTake`: id, idea_id, key, progression[], voicings, midi_url, created_at
- `MelodyTake`: id, idea_id, key, bpm, audio_urls[], midi_url, seed?, params, created_at

Persistencia local en app: Isar/Drift (MVP).

---

## 6) Backend (FastAPI) — Requisitos
Endpoints mínimos (ver contratos en `api-contracts.md`):
- `POST /lyrics/suggest`
- `POST /chords/suggest`
- `POST /melody/generate`
- `GET /jobs/<built-in function id>` (si se usa cola)
- Flags: `DEMO_MODE=true` sirve assets de `/assets` en vez de inferencia real.

Tests básicos de cada endpoint y de “demo mode”.

---

## 7) Telemetría y Logs
- Log request/respuesta (redact tokens).
- Medir latencia y tamaño de payload.
- En frontend, log de eventos principales (wizard completado, exportación).

---

## 8) Demo Plan (vídeo hackathon)
1) Mostrar `specs/mvp-spec.md` en Kiro → *Generate project* (scaffold).  
2) Mostrar prompts aplicados para crear `LyricsWizard`, endpoints y *hooks*.  
3) Correr app: pegar letra → sugerencia → progresiones + PDF/MIDI → melodía WAV/MIDI.  
4) Cierre: qué hará V2.

---

## 9) Heurísticas de Calidad
- Respuestas JSON validadas por esquemas.  
- Mínimo 1 test por endpoint + 1 flujo E2E simulado (demo mode).  
- Lints: `flutter analyze` y `ruff`/`flake8` en backend.

---

## 10) Pedidos a Kiro (Spec-to-Code)
- Scaffold Flutter (tabs, wizards) y FastAPI (endpoints + tests).  
- Crear servicios y modelos en frontend con clients tipados.  
- Añadir “demo mode” con assets precalculados y banderas de compilación/env.  
- Implementar *hooks* definidos en `hooks/hooks.md`.
