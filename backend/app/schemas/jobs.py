
from ._base import APIModel

class JobStatusResponse(APIModel):
    id: str
    status: str
    progress: int
