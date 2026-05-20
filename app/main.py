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
                max-width: 1000px;
                margin: 60px auto;
                padding: 40px;
                background: #111827;
                border-radius: 16px;
                box-shadow: 0 10px 30px rgba(0,0,0,0.35);
            }

            h1 {
                font-size: 48px;
                color: #38bdf8;
                margin-bottom: 10px;
            }

            h2 {
                color: #93c5fd;
                margin-top: 35px;
            }

            p {
                font-size: 17px;
                line-height: 1.6;
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
                padding: 14px 20px;
                border-radius: 10px;
                margin-right: 10px;
                font-weight: bold;
            }

            a.button.secondary {
                background: #334155;
            }

            .architecture {
                background: #020617;
                padding: 20px;
                border-radius: 12px;
                font-family: monospace;
                white-space: pre-wrap;
                color: #d1d5db;
                margin-top: 15px;
                font-size: 15px;
            }

            footer {
                margin-top: 40px;
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
                CloudForge is a DevOps-focused cloud deployment project demonstrating
                Infrastructure as Code, Terraform-based provisioning, CI/CD workflows,
                and production-style API deployment.
            </p>

            <div>
                <span class="badge">Terraform</span>
                <span class="badge">FastAPI</span>
                <span class="badge">Render Cloud</span>
                <span class="badge">Python</span>
                <span class="badge">CI/CD</span>
                <span class="badge">Infrastructure as Code</span>
                <span class="badge">Docker-ready</span>
            </div>

            <div class="buttons">
                <a class="button" href="/docs">View API Docs</a>
                <a class="button secondary" href="/health">Health Check</a>
                <a class="button secondary" href="/infra">Infrastructure Info</a>
            </div>

            <h2>Architecture</h2>

            <div class="architecture">
GitHub Repository
      ↓
Terraform Configuration
      ↓
Render Cloud Infrastructure
      ↓
FastAPI Application Deployment
      ↓
Public HTTPS API
            </div>

            <h2>Project Goal</h2>

            <p>
                This project demonstrates reproducible cloud infrastructure deployment
                using Terraform-managed provisioning, automated deployment workflows,
                and environment-based application configuration.
            </p>

            <footer>
                Built by Somangsu Mukherjee
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
        "environment": os.getenv("ENVIRONMENT", "production")
    }

@app.get("/infra")
def infrastructure_info():
    return {
        "project": "CloudForge",
        "provisioning": "Terraform",
        "deployment": "Render Cloud",
        "runtime": "FastAPI",
        "cloud": "Render",
        "deployment_model": "Infrastructure as Code"
    }