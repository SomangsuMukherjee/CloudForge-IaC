from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from datetime import datetime
import os

app = FastAPI(
    title="CloudForge API",
    description="A lightweight API deployed through Terraform-managed cloud infrastructure.",
    version="1.0.0"
)

@app.get("/", response_class=HTMLResponse)
def landing_page():
    return """
    <!DOCTYPE html>
    <html>
    <head>
        <title>CloudForge</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: #0f172a;
                color: #e5e7eb;
                margin: 0;
                padding: 0;
            }
            .container {
                max-width: 900px;
                margin: 80px auto;
                padding: 40px;
                background: #111827;
                border-radius: 16px;
                box-shadow: 0 10px 30px rgba(0,0,0,0.35);
            }
            h1 {
                font-size: 42px;
                margin-bottom: 10px;
                color: #38bdf8;
            }
            h2 {
                margin-top: 35px;
                color: #93c5fd;
            }
            p {
                line-height: 1.6;
                font-size: 17px;
            }
            .badge {
                display: inline-block;
                background: #1e293b;
                color: #bae6fd;
                padding: 8px 12px;
                border-radius: 999px;
                margin: 6px 6px 6px 0;
                font-size: 14px;
            }
            .buttons {
                margin-top: 30px;
            }
            a.button {
                display: inline-block;
                text-decoration: none;
                background: #0284c7;
                color: white;
                padding: 12px 18px;
                border-radius: 8px;
                margin-right: 10px;
                font-weight: bold;
            }
            a.button.secondary {
                background: #334155;
            }
            .architecture {
                background: #020617;
                padding: 20px;
                border-radius: 10px;
                font-family: monospace;
                white-space: pre-wrap;
                color: #d1d5db;
                margin-top: 15px;
            }
            footer {
                margin-top: 35px;
                color: #94a3b8;
                font-size: 14px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>CloudForge</h1>
            <p><strong>Infrastructure-as-Code Deployment Platform</strong></p>

            <p>
                CloudForge is a DevOps-focused project demonstrating how cloud infrastructure
                can be provisioned and managed using Terraform, GitHub-based deployment workflows,
                and a lightweight FastAPI service.
            </p>

            <div>
                <span class="badge">Terraform</span>
                <span class="badge">FastAPI</span>
                <span class="badge">Render</span>
                <span class="badge">Python</span>
                <span class="badge">Docker-ready</span>
                <span class="badge">CI/CD</span>
                <span class="badge">Infrastructure as Code</span>
            </div>

            <div class="buttons">
                <a class="button" href="/docs">View API Docs</a>
                <a class="button secondary" href="/health">Health Check</a>
                <a class="button secondary" href="/infra">Infrastructure Info</a>
            </div>

            <h2>Architecture</h2>
            <div class="architecture">GitHub Repository
        ↓
Terraform Configuration
        ↓
Render Cloud Service
        ↓
FastAPI Application
        ↓
Public HTTPS API</div>

            <h2>Project Goal</h2>
            <p>
                The goal of this project is to demonstrate reproducible cloud deployment using
                Infrastructure as Code principles, environment-based configuration, and automated
                cloud service provisioning.
            </p>

            <footer>
                Built by Somangsu Mukherjee | Junior DevOps / Cloud Engineer
            </footer>
        </div>
    </body>
    </html>
    """

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
        "project": "CloudForge",
        "provisioning": "Terraform",
        "deployment": "GitHub-integrated cloud deployment",
        "runtime": "FastAPI",
        "containerization": "Docker-ready",
        "cloud": "Render",
        "infrastructure_model": "Infrastructure as Code"
    }