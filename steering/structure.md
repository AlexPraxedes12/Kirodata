# Steering — structure.md

## Estructura de carpetas propuesta
```
/ (repo raíz)
├─ frontend/
│  ├─ lib/
│  │  ├─ features/
│  │  │  ├─ lyrics/
│  │  │  ├─ chords/
│  │  │  └─ melody/
│  │  ├─ services/      # API clients, adapters
│  │  ├─ models/        # data classes para contratos
│  │  └─ widgets/
│  └─ test/
├─ backend/
│  ├─ app/
│  │  ├─ api/           # routers: lyrics.py, chords.py, melody.py
│  │  ├─ schemas/       # pydantic models
│  │  ├─ services/      # ai_text.py, musicgen.py, midi.py, pdf.py
│  │  ├─ core/          # config.py (flags), logging.py
│  │  └─ assets/        # demo WAV/MIDI/PDF (servidos si DEMO_MODE)
│  └─ tests/
├─ specs/
│  ├─ mvp-spec.md
│  └─ api-contracts.md
├─ steering/
│  ├─ tech.md
│  └─ structure.md
├─ hooks/
│  └─ hooks.md
├─ assets/              # compartido en repo (para demo/video)
├─ .env.example
├─ LICENSE
└─ README.md
```

## Nomenclatura
- Dart: `UpperCamelCase` para clases, `lower_snake_case.dart` para archivos.
- Python: paquetes en `lower_snake_case`, funciones puras en `services`.

## Patrón de consumo de API (Flutter)
- `ApiClient` (dio) + `Result<T,E>` para manejar errores.  
- Modelos generados desde contratos (manual o freezed).

## Estado (Flutter)
- Riverpod providers por feature (`lyricsProvider`, etc.).  
- Navegación declarativa con `go_router` (si aplica).

## Assets
- Colocar WAV/MIDI de muestra en `backend/app/assets/demo` y exponerlos vía endpoint estático cuando `DEMO_MODE=true`.
