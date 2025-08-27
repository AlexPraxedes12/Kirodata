
from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_health():
    r = client.get("/health")
    assert r.status_code == 200
    assert "ok" in r.json()

def test_lyrics_suggest():
    r = client.post("/lyrics/suggest", json={"input_lyrics":"Hola mundo", "style":"pop","language":"es"})
    assert r.status_code == 200
    j = r.json()
    assert "sections" in j and "chorus" in j["sections"]

def test_chords_suggest():
    r = client.post("/chords/suggest", json={"key":"C","bpm":120,"style":"pop","length_bars":16})
    assert r.status_code == 200
    assert "progressions" in r.json()

def test_melody_generate():
    r = client.post("/melody/generate", json={"mode":"from_chords","chords":["C","G","Am","F"],"bpm":120,"duration_bars":16,"variations":1})
    assert r.status_code == 200
    j = r.json()
    assert "audio" in j and len(j["audio"]) >= 1
