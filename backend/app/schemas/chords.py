
from typing import Dict, List
from ._base import APIModel

class ChordsSuggestRequest(APIModel):
    key: str = "C"
    bpm: int = 120
    style: str = "pop"
    length_bars: int = 16
    constraints: Dict[str, str] | None = None

class ChordsSuggestResponse(APIModel):
    progressions: List[List[str]]
    voicings: Dict[str, List[str]]
    midi_url: str
    notes: List[str] | None = None
