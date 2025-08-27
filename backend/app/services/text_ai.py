
class TextAIProvider:
    def suggest_lyrics(self, text: str, style: str, language: str):
        return {
            "analysis": {"meter":"aprox-8","rhyme":"ABAB","sentiment":"nostalgico"},
            "sections": {"verse1": text, "chorus":"Coro propuesto","bridge":"Puente"},
            "rationales": ["voz preservada", "mejor rima"]
        }
