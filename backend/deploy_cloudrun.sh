
#!/usr/bin/env bash
set -euo pipefail
# Replace variables
PROJECT_ID=${PROJECT_ID:-your-gcp-project}
REGION=${REGION:-us-central1}
IMAGE=gcr.io/${PROJECT_ID}/musenotes-backend:latest

# Build & push
gcloud builds submit --tag ${IMAGE}

# Deploy to Cloud Run
gcloud run deploy musenotes-backend   --image ${IMAGE}   --region ${REGION}   --platform managed   --allow-unauthenticated   --port 8080   --set-env-vars DEMO_MODE=true

# Get URL
gcloud run services describe musenotes-backend --region ${REGION} --format 'value(status.url)'
