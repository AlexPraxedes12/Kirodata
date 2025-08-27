# API Contracts — MuseNotes (FastAPI)

## Convenciones
- `Content-Type: application/json` (salvo archivos).
- Respuesta de error:
```json
{ "error": { "code": "BAD_REQUEST", "message": "detalle", "details": {} } }
```

## POST /lyrics/suggest
**Body**
```json
{
  "input_lyrics": "texto de la estrofa",
  "goal": "improve|analyze",
  "style": "pop|rock|balada|jazz",
  "language": "es|en"
}
```
**200 OK**
```json
{
  "analysis": { "meter": "8-8-8-8", "rhyme": "ABAB", "sentiment": "nostalgico" },
  "sections": { "verse1": "...", "chorus": "...", "bridge": "..." },
  "rationales": ["se reforzó el motivo central", "mejor rima interna"]
}
```

## POST /chords/suggest
**Body**
```json
{
  "key": "C",
  "bpm": 120,
  "style": "pop",
  "length_bars": 16,
  "constraints": { "capo": 2, "instrument": "guitar|piano" }
}
```
**200 OK**
```json
{
  "progressions": [
    ["C","G","Am","F"],
    ["Am","F","C","G"]
  ],
  "voicings": {
    "guitar": ["C/E","G/D","Am7","Fmaj7"],
    "piano": ["C","G/B","Am7","Fmaj7"]
  },
  "midi_url": "/assets/demo/backing.mid",
  "notes": ["pop I-V-vi-IV", "alternar cejilla 2"]
}
```

## POST /melody/generate
**Body**
```json
{
  "mode": "from_chords",
  "chords": ["C","G","Am","F"],
  "bpm": 120,
  "duration_bars": 16,
  "variations": 2
}
```
**200 OK**
```json
{
  "audio": ["/assets/demo/take1.wav","/assets/demo/take2.wav"],
  "midi": "/assets/demo/lead.mid",
  "key": "C",
  "notes_hint": "clímax emocional en compases 9-12"
}
```

## GET /jobs/{id}
**200 OK**
```json
{ "id": "abc123", "status": "queued|running|done|error", "progress": 72 }
```

## POST /audio/transcribe (opcional V2)
**Body:** audio multipart/form-data → texto, idioma, timestamps.

## POST /audio/pitch (opcional V2)
**Body:** audio multipart/form-data → MIDI guía (para condicionar melodía).
