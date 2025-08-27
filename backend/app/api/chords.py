
from fastapi import APIRouter, HTTPException
from ..schemas.chords import ChordsSuggestRequest, ChordsSuggestResponse, ErrorResponse
from ..services.midi import ensure_demo_midi
from ..services.config import Settings

router = APIRouter()
settings = Settings()

@router.post("/suggest", response_model=ChordsSuggestResponse, responses={400: {"model": ErrorResponse}})
def suggest_chords(body: ChordsSuggestRequest):
    if body.length_bars not in (8, 16, 32):
        raise HTTPException(status_code=400, detail={"code":"BAD_REQUEST","message":"length_bars debe ser 8|16|32"})
    progressions = [["C","G","Am","F"], ["Am","F","C","G"]]
    voicings = {"guitar":["C/E","G/D","Am7","Fmaj7"], "piano":["C","G/B","Am7","Fmaj7"]}
    midi_rel = ensure_demo_midi()
    return {"progressions": progressions, "voicings": voicings, "midi_url": midi_rel, "notes": ["pop I-V-vi-IV"]}
