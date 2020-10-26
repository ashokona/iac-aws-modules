output "registry_id" {
  value       = aws_ecr_repository.foo.registry_id
  description = "Registry ID"
}

output "repository_url" {
  value       = aws_ecr_repository.foo.repository_url
  description = "URL of repository created"
}

output "repository_arn" {
  value       = aws_ecr_repository.foo.arn
  description = "ARN of repository created"
}
