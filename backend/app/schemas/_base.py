
from pydantic import BaseModel

class APIModel(BaseModel):
    model_config = {
        "from_attributes": True,
        "populate_by_name": True,
        "extra": "forbid"
    }

class ErrorInfo(APIModel):
    code: str
    message: str

class ErrorResponse(APIModel):
    error: ErrorInfo | None = None
