
# MuseNotes Backend (FastAPI) — MVP

## Ejecutar en local
```bash
python -m venv .venv && source .venv/bin/activate  # (Windows: .venv\Scripts\activate)
pip install -r requirements.txt
export DEMO_MODE=true
uvicorn app.main:app --reload --port 8000
```

Servirá `/assets` (WAV/MIDI) y endpoints:
- `POST /lyrics/suggest`
- `POST /chords/suggest`
- `POST /melody/generate`
- `GET /jobs/{id}`
- `GET /health`

## Probar rápido
```bash
curl -X POST http://localhost:8000/lyrics/suggest -H "Content-Type: application/json" -d '{"input_lyrics":"Hola mundo"}'
curl -X POST http://localhost:8000/chords/suggest -H "Content-Type: application/json" -d '{"key":"C","bpm":120,"style":"pop","length_bars":16}'
curl -X POST http://localhost:8000/melody/generate -H "Content-Type: application/json" -d '{"mode":"from_chords","chords":["C","G","Am","F"],"bpm":120,"duration_bars":16,"variations":1}'
```

## Tests
```bash
pytest -q
```

## Deploy rápido
- Render/Fly/Cloud Run: montar `uvicorn app.main:app` y exponer `/assets` (ya servido como static).
- Variables: `DEMO_MODE=true` para usar los assets integrados.
