output "secret_arn" {
  description = "The ARN of the created secret"
  value       = module.secrets_manager.this_secretsmanager_secret_arn
}

output "secret_name" {
  description = "The name of the created secret"
  value       = module.secrets_manager.this_secretsmanager_secret_name
}
