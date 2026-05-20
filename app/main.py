from fastapi import FastAPI
from datetime import datetime
import os

app = FastAPI(
    title="CloudForge API",
    description="A lightweight API deployed through Terraform-managed cloud infrastructure.",
    version="1.0.0"
)

@app.get("/")
def root():
    return {
        "project": "CloudForge",
        "status": "running",
        "message": "Infrastructure deployed successfully using Terraform and CI/CD."
    }

@app.get("/health")
def health_check():
    return {
        "status": "healthy",
        "timestamp": datetime.utcnow().isoformat(),
        "environment": os.getenv("ENVIRONMENT", "development")
    }

@app.get("/infra")
def infrastructure_info():
    return {
        "provisioning": "Terraform",
        "deployment": "GitHub Actions",
        "runtime": "FastAPI",
        "containerization": "Docker-ready",
        "cloud": "Render"
    }