terraform {
  required_providers {
    render = {
      source  = "render-oss/render"
      version = "~> 1.0"
    }
  }
}

provider "render" {
  api_key  = var.render_api_key
  owner_id = var.render_owner_id
}

resource "render_web_service" "cloudforge_api" {
  name           = var.service_name
  plan           = "free"
  region         = "frankfurt"
  root_directory = "app"

  runtime_source = {
    native_runtime = {
      repo_url      = var.github_repo_url
      branch        = var.github_branch
      runtime       = "python"
      build_command = "pip install -r requirements.txt"
    }
  }

  start_command     = "uvicorn main:app --host 0.0.0.0 --port $PORT"
  health_check_path = "/health"

  env_vars = {
    ENVIRONMENT = {
      value = var.environment
    }
  }
}

output "service_url" {
  value = render_web_service.cloudforge_api.url
}