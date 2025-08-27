
from typing import List
from ._base import APIModel

class MelodyGenerateRequest(APIModel):
    mode: str = "from_chords"
    chords: List[str] | None = None
    bpm: int = 120
    duration_bars: int = 16
    variations: int = 1

class MelodyGenerateResponse(APIModel):
    audio: List[str]
    midi: str
    key: str
    notes_hint: str | None = None
