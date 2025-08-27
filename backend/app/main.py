
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from .api import lyrics, chords, melody, jobs, static
from .services.config import Settings

settings = Settings()

app = FastAPI(
    title="MuseNotes Backend (FastAPI)",
    version="0.1.0",
    description="MVP backend con demo mode para Code with Kiro"
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(static.router, prefix="")
app.include_router(lyrics.router, prefix="/lyrics", tags=["lyrics"])
app.include_router(chords.router, prefix="/chords", tags=["chords"])
app.include_router(melody.router, prefix="/melody", tags=["melody"])
app.include_router(jobs.router, prefix="/jobs", tags=["jobs"])

@app.get("/health")
def health():
    return {"ok": True, "demo_mode": settings.DEMO_MODE}
