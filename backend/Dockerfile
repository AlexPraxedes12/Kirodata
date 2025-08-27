
# Python slim image
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1     PYTHONUNBUFFERED=1     PIP_NO_CACHE_DIR=1

# Workdir
WORKDIR /app

# System deps
RUN apt-get update && apt-get install -y --no-install-recommends     build-essential  && rm -rf /var/lib/apt/lists/*

# Copy requirements first
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Copy app
COPY app /app/app

# Env defaults (override in platform)
ENV DEMO_MODE=true

# Expose port
EXPOSE 8080

# Start server
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
