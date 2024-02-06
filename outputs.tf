output "domain_name" {
  description = "The name of the domain"
  value       = aws_codeartifact_domain.this[0].domain
}

output "repository_names" {
  description = "The names of the repositories"
  value       = [for k, v in aws_codeartifact_repository.this : k]
}
