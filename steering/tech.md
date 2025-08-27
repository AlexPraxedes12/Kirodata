# Steering — tech.md

## Stack
- **Frontend:** Flutter (Dart), Riverpod para estado, just_audio, file_picker, dio para HTTP.
- **Backend:** FastAPI (Python 3.11+), uvicorn, pydantic v2, pytest, httpx para tests.
- **IA Texto:** Claude o OpenAI GPT (elegir una y aislar detrás de interfaz `TextAIProvider`).
- **Audio/MIDI:** `mido`/`pretty_midi` para generar MIDI; `reportlab` o `lilypond` para PDF simple de acordes.
- **Demo Mode:** variable de entorno `DEMO_MODE=true` para servir archivos de `/assets/demo`.

## Principios
- **Contracts first:** validar JSON con pydantic y en Flutter (models).  
- **Pure functions:** separar UI de lógica (services).  
- **Observabilidad:** logs estructurados; errores con códigos y mensajes claros.  
- **Feature flags:** `DEMO_MODE`, `USE_OPENAI`, `USE_CLAUDE`.

## Pruebas
- Backend: pytest (unidad para cada endpoint + demo mode).  
- Frontend: golden test básico por wizard y prueba de servicios con mocks.

## Calidad
- Lints: `ruff` (py), `flutter analyze`.  
- CI simple: formato + tests.

## Seguridad
- No exponer API keys en cliente.  
- `.env` en backend; proveer `.env.example`.
