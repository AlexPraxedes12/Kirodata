
from pathlib import Path
BASE = Path(__file__).resolve().parents[1]
EXPORTS = BASE / "assets" / "exports"

def render_chord_sheet(progressions: list[list[str]]) -> str:
    EXPORTS.mkdir(parents=True, exist_ok=True)
    pdf_path = EXPORTS / "chords_sheet.pdf"
    pdf_path.write_bytes(b"%PDF-1.4\n% MuseNotes placeholder chord sheet\n")
    return "/assets/exports/chords_sheet.pdf"
