
from fastapi import APIRouter
from ..schemas.jobs import JobStatusResponse

router = APIRouter()

@router.get("/{job_id}", response_model=JobStatusResponse)
def get_job(job_id: str):
    return {"id": job_id, "status": "done", "progress": 100}
