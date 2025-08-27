
from fastapi import APIRouter, HTTPException
from ..schemas.melody import MelodyGenerateRequest, MelodyGenerateResponse, ErrorResponse
from ..services.musicgen import generate_melody_demo
from ..services.config import Settings

router = APIRouter()
settings = Settings()

@router.post("/generate", response_model=MelodyGenerateResponse, responses={400: {"model": ErrorResponse}})
def generate_melody(body: MelodyGenerateRequest):
    if not body.chords and body.mode == "from_chords":
        raise HTTPException(status_code=400, detail={"code":"BAD_REQUEST","message":"Se requieren 'chords' en from_chords"})
    audio_list, midi_rel, key = generate_melody_demo()
    return {"audio": audio_list, "midi": midi_rel, "key": key, "notes_hint": "clímax emocional 9-12"}
