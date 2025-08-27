
from pathlib import Path
BASE = Path(__file__).resolve().parents[1]

def ensure_demo_midi() -> str:
    return "/assets/demo/backing.mid"
