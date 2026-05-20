variable "render_api_key" {
  description = "Render API key used by Terraform to provision cloud resources"
  type        = string
  sensitive   = true
}

variable "service_name" {
  description = "Name of the Render web service"
  type        = string
  default     = "cloudforge-api"
}

variable "github_repo_url" {
  description = "GitHub repository URL containing the CloudForge application"
  type        = string
  default     = "https://github.com/SomangsuMukherjee/CloudForge-IaC"
}

variable "github_branch" {
  description = "Git branch used for deployment"
  type        = string
  default     = "main"
}

variable "environment" {
  description = "Application environment"
  type        = string
  default     = "production"
}