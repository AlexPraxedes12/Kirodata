
from fastapi import APIRouter, HTTPException
from ..schemas.lyrics import LyricsSuggestRequest, LyricsSuggestResponse, ErrorResponse
from ..services.config import Settings

router = APIRouter()
settings = Settings()

@router.post("/suggest", response_model=LyricsSuggestResponse, responses={400: {"model": ErrorResponse}})
def suggest_lyrics(body: LyricsSuggestRequest):
    text = body.input_lyrics.strip()
    if not text:
        raise HTTPException(status_code=400, detail={"code":"BAD_REQUEST","message":"input_lyrics vacío"})
    analysis = {"meter":"aprox-8","rhyme":"ABAB","sentiment":"nostalgico"}
    sections = {"verse1": text, "chorus": "Coro con imagen central reforzada", "bridge": "Puente con variación"}
    return {"analysis": analysis, "sections": sections, "rationales": ["mantuvimos la voz", "mejoramos rima/flujo"]}
