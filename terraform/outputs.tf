output "service_name" {
  description = "Provisioned Render service name"
  value       = render_web_service.cloudforge_api.name
}

output "service_id" {
  description = "Provisioned Render service ID"
  value       = render_web_service.cloudforge_api.id
}