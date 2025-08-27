
from pydantic import Field
from typing import Dict, List
from ._base import APIModel

class LyricsSuggestRequest(APIModel):
    input_lyrics: str = Field(..., min_length=1)
    goal: str = "improve"
    style: str = "pop"
    language: str = "es"

class LyricsSuggestResponse(APIModel):
    analysis: Dict[str, str]
    sections: Dict[str, str]
    rationales: List[str]
