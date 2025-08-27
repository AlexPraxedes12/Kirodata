
from pathlib import Path
BASE = Path(__file__).resolve().parents[1]

def generate_melody_demo():
    audio_list = ["/assets/demo/take1.wav", "/assets/demo/take2.wav"]
    midi_rel = "/assets/demo/backing.mid"
    key = "C"
    return audio_list, midi_rel, key
