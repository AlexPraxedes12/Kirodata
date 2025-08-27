
import os
from pydantic import BaseModel

class Settings(BaseModel):
    DEMO_MODE: bool = os.getenv("DEMO_MODE", "true").lower() in ("1","true","yes")
    USE_OPENAI: bool = os.getenv("USE_OPENAI", "false").lower() in ("1","true","yes")
    USE_CLAUDE: bool = os.getenv("USE_CLAUDE", "false").lower() in ("1","true","yes")
