output "secret_arn" {
  description = "The ARN of the created secret"
  value       = module.secrets_manager.secret_arn
}

output "secret_id" {
  description = "The name of the created secret"
  value       = module.secrets_manager.secret_id
}
