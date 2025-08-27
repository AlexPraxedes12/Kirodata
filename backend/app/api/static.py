
from fastapi import APIRouter
from fastapi.staticfiles import StaticFiles
from pathlib import Path

router = APIRouter()
BASE = Path(__file__).resolve().parents[1]
ASSETS = BASE / "assets"

router.mount("/assets", StaticFiles(directory=str(ASSETS)), name="assets")
